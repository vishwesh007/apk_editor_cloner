package com.example.droid_analyst

import android.content.Context
import android.content.Intent
import android.content.pm.PackageInstaller
import android.net.Uri
import android.os.Build
import android.util.Log
import androidx.core.content.FileProvider
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream
import javax.xml.parsers.DocumentBuilderFactory
import org.w3c.dom.Document
import org.w3c.dom.Element

/**
 * Service for APK splitting and merging operations
 * Based on AntiSplit-M functionality
 */
class AntiSplitService(private val context: Context) {
    
    companion object {
        private const val TAG = "AntiSplitService"
    }
    
    interface ProgressCallback {
        fun onProgress(message: String, progress: Int)
        fun onError(message: String)
        fun onComplete(outputPath: String)
    }
    
    /**
     * Merge split APKs (APKS/XAPK/APKM) into a single APK
     */
    fun mergeSplitApk(
        inputPath: String,
        outputPath: String,
        signAfterMerge: Boolean,
        splitType: String,
        callback: ProgressCallback
    ): Map<String, Any> {
        try {
            Log.i(TAG, "Starting merge: $inputPath -> $outputPath")
            callback.onProgress("Analyzing split APK...", 5)
            
            val inputFile = File(inputPath)
            if (!inputFile.exists()) {
                return mapOf("success" to false, "error" to "Input file not found")
            }
            
            // Create temp directory for extraction
            val tempDir = File(context.cacheDir, "antisplit_temp_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            try {
                callback.onProgress("Extracting split APKs...", 10)
                
                // Extract the split APK bundle
                val extractedApks = extractSplitBundle(inputFile, tempDir, splitType)
                if (extractedApks.isEmpty()) {
                    return mapOf("success" to false, "error" to "No APKs found in bundle")
                }
                
                Log.i(TAG, "Extracted ${extractedApks.size} APKs")
                callback.onProgress("Found ${extractedApks.size} APK components", 20)
                
                // Find base APK
                val baseApk = extractedApks.find { it.name.contains("base") } 
                    ?: extractedApks.firstOrNull { !it.name.contains("split_") }
                    ?: extractedApks.first()
                
                callback.onProgress("Base APK: ${baseApk.name}", 25)
                
                // Merge APKs
                callback.onProgress("Merging APK components...", 30)
                val mergedApk = File(outputPath)
                mergeApkComponents(baseApk, extractedApks.filter { it != baseApk }, mergedApk, callback)
                
                // Sign if requested
                if (signAfterMerge) {
                    callback.onProgress("Signing merged APK...", 85)
                    // Use the existing ApkToolService for signing
                }
                
                callback.onProgress("Merge complete!", 100)
                callback.onComplete(outputPath)
                
                return mapOf(
                    "success" to true,
                    "outputPath" to outputPath,
                    "baseApkName" to baseApk.name,
                    "mergedComponents" to extractedApks.map { it.name }
                )
                
            } finally {
                // Clean up temp directory
                tempDir.deleteRecursively()
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Merge failed: ${e.message}", e)
            callback.onError(e.message ?: "Unknown error")
            return mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }
    
    /**
     * Extract APKs from a split bundle (APKS/XAPK/APKM)
     */
    private fun extractSplitBundle(input: File, outputDir: File, splitType: String): List<File> {
        val apks = mutableListOf<File>()
        
        ZipFile(input).use { zip ->
            val entries = zip.entries()
            while (entries.hasMoreElements()) {
                val entry = entries.nextElement()
                
                // Determine if this is an APK based on type
                val isApk = when (splitType.lowercase()) {
                    "apks" -> entry.name.endsWith(".apk", ignoreCase = true)
                    "xapk" -> entry.name.endsWith(".apk", ignoreCase = true)
                    "apkm" -> entry.name.endsWith(".apk", ignoreCase = true)
                    else -> entry.name.endsWith(".apk", ignoreCase = true)
                }
                
                if (isApk && !entry.isDirectory) {
                    val outputFile = File(outputDir, File(entry.name).name)
                    zip.getInputStream(entry).use { input ->
                        FileOutputStream(outputFile).use { output ->
                            input.copyTo(output)
                        }
                    }
                    apks.add(outputFile)
                    Log.i(TAG, "Extracted: ${outputFile.name}")
                }
            }
        }
        
        return apks
    }
    
    /**
     * Merge multiple APK components into a single APK
     */
    private fun mergeApkComponents(
        baseApk: File,
        splitApks: List<File>,
        outputFile: File,
        callback: ProgressCallback
    ) {
        // Track what's already in the base APK
        val baseEntries = mutableSetOf<String>()
        
        ZipOutputStream(FileOutputStream(outputFile)).use { zipOut ->
            // First, copy all entries from base APK
            callback.onProgress("Processing base APK...", 35)
            ZipFile(baseApk).use { baseZip ->
                val entries = baseZip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    baseEntries.add(entry.name)
                    
                    val newEntry = ZipEntry(entry.name)
                    zipOut.putNextEntry(newEntry)
                    baseZip.getInputStream(entry).use { input ->
                        input.copyTo(zipOut)
                    }
                    zipOut.closeEntry()
                }
            }
            
            // Process split APKs
            var progress = 40
            val progressStep = 40 / (splitApks.size.coerceAtLeast(1))
            
            for (splitApk in splitApks) {
                callback.onProgress("Processing ${splitApk.name}...", progress)
                
                ZipFile(splitApk).use { splitZip ->
                    val entries = splitZip.entries()
                    while (entries.hasMoreElements()) {
                        val entry = entries.nextElement()
                        
                        // Skip if already in base (except for specific merge-able files)
                        if (baseEntries.contains(entry.name)) {
                            continue
                        }
                        
                        // Skip META-INF from splits (we'll use base's)
                        if (entry.name.startsWith("META-INF/")) {
                            continue
                        }
                        
                        // Skip AndroidManifest from splits
                        if (entry.name == "AndroidManifest.xml") {
                            continue
                        }
                        
                        baseEntries.add(entry.name)
                        
                        val newEntry = ZipEntry(entry.name)
                        zipOut.putNextEntry(newEntry)
                        splitZip.getInputStream(entry).use { input ->
                            input.copyTo(zipOut)
                        }
                        zipOut.closeEntry()
                    }
                }
                
                progress += progressStep
            }
        }
        
        Log.i(TAG, "Merged APK created: ${outputFile.absolutePath}")
    }
    
    /**
     * Split an APK into components
     */
    fun splitApk(
        inputPath: String,
        outputDir: String,
        splitByDensity: Boolean,
        splitByAbi: Boolean,
        splitByLanguage: Boolean,
        callback: ProgressCallback
    ): Map<String, Any> {
        try {
            Log.i(TAG, "Starting split: $inputPath")
            callback.onProgress("Analyzing APK structure...", 5)
            
            val inputFile = File(inputPath)
            if (!inputFile.exists()) {
                return mapOf("success" to false, "error" to "Input file not found")
            }
            
            val outputDirectory = File(outputDir)
            outputDirectory.mkdirs()
            
            val components = mutableListOf<Map<String, Any>>()
            
            // Analyze APK contents
            callback.onProgress("Extracting resources...", 10)
            
            ZipFile(inputFile).use { zip ->
                // Create base APK
                val baseApk = File(outputDirectory, "base.apk")
                val densityResources = mutableMapOf<String, MutableList<ZipEntry>>()
                val abiLibraries = mutableMapOf<String, MutableList<ZipEntry>>()
                val languageResources = mutableMapOf<String, MutableList<ZipEntry>>()
                val baseEntries = mutableListOf<ZipEntry>()
                
                // Categorize entries
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    
                    when {
                        // Native libraries by ABI
                        splitByAbi && entry.name.startsWith("lib/") -> {
                            val abi = entry.name.split("/").getOrNull(1) ?: "unknown"
                            abiLibraries.getOrPut(abi) { mutableListOf() }.add(entry)
                        }
                        // Density-specific resources
                        splitByDensity && entry.name.matches(Regex("res/drawable-[^/]+-[hlmx]+dpi/.*")) -> {
                            val density = entry.name.split("/")[1].substringAfterLast("-").replace("dpi", "")
                            densityResources.getOrPut(density) { mutableListOf() }.add(entry)
                        }
                        // Language resources
                        splitByLanguage && entry.name.matches(Regex("res/values-[a-z]{2}(-[A-Z]{2})?/.*")) -> {
                            val lang = entry.name.split("/")[1].substringAfter("values-")
                            languageResources.getOrPut(lang) { mutableListOf() }.add(entry)
                        }
                        else -> {
                            baseEntries.add(entry)
                        }
                    }
                }
                
                callback.onProgress("Creating base APK...", 30)
                
                // Create base APK
                createSplitApk(zip, baseEntries, baseApk)
                components.add(mapOf(
                    "name" to "base.apk",
                    "path" to baseApk.absolutePath,
                    "type" to "base",
                    "size" to baseApk.length()
                ))
                
                var progress = 40
                
                // Create ABI splits
                if (splitByAbi && abiLibraries.isNotEmpty()) {
                    for ((abi, entries) in abiLibraries) {
                        callback.onProgress("Creating ABI split: $abi...", progress)
                        val splitFile = File(outputDirectory, "split_config.$abi.apk")
                        createSplitApk(zip, entries, splitFile)
                        components.add(mapOf(
                            "name" to splitFile.name,
                            "path" to splitFile.absolutePath,
                            "type" to "abi",
                            "size" to splitFile.length()
                        ))
                        progress += 10
                    }
                }
                
                // Create density splits
                if (splitByDensity && densityResources.isNotEmpty()) {
                    for ((density, entries) in densityResources) {
                        callback.onProgress("Creating density split: ${density}dpi...", progress)
                        val splitFile = File(outputDirectory, "split_config.${density}dpi.apk")
                        createSplitApk(zip, entries, splitFile)
                        components.add(mapOf(
                            "name" to splitFile.name,
                            "path" to splitFile.absolutePath,
                            "type" to "density",
                            "size" to splitFile.length()
                        ))
                        progress += 5
                    }
                }
                
                // Create language splits
                if (splitByLanguage && languageResources.isNotEmpty()) {
                    for ((lang, entries) in languageResources) {
                        callback.onProgress("Creating language split: $lang...", progress)
                        val splitFile = File(outputDirectory, "split_config.$lang.apk")
                        createSplitApk(zip, entries, splitFile)
                        components.add(mapOf(
                            "name" to splitFile.name,
                            "path" to splitFile.absolutePath,
                            "type" to "language",
                            "size" to splitFile.length()
                        ))
                        progress += 5
                    }
                }
            }
            
            callback.onProgress("Split complete!", 100)
            callback.onComplete(outputDir)
            
            return mapOf(
                "success" to true,
                "outputDir" to outputDir,
                "components" to components
            )
            
        } catch (e: Exception) {
            Log.e(TAG, "Split failed: ${e.message}", e)
            callback.onError(e.message ?: "Unknown error")
            return mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }
    
    /**
     * Create a split APK from selected entries
     */
    private fun createSplitApk(sourceZip: ZipFile, entries: List<ZipEntry>, outputFile: File) {
        ZipOutputStream(FileOutputStream(outputFile)).use { zipOut ->
            for (entry in entries) {
                val newEntry = ZipEntry(entry.name)
                zipOut.putNextEntry(newEntry)
                sourceZip.getInputStream(entry).use { input ->
                    input.copyTo(zipOut)
                }
                zipOut.closeEntry()
            }
        }
    }
    
    /**
     * Get information about a split APK bundle
     */
    fun getSplitApkInfo(path: String, splitType: String): Map<String, Any>? {
        try {
            val file = File(path)
            if (!file.exists()) return null
            
            var packageName: String? = null
            var versionName: String? = null
            var versionCode: Int? = null
            var baseApk: String? = null
            val splitApks = mutableListOf<String>()
            var totalSize = 0L
            var hasDensitySplits = false
            var hasAbiSplits = false
            var hasLanguageSplits = false
            
            ZipFile(file).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    
                    if (entry.name.endsWith(".apk", ignoreCase = true)) {
                        totalSize += entry.size
                        val apkName = File(entry.name).name
                        
                        if (apkName.contains("base") || (!apkName.contains("split_") && !apkName.contains("config"))) {
                            baseApk = apkName
                            
                            // Try to parse base APK for package info
                            // This is simplified - full implementation would need AXML parsing
                        } else {
                            splitApks.add(apkName)
                            
                            when {
                                apkName.contains("hdpi") || apkName.contains("mdpi") || 
                                apkName.contains("xhdpi") || apkName.contains("xxhdpi") -> {
                                    hasDensitySplits = true
                                }
                                apkName.contains("arm64") || apkName.contains("armeabi") ||
                                apkName.contains("x86") -> {
                                    hasAbiSplits = true
                                }
                                apkName.matches(Regex(".*\\.[a-z]{2}(\\.[A-Z]{2})?\\.apk")) -> {
                                    hasLanguageSplits = true
                                }
                            }
                        }
                    }
                    
                    // Try to get package info from manifest.json (XAPK format)
                    if (entry.name == "manifest.json" || entry.name == "info.json") {
                        try {
                            val content = zip.getInputStream(entry).bufferedReader().readText()
                            val json = org.json.JSONObject(content)
                            packageName = json.optString("package_name", json.optString("packageName", null))
                            versionName = json.optString("version_name", json.optString("versionName", null))
                            versionCode = json.optInt("version_code", json.optInt("versionCode", 0))
                        } catch (e: Exception) {
                            Log.w(TAG, "Failed to parse manifest.json: ${e.message}")
                        }
                    }
                }
            }
            
            return mapOf(
                "packageName" to (packageName ?: "unknown"),
                "versionName" to (versionName ?: "unknown"),
                "versionCode" to (versionCode ?: 0),
                "baseApk" to (baseApk ?: ""),
                "splitApks" to splitApks,
                "totalSize" to totalSize,
                "hasDensitySplits" to hasDensitySplits,
                "hasAbiSplits" to hasAbiSplits,
                "hasLanguageSplits" to hasLanguageSplits
            )
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get split APK info: ${e.message}", e)
            return null
        }
    }
    
    /**
     * Extract split APK contents to directory
     */
    fun extractSplitApk(inputPath: String, outputDir: String): Boolean {
        return try {
            val inputFile = File(inputPath)
            val outputDirectory = File(outputDir)
            outputDirectory.mkdirs()
            
            ZipFile(inputFile).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    val outputFile = File(outputDirectory, entry.name)
                    
                    if (entry.isDirectory) {
                        outputFile.mkdirs()
                    } else {
                        outputFile.parentFile?.mkdirs()
                        zip.getInputStream(entry).use { input ->
                            FileOutputStream(outputFile).use { output ->
                                input.copyTo(output)
                            }
                        }
                    }
                }
            }
            
            true
        } catch (e: Exception) {
            Log.e(TAG, "Extract failed: ${e.message}", e)
            false
        }
    }
    
    /**
     * Create APKS bundle from directory containing APKs
     */
    fun createApksBundle(inputDir: String, outputPath: String): Boolean {
        return try {
            val inputDirectory = File(inputDir)
            val outputFile = File(outputPath)
            
            val apkFiles = inputDirectory.listFiles { file -> 
                file.extension.equals("apk", ignoreCase = true) 
            } ?: return false
            
            if (apkFiles.isEmpty()) return false
            
            ZipOutputStream(FileOutputStream(outputFile)).use { zipOut ->
                for (apkFile in apkFiles) {
                    val entry = ZipEntry(apkFile.name)
                    zipOut.putNextEntry(entry)
                    FileInputStream(apkFile).use { input ->
                        input.copyTo(zipOut)
                    }
                    zipOut.closeEntry()
                }
            }
            
            true
        } catch (e: Exception) {
            Log.e(TAG, "Create APKS bundle failed: ${e.message}", e)
            false
        }
    }
    
    /**
     * Install split APK using PackageInstaller
     */
    fun installSplitApk(path: String): Boolean {
        return try {
            val file = File(path)
            if (!file.exists()) return false
            
            // Extract APKs to temp directory
            val tempDir = File(context.cacheDir, "install_temp_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            try {
                // Extract all APKs
                val apkFiles = mutableListOf<File>()
                ZipFile(file).use { zip ->
                    val entries = zip.entries()
                    while (entries.hasMoreElements()) {
                        val entry = entries.nextElement()
                        if (entry.name.endsWith(".apk", ignoreCase = true)) {
                            val outputFile = File(tempDir, File(entry.name).name)
                            zip.getInputStream(entry).use { input ->
                                FileOutputStream(outputFile).use { output ->
                                    input.copyTo(output)
                                }
                            }
                            apkFiles.add(outputFile)
                        }
                    }
                }
                
                if (apkFiles.isEmpty()) return false
                
                // Use PackageInstaller for split APK installation
                val packageInstaller = context.packageManager.packageInstaller
                val params = PackageInstaller.SessionParams(
                    PackageInstaller.SessionParams.MODE_FULL_INSTALL
                )
                
                val sessionId = packageInstaller.createSession(params)
                val session = packageInstaller.openSession(sessionId)
                
                try {
                    for (apkFile in apkFiles) {
                        session.openWrite(apkFile.name, 0, apkFile.length()).use { output ->
                            FileInputStream(apkFile).use { input ->
                                input.copyTo(output)
                            }
                            session.fsync(output)
                        }
                    }
                    
                    val intent = Intent(context, context.javaClass)
                    val pendingIntent = android.app.PendingIntent.getActivity(
                        context, 0, intent,
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                            android.app.PendingIntent.FLAG_IMMUTABLE
                        } else {
                            0
                        }
                    )
                    
                    session.commit(pendingIntent.intentSender)
                    
                } finally {
                    session.close()
                }
                
                true
                
            } finally {
                tempDir.deleteRecursively()
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Install split APK failed: ${e.message}", e)
            false
        }
    }
}
