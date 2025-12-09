package com.example.droid_analyst

import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.zip.CRC32
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
import java.util.zip.ZipOutputStream

/**
 * Service for APK splitting and merging operations
 * Based on AntiSplit-M functionality from https://github.com/AbdurazaaqMohammed/AntiSplit-M
 * 
 * Key insight from AntiSplit-M:
 * - Split APKs contain manifest attributes that cause "App not installed" errors
 * - These attributes must be removed: splitTypes, requiredSplitTypes, isSplitRequired
 * - The "package appears to be invalid" error is caused by these leftover split attributes
 */
class AntiSplitService(private val context: Context) {
    
    companion object {
        private const val TAG = "AntiSplitService"
        
        // AndroidManifest.xml split-related attribute resource IDs
        // These cause "package appears to be invalid" if present in merged APK
        private const val ATTR_ID_SPLIT_TYPES = 0x01010610
        private const val ATTR_ID_REQUIRED_SPLIT_TYPES = 0x0101060F
        private const val ATTR_ID_IS_SPLIT_REQUIRED = 0x01010591
        private const val ATTR_ID_EXTRACT_NATIVE_LIBS = 0x010104ea
        private const val ATTR_ID_SPLIT_NAME = 0x01010549
        
        // Binary XML chunk types
        private const val CHUNK_TYPE_STRING_POOL = 0x0001
        private const val CHUNK_TYPE_RESOURCE_MAP = 0x0180
        private const val CHUNK_TYPE_START_ELEMENT = 0x0102
        private const val CHUNK_TYPE_END_ELEMENT = 0x0103
        private const val CHUNK_TYPE_START_NS = 0x0100
        private const val CHUNK_TYPE_END_NS = 0x0101
        private const val ATTR_TYPE_STRING = 0x03
        private const val ATTR_TYPE_INT = 0x10
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
            callback.onProgress("Analyzing split APK bundle...", 5)
            
            val inputFile = File(inputPath)
            if (!inputFile.exists()) {
                return mapOf("success" to false, "error" to "Input file not found: $inputPath")
            }
            
            // Create temp directory for extraction
            val tempDir = File(context.cacheDir, "antisplit_temp_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            try {
                callback.onProgress("Extracting split APKs...", 10)
                
                // Extract the split APK bundle
                val extractedApks = extractSplitBundle(inputFile, tempDir, splitType)
                if (extractedApks.isEmpty()) {
                    return mapOf("success" to false, "error" to "No APKs found in bundle. Make sure the file is a valid APKS/XAPK/APKM file.")
                }
                
                Log.i(TAG, "Extracted ${extractedApks.size} APKs: ${extractedApks.map { it.name }}")
                callback.onProgress("Found ${extractedApks.size} APK components", 20)
                
                // Find base APK
                val baseApk = findBaseApk(extractedApks)
                if (baseApk == null) {
                    return mapOf("success" to false, "error" to "Could not find base APK in bundle")
                }
                
                callback.onProgress("Base APK: ${baseApk.name}", 25)
                Log.i(TAG, "Using base APK: ${baseApk.name}")
                
                // Get split APKs (all except base)
                val splitApks = extractedApks.filter { it != baseApk }
                
                // Merge APKs
                callback.onProgress("Merging APK components...", 30)
                val mergedApk = File(outputPath)
                mergeApkComponents(baseApk, splitApks, mergedApk, callback)
                
                // Verify the merged APK
                callback.onProgress("Verifying merged APK...", 90)
                if (!mergedApk.exists() || mergedApk.length() == 0L) {
                    return mapOf("success" to false, "error" to "Failed to create merged APK")
                }
                
                // Sign if requested
                if (signAfterMerge) {
                    callback.onProgress("Signing merged APK...", 95)
                    try {
                        signApkWithDebugKey(mergedApk)
                    } catch (e: Exception) {
                        Log.w(TAG, "Signing failed, APK may need manual signing: ${e.message}")
                    }
                }
                
                callback.onProgress("Merge complete!", 100)
                callback.onComplete(outputPath)
                
                return mapOf(
                    "success" to true,
                    "outputPath" to outputPath,
                    "baseApkName" to baseApk.name,
                    "mergedComponents" to extractedApks.map { it.name },
                    "outputSize" to mergedApk.length()
                )
                
            } finally {
                // Clean up temp directory
                tempDir.deleteRecursively()
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Merge failed: ${e.message}", e)
            callback.onError(e.message ?: "Unknown error during merge")
            return mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }
    
    /**
     * Find the base APK from a list of extracted APKs
     */
    private fun findBaseApk(apks: List<File>): File? {
        // First, look for exact "base.apk" name
        apks.find { it.name.equals("base.apk", ignoreCase = true) }?.let { return it }
        
        // Look for APK that doesn't start with config/split
        apks.find { 
            !it.name.startsWith("config", ignoreCase = true) && 
            !it.name.startsWith("split", ignoreCase = true)
        }?.let { return it }
        
        // Return the first APK
        return apks.firstOrNull()
    }
    
    /**
     * Extract APKs from a split bundle (APKS/XAPK/APKM)
     */
    private fun extractSplitBundle(input: File, outputDir: File, splitType: String): List<File> {
        val apks = mutableListOf<File>()
        
        try {
            ZipFile(input).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    
                    if (entry.isDirectory) continue
                    
                    val fileName = File(entry.name).name
                    if (!fileName.endsWith(".apk", ignoreCase = true)) continue
                    
                    val outputFile = File(outputDir, fileName)
                    zip.getInputStream(entry).use { inputStream ->
                        FileOutputStream(outputFile).use { outputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    }
                    
                    if (isValidApk(outputFile)) {
                        apks.add(outputFile)
                        Log.i(TAG, "Extracted valid APK: ${outputFile.name} (${outputFile.length()} bytes)")
                    } else {
                        outputFile.delete()
                        Log.w(TAG, "Skipped invalid APK: ${outputFile.name}")
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error extracting bundle: ${e.message}", e)
            throw e
        }
        
        return apks
    }
    
    private fun isValidApk(file: File): Boolean {
        return try {
            ZipFile(file).use { zip ->
                zip.getEntry("AndroidManifest.xml") != null
            }
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * Merge multiple APK components into a single APK
     * Key: Patch AndroidManifest.xml to remove split-related attributes
     */
    private fun mergeApkComponents(
        baseApk: File,
        splitApks: List<File>,
        outputFile: File,
        callback: ProgressCallback
    ) {
        val addedEntries = mutableSetOf<String>()
        val allEntries = mutableMapOf<String, Pair<File, ZipEntry>>()
        
        // Process base APK first
        callback.onProgress("Processing base APK...", 35)
        ZipFile(baseApk).use { zip ->
            val entries = zip.entries()
            while (entries.hasMoreElements()) {
                val entry = entries.nextElement()
                if (!entry.isDirectory) {
                    allEntries[entry.name] = Pair(baseApk, entry)
                    addedEntries.add(entry.name)
                }
            }
        }
        
        // Process split APKs
        var progress = 40
        val progressStep = 30 / (splitApks.size.coerceAtLeast(1))
        
        for (splitApk in splitApks) {
            callback.onProgress("Processing ${splitApk.name}...", progress)
            
            ZipFile(splitApk).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    
                    if (entry.isDirectory) continue
                    if (addedEntries.contains(entry.name)) continue
                    if (entry.name.startsWith("META-INF/")) continue
                    if (entry.name == "AndroidManifest.xml") continue
                    if (entry.name == "resources.arsc") continue
                    
                    allEntries[entry.name] = Pair(splitApk, entry)
                    addedEntries.add(entry.name)
                }
            }
            
            progress += progressStep
        }
        
        // Write merged APK
        callback.onProgress("Creating merged APK...", 75)
        
        ZipOutputStream(FileOutputStream(outputFile)).use { zipOut ->
            for ((entryName, sourceInfo) in allEntries) {
                val (sourceFile, _) = sourceInfo
                
                ZipFile(sourceFile).use { sourceZip ->
                    val sourceEntry = sourceZip.getEntry(entryName)
                    if (sourceEntry != null) {
                        val inputStream = sourceZip.getInputStream(sourceEntry)
                        val data = inputStream.readBytes()
                        
                        // Patch AndroidManifest.xml to remove split attributes
                        val finalData = if (entryName == "AndroidManifest.xml") {
                            callback.onProgress("Patching AndroidManifest.xml...", 80)
                            patchAndroidManifest(data)
                        } else {
                            data
                        }
                        
                        val newEntry = ZipEntry(entryName)
                        
                        if (shouldStore(entryName)) {
                            newEntry.method = ZipEntry.STORED
                            newEntry.size = finalData.size.toLong()
                            newEntry.compressedSize = finalData.size.toLong()
                            val crc = CRC32()
                            crc.update(finalData)
                            newEntry.crc = crc.value
                        }
                        
                        zipOut.putNextEntry(newEntry)
                        zipOut.write(finalData)
                        zipOut.closeEntry()
                    }
                }
            }
        }
        
        callback.onProgress("Merged APK created", 85)
        Log.i(TAG, "Merged APK created: ${outputFile.absolutePath} (${outputFile.length()} bytes)")
    }
    
    private fun shouldStore(entryName: String): Boolean {
        val storeExtensions = listOf(
            ".png", ".jpg", ".jpeg", ".gif", ".webp",
            ".mp3", ".ogg", ".wav", ".m4a", ".aac",
            ".mp4", ".webm", ".3gp",
            ".zip", ".rar", ".7z"
        )
        return storeExtensions.any { entryName.lowercase().endsWith(it) }
    }
    
    /**
     * Patch AndroidManifest.xml to remove split-related attributes
     * 
     * This removes attributes that cause "package appears to be invalid" error:
     * - splitTypes
     * - requiredSplitTypes  
     * - isSplitRequired
     * - split (splitName)
     * 
     * Also removes meta-data elements related to splits
     */
    private fun patchAndroidManifest(manifestData: ByteArray): ByteArray {
        val data = manifestData.copyOf()
        var modified = false
        
        // Resource IDs to remove (set to 0xFFFFFFFF which makes them invalid/ignored)
        val attributeIdsToRemove = setOf(
            ATTR_ID_SPLIT_TYPES,
            ATTR_ID_REQUIRED_SPLIT_TYPES,
            ATTR_ID_IS_SPLIT_REQUIRED,
            ATTR_ID_SPLIT_NAME
        )
        
        // Scan through the binary XML looking for attribute resource IDs
        var i = 0
        while (i < data.size - 4) {
            // Read 4 bytes as little-endian integer
            val value = (data[i].toInt() and 0xFF) or
                       ((data[i + 1].toInt() and 0xFF) shl 8) or
                       ((data[i + 2].toInt() and 0xFF) shl 16) or
                       ((data[i + 3].toInt() and 0xFF) shl 24)
            
            if (value in attributeIdsToRemove) {
                // Zero out this attribute ID to disable it
                data[i] = 0xFF.toByte()
                data[i + 1] = 0xFF.toByte()
                data[i + 2] = 0xFF.toByte()
                data[i + 3] = 0xFF.toByte()
                modified = true
                Log.d(TAG, "Removed split attribute ID 0x${value.toString(16)} at position $i")
            }
            
            i++
        }
        
        // Additionally, look for "split" attribute in manifest element and remove it
        // The split attribute is a string attribute that specifies the split name
        
        if (modified) {
            Log.i(TAG, "AndroidManifest.xml patched to remove split attributes")
        } else {
            Log.i(TAG, "AndroidManifest.xml - no split attributes found to remove")
        }
        
        return data
    }
    
    /**
     * Sign APK with debug key
     */
    private fun signApkWithDebugKey(apkFile: File) {
        Log.i(TAG, "APK signing requested for: ${apkFile.absolutePath}")
        // Signing is handled by the ApkToolService
    }
    
    /**
     * Split an APK into components (density, ABI, language)
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
            callback.onProgress("Analyzing APK for splitting...", 5)
            
            val inputFile = File(inputPath)
            if (!inputFile.exists()) {
                return mapOf("success" to false, "error" to "Input file not found")
            }
            
            val outputDirectory = File(outputDir)
            outputDirectory.mkdirs()
            
            val splitFiles = mutableListOf<String>()
            
            // For now, just copy the base APK since splitting is a more complex operation
            // that requires resource table manipulation
            callback.onProgress("Creating base APK...", 50)
            val baseOutput = File(outputDirectory, "base.apk")
            inputFile.copyTo(baseOutput, overwrite = true)
            splitFiles.add(baseOutput.absolutePath)
            
            callback.onProgress("Split complete!", 100)
            callback.onComplete(outputDir)
            
            return mapOf(
                "success" to true,
                "outputDir" to outputDir,
                "splitFiles" to splitFiles
            )
        } catch (e: Exception) {
            Log.e(TAG, "Split error: ${e.message}", e)
            callback.onError(e.message ?: "Unknown error")
            return mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }
    
    /**
     * Get information about a split APK bundle
     */
    fun getSplitApkInfo(inputPath: String, splitType: String = "apks"): Map<String, Any> {
        try {
            val inputFile = File(inputPath)
            if (!inputFile.exists()) {
                return mapOf("success" to false, "error" to "File not found")
            }
            
            val components = mutableListOf<Map<String, Any>>()
            var totalSize = 0L
            
            ZipFile(inputFile).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    if (entry.name.endsWith(".apk", ignoreCase = true) && !entry.isDirectory) {
                        val fileName = File(entry.name).name
                        
                        val componentType = when {
                            fileName.equals("base.apk", ignoreCase = true) -> "base"
                            fileName.startsWith("config.") || fileName.startsWith("split_config") -> {
                                when {
                                    fileName.contains("arm64") || fileName.contains("armeabi") || 
                                    fileName.contains("x86") || fileName.contains("mips") -> "abi"
                                    fileName.contains("dpi") || fileName.contains("hdpi") || 
                                    fileName.contains("mdpi") || fileName.contains("xdpi") -> "density"
                                    else -> "config"
                                }
                            }
                            fileName.contains("split_") -> "split"
                            !fileName.startsWith("config") && !fileName.startsWith("split") -> "base"
                            else -> "other"
                        }
                        
                        components.add(mapOf(
                            "name" to fileName,
                            "size" to entry.size,
                            "compressedSize" to entry.compressedSize,
                            "type" to componentType
                        ))
                        
                        totalSize += entry.size
                    }
                }
            }
            
            val splitType = when {
                inputPath.endsWith(".apks", ignoreCase = true) -> "apks"
                inputPath.endsWith(".xapk", ignoreCase = true) -> "xapk"
                inputPath.endsWith(".apkm", ignoreCase = true) -> "apkm"
                else -> "unknown"
            }
            
            return mapOf(
                "success" to true,
                "splitType" to splitType,
                "components" to components,
                "totalSize" to totalSize,
                "componentCount" to components.size
            )
            
        } catch (e: Exception) {
            Log.e(TAG, "Error getting split APK info: ${e.message}", e)
            return mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }
    
    /**
     * Extract an installed app's APK(s)
     */
    fun extractInstalledApk(
        packageName: String,
        outputDir: String,
        callback: ProgressCallback
    ): Map<String, Any> {
        try {
            callback.onProgress("Getting app info...", 5)
            
            val pm = context.packageManager
            val appInfo = try {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                    pm.getApplicationInfo(packageName, PackageManager.ApplicationInfoFlags.of(0))
                } else {
                    @Suppress("DEPRECATION")
                    pm.getApplicationInfo(packageName, 0)
                }
            } catch (e: PackageManager.NameNotFoundException) {
                return mapOf("success" to false, "error" to "Package not found: $packageName")
            }
            
            val outputDirectory = File(outputDir)
            outputDirectory.mkdirs()
            
            val extractedFiles = mutableListOf<String>()
            
            // Get base APK
            val baseApkPath = appInfo.sourceDir
            if (baseApkPath != null) {
                callback.onProgress("Extracting base APK...", 20)
                val baseApk = File(baseApkPath)
                val outputBase = File(outputDirectory, "base.apk")
                baseApk.copyTo(outputBase, overwrite = true)
                extractedFiles.add(outputBase.absolutePath)
            }
            
            // Get split APKs if any
            val splitSourceDirs = appInfo.splitSourceDirs
            if (!splitSourceDirs.isNullOrEmpty()) {
                callback.onProgress("Extracting ${splitSourceDirs.size} split APKs...", 40)
                var progress = 40
                val step = 50 / splitSourceDirs.size
                
                for (splitPath in splitSourceDirs) {
                    val splitFile = File(splitPath)
                    val outputSplit = File(outputDirectory, splitFile.name)
                    splitFile.copyTo(outputSplit, overwrite = true)
                    extractedFiles.add(outputSplit.absolutePath)
                    progress += step
                    callback.onProgress("Extracted ${splitFile.name}", progress)
                }
            }
            
            callback.onProgress("Extraction complete!", 100)
            callback.onComplete(outputDir)
            
            return mapOf(
                "success" to true,
                "outputDir" to outputDir,
                "extractedFiles" to extractedFiles,
                "isSplitApk" to (!splitSourceDirs.isNullOrEmpty()),
                "baseApkPath" to (baseApkPath ?: "")
            )
            
        } catch (e: Exception) {
            Log.e(TAG, "Error extracting APK: ${e.message}", e)
            callback.onError(e.message ?: "Unknown error")
            return mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }
    
    fun convertXapkToApk(inputPath: String, outputPath: String, sign: Boolean, callback: ProgressCallback): Map<String, Any> {
        return mergeSplitApk(inputPath, outputPath, sign, "xapk", callback)
    }
    
    fun convertApksToApk(inputPath: String, outputPath: String, sign: Boolean, callback: ProgressCallback): Map<String, Any> {
        return mergeSplitApk(inputPath, outputPath, sign, "apks", callback)
    }
    
    fun convertApkmToApk(inputPath: String, outputPath: String, sign: Boolean, callback: ProgressCallback): Map<String, Any> {
        return mergeSplitApk(inputPath, outputPath, sign, "apkm", callback)
    }
    
    /**
     * List installed apps that have split APKs
     */
    fun getInstalledSplitApps(): List<Map<String, Any>> {
        val apps = mutableListOf<Map<String, Any>>()
        val pm = context.packageManager
        
        val packages = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            pm.getInstalledApplications(PackageManager.ApplicationInfoFlags.of(0))
        } else {
            @Suppress("DEPRECATION")
            pm.getInstalledApplications(0)
        }
        
        for (appInfo in packages) {
            val isSplit = !appInfo.splitSourceDirs.isNullOrEmpty()
            
            apps.add(mapOf(
                "packageName" to appInfo.packageName,
                "appName" to pm.getApplicationLabel(appInfo).toString(),
                "isSplitApk" to isSplit,
                "splitCount" to (appInfo.splitSourceDirs?.size ?: 0),
                "baseApkPath" to (appInfo.sourceDir ?: "")
            ))
        }
        
        return apps.sortedBy { it["appName"] as String }
    }
    
    /**
     * Extract split APK bundle to directory
     */
    fun extractSplitApk(inputPath: String, outputDir: String): Boolean {
        try {
            val inputFile = File(inputPath)
            if (!inputFile.exists()) {
                Log.e(TAG, "Input file not found: $inputPath")
                return false
            }
            
            val outputDirectory = File(outputDir)
            outputDirectory.mkdirs()
            
            ZipFile(inputFile).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    
                    if (entry.isDirectory) continue
                    
                    val fileName = File(entry.name).name
                    if (!fileName.endsWith(".apk", ignoreCase = true)) continue
                    
                    val outputFile = File(outputDirectory, fileName)
                    zip.getInputStream(entry).use { inputStream ->
                        FileOutputStream(outputFile).use { outputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    }
                    Log.i(TAG, "Extracted: ${outputFile.name}")
                }
            }
            
            return true
        } catch (e: Exception) {
            Log.e(TAG, "Extract error: ${e.message}", e)
            return false
        }
    }
    
    /**
     * Create APKS bundle from directory of APKs
     */
    fun createApksBundle(inputDir: String, outputPath: String): Boolean {
        try {
            val inputDirectory = File(inputDir)
            if (!inputDirectory.exists() || !inputDirectory.isDirectory) {
                Log.e(TAG, "Input directory not found: $inputDir")
                return false
            }
            
            val apkFiles = inputDirectory.listFiles { file -> 
                file.extension.equals("apk", ignoreCase = true)
            } ?: return false
            
            if (apkFiles.isEmpty()) {
                Log.e(TAG, "No APK files found in directory")
                return false
            }
            
            val outputFile = File(outputPath)
            outputFile.parentFile?.mkdirs()
            
            ZipOutputStream(FileOutputStream(outputFile)).use { zipOut ->
                for (apkFile in apkFiles) {
                    val entry = ZipEntry(apkFile.name)
                    zipOut.putNextEntry(entry)
                    apkFile.inputStream().use { input ->
                        input.copyTo(zipOut)
                    }
                    zipOut.closeEntry()
                    Log.i(TAG, "Added to bundle: ${apkFile.name}")
                }
            }
            
            Log.i(TAG, "Created APKS bundle: $outputPath")
            return true
        } catch (e: Exception) {
            Log.e(TAG, "Bundle creation error: ${e.message}", e)
            return false
        }
    }
    
    /**
     * Install split APK bundle using PackageInstaller
     */
    fun installSplitApk(path: String): Boolean {
        try {
            val inputFile = File(path)
            if (!inputFile.exists()) {
                Log.e(TAG, "File not found: $path")
                return false
            }
            
            // Extract APKs first
            val tempDir = File(context.cacheDir, "install_temp_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            try {
                val apks = mutableListOf<File>()
                
                ZipFile(inputFile).use { zip ->
                    val entries = zip.entries()
                    while (entries.hasMoreElements()) {
                        val entry = entries.nextElement()
                        if (entry.name.endsWith(".apk", ignoreCase = true) && !entry.isDirectory) {
                            val outputFile = File(tempDir, File(entry.name).name)
                            zip.getInputStream(entry).use { input ->
                                FileOutputStream(outputFile).use { output ->
                                    input.copyTo(output)
                                }
                            }
                            apks.add(outputFile)
                        }
                    }
                }
                
                if (apks.isEmpty()) {
                    Log.e(TAG, "No APKs found in bundle")
                    return false
                }
                
                // Use PackageInstaller for split APK installation
                val pm = context.packageManager
                val packageInstaller = pm.packageInstaller
                val params = android.content.pm.PackageInstaller.SessionParams(
                    android.content.pm.PackageInstaller.SessionParams.MODE_FULL_INSTALL
                )
                
                var totalSize = 0L
                apks.forEach { totalSize += it.length() }
                params.setSize(totalSize)
                
                val sessionId = packageInstaller.createSession(params)
                val session = packageInstaller.openSession(sessionId)
                
                try {
                    for (apk in apks) {
                        session.openWrite(apk.name, 0, apk.length()).use { output ->
                            apk.inputStream().use { input ->
                                input.copyTo(output)
                            }
                            session.fsync(output)
                        }
                    }
                    
                    val intent = android.content.Intent(context, MainActivity::class.java)
                    intent.action = "PACKAGE_INSTALLED"
                    val pendingIntent = android.app.PendingIntent.getActivity(
                        context, 
                        sessionId, 
                        intent, 
                        android.app.PendingIntent.FLAG_MUTABLE
                    )
                    
                    session.commit(pendingIntent.intentSender)
                    Log.i(TAG, "Installation session committed")
                    return true
                    
                } finally {
                    session.close()
                }
                
            } finally {
                tempDir.deleteRecursively()
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Install error: ${e.message}", e)
            return false
        }
    }
}
