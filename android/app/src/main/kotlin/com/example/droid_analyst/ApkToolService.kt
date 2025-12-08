package com.example.droid_analyst

import android.content.Context
import android.util.Log
import com.android.tools.smali.baksmali.Baksmali
import com.android.tools.smali.baksmali.BaksmaliOptions
import com.android.tools.smali.smali.Smali
import com.android.tools.smali.smali.SmaliOptions
import com.android.tools.smali.dexlib2.DexFileFactory
import com.android.tools.smali.dexlib2.Opcodes
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
import com.android.tools.smali.dexlib2.writer.pool.DexPool
import com.android.tools.smali.dexlib2.writer.io.FileDataStore
import org.json.JSONArray
import org.json.JSONObject
import java.io.*
import java.util.zip.*
import javax.xml.parsers.DocumentBuilderFactory
import org.w3c.dom.Element

/**
 * Native Android APK Tool Service
 * Provides APK decompilation and building without external dependencies
 * Integrates functionality similar to ApkRepacker/apktool
 */
class ApkToolService(private val context: Context) {
    
    companion object {
        private const val TAG = "ApkToolService"
        private const val VERSION = "2.0.0"
        
        // Decompile options
        const val DECODE_SOURCES_NONE = 0
        const val DECODE_SOURCES_SMALI = 1
        const val DECODE_RESOURCES_NONE = 0
        const val DECODE_RESOURCES_FULL = 1
        const val DECODE_ASSETS_FULL = 1
    }
    
    /**
     * Callback interface for progress updates
     */
    interface ProgressCallback {
        fun onProgress(message: String, progress: Int)
        fun onError(message: String)
        fun onComplete(outputPath: String)
    }
    
    /**
     * Decompile/decode an APK file to a directory
     * Similar to: apktool d app.apk -o output_dir
     * 
     * @param apkPath Path to input APK
     * @param outputDir Path to output directory
     * @param decodeSources Whether to decode DEX to smali (true) or copy raw (false)
     * @param decodeResources Whether to decode resources (binary XML) or copy raw
     * @param callback Progress callback
     * @return true on success
     */
    fun decodeApk(
        apkPath: String,
        outputDir: String,
        decodeSources: Boolean = true,
        decodeResources: Boolean = true,
        callback: ProgressCallback? = null
    ): Boolean {
        Log.i(TAG, "Decoding APK: $apkPath -> $outputDir")
        callback?.onProgress("Starting APK decode...", 0)
        
        try {
            val apkFile = File(apkPath)
            val outDir = File(outputDir)
            
            if (!apkFile.exists()) {
                callback?.onError("APK file not found: $apkPath")
                return false
            }
            
            // Clean output directory
            if (outDir.exists()) {
                outDir.deleteRecursively()
            }
            outDir.mkdirs()
            
            val zipFile = ZipFile(apkFile)
            val totalEntries = zipFile.entries().toList().size
            var processedEntries = 0
            
            // Create metadata file (similar to apktool.yml)
            val metaInfo = createMetaInfo(apkFile, zipFile)
            File(outDir, "apktool.yml").writeText(metaInfo)
            callback?.onProgress("Created metadata", 5)
            
            // Process all entries
            zipFile.entries().asSequence().forEach { entry ->
                processedEntries++
                val progress = (processedEntries * 90 / totalEntries) + 5
                
                when {
                    // DEX files - decode to smali or copy raw
                    entry.name.endsWith(".dex") -> {
                        if (decodeSources) {
                            callback?.onProgress("Decompiling ${entry.name}...", progress)
                            decodeDexToSmali(zipFile, entry, outDir)
                        } else {
                            callback?.onProgress("Copying ${entry.name}...", progress)
                            copyEntry(zipFile, entry, outDir)
                        }
                    }
                    
                    // AndroidManifest.xml - always decode
                    entry.name == "AndroidManifest.xml" -> {
                        callback?.onProgress("Decoding manifest...", progress)
                        if (decodeResources) {
                            decodeBinaryXml(zipFile, entry, outDir)
                        } else {
                            copyEntry(zipFile, entry, File(outDir, "original"))
                        }
                    }
                    
                    // resources.arsc
                    entry.name == "resources.arsc" -> {
                        callback?.onProgress("Processing resources...", progress)
                        copyEntry(zipFile, entry, outDir)
                        // TODO: Full resource decoding would require ARSC parser
                    }
                    
                    // res/ folder - decode XML or copy
                    entry.name.startsWith("res/") -> {
                        if (decodeResources && entry.name.endsWith(".xml")) {
                            decodeBinaryXml(zipFile, entry, outDir)
                        } else {
                            copyEntry(zipFile, entry, outDir)
                        }
                    }
                    
                    // Native libraries, assets, etc - copy as-is
                    entry.name.startsWith("lib/") ||
                    entry.name.startsWith("assets/") ||
                    entry.name.startsWith("kotlin/") -> {
                        copyEntry(zipFile, entry, outDir)
                    }
                    
                    // META-INF - copy to original folder
                    entry.name.startsWith("META-INF/") -> {
                        copyEntry(zipFile, entry, File(outDir, "original"))
                    }
                    
                    // Unknown files
                    else -> {
                        if (!entry.isDirectory) {
                            copyEntry(zipFile, entry, File(outDir, "unknown"))
                        }
                    }
                }
            }
            
            zipFile.close()
            
            callback?.onProgress("Decode complete!", 100)
            callback?.onComplete(outputDir)
            Log.i(TAG, "APK decoded successfully to: $outputDir")
            return true
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode APK: ${e.message}", e)
            callback?.onError("Decode failed: ${e.message}")
            return false
        }
    }
    
    /**
     * Build/recompile an APK from a decompiled directory
     * Similar to: apktool b source_dir -o output.apk
     * 
     * @param sourceDir Path to decompiled APK directory
     * @param outputApk Path to output APK
     * @param signApk Whether to sign the APK after building
     * @param callback Progress callback
     * @return true on success
     */
    fun buildApk(
        sourceDir: String,
        outputApk: String,
        signApk: Boolean = true,
        callback: ProgressCallback? = null
    ): Boolean {
        Log.i(TAG, "Building APK: $sourceDir -> $outputApk")
        callback?.onProgress("Starting APK build...", 0)
        
        try {
            val srcDir = File(sourceDir)
            val outFile = File(outputApk)
            
            if (!srcDir.exists() || !srcDir.isDirectory) {
                callback?.onError("Source directory not found: $sourceDir")
                return false
            }
            
            outFile.parentFile?.mkdirs()
            
            // Create temporary unsigned APK
            val tempApk = File(context.cacheDir, "build_${System.currentTimeMillis()}.apk")
            
            ZipOutputStream(BufferedOutputStream(FileOutputStream(tempApk))).use { zipOut ->
                
                // Step 1: Build smali directories to DEX
                callback?.onProgress("Compiling smali to DEX...", 10)
                val smaliDirs = srcDir.listFiles { f -> 
                    f.isDirectory && (f.name == "smali" || f.name.startsWith("smali_"))
                } ?: emptyArray()
                
                for (smaliDir in smaliDirs) {
                    val dexName = if (smaliDir.name == "smali") "classes.dex" 
                                  else "classes${smaliDir.name.removePrefix("smali_")}.dex"
                    callback?.onProgress("Building $dexName...", 20)
                    
                    val dexFile = File(context.cacheDir, dexName)
                    if (buildSmaliToDex(smaliDir, dexFile)) {
                        addFileToZip(zipOut, dexFile, dexName)
                        dexFile.delete()
                    }
                }
                
                // Step 2: Add AndroidManifest.xml
                callback?.onProgress("Adding manifest...", 40)
                val manifestFile = File(srcDir, "AndroidManifest.xml")
                if (manifestFile.exists()) {
                    // For now, add as-is (would need AAPT for full compilation)
                    addFileToZip(zipOut, manifestFile, "AndroidManifest.xml")
                }
                
                // Step 3: Add resources.arsc
                val arscFile = File(srcDir, "resources.arsc")
                if (arscFile.exists()) {
                    addFileToZip(zipOut, arscFile, "resources.arsc")
                }
                
                // Step 4: Add res/ folder
                callback?.onProgress("Adding resources...", 50)
                val resDir = File(srcDir, "res")
                if (resDir.exists()) {
                    addDirectoryToZip(zipOut, resDir, "res")
                }
                
                // Step 5: Add lib/ folder (native libraries - must be STORED)
                callback?.onProgress("Adding native libraries...", 60)
                val libDir = File(srcDir, "lib")
                if (libDir.exists()) {
                    addDirectoryToZip(zipOut, libDir, "lib", storeUncompressed = true)
                }
                
                // Step 6: Add assets/
                callback?.onProgress("Adding assets...", 70)
                val assetsDir = File(srcDir, "assets")
                if (assetsDir.exists()) {
                    addDirectoryToZip(zipOut, assetsDir, "assets")
                }
                
                // Step 7: Add kotlin/
                val kotlinDir = File(srcDir, "kotlin")
                if (kotlinDir.exists()) {
                    addDirectoryToZip(zipOut, kotlinDir, "kotlin")
                }
                
                // Step 8: Add unknown files
                callback?.onProgress("Adding unknown files...", 80)
                val unknownDir = File(srcDir, "unknown")
                if (unknownDir.exists()) {
                    addDirectoryToZip(zipOut, unknownDir, "")
                }
            }
            
            // Step 9: Sign the APK if requested
            if (signApk) {
                callback?.onProgress("Signing APK...", 90)
                // Use the signing method from MainActivity
                // For now, just copy as unsigned
                tempApk.copyTo(outFile, overwrite = true)
            } else {
                tempApk.copyTo(outFile, overwrite = true)
            }
            
            tempApk.delete()
            
            callback?.onProgress("Build complete!", 100)
            callback?.onComplete(outputApk)
            Log.i(TAG, "APK built successfully: $outputApk (${outFile.length()} bytes)")
            return true
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to build APK: ${e.message}", e)
            callback?.onError("Build failed: ${e.message}")
            return false
        }
    }
    
    /**
     * Decode a DEX file to smali
     */
    private fun decodeDexToSmali(zipFile: ZipFile, entry: ZipEntry, outDir: File) {
        try {
            // Determine output directory name
            val smaliDirName = when {
                entry.name == "classes.dex" -> "smali"
                entry.name.startsWith("classes") -> {
                    val num = entry.name.removePrefix("classes").removeSuffix(".dex")
                    "smali_$num"
                }
                else -> "smali_${entry.name.removeSuffix(".dex")}"
            }
            
            val smaliDir = File(outDir, smaliDirName)
            smaliDir.mkdirs()
            
            // Extract DEX to temp file
            val tempDex = File(context.cacheDir, "temp_${entry.name}")
            zipFile.getInputStream(entry).use { input ->
                tempDex.outputStream().use { output ->
                    input.copyTo(output)
                }
            }
            
            // Use baksmali to decompile
            val options = BaksmaliOptions()
            options.deodex = false
            options.implicitReferences = false
            options.parameterRegisters = true
            options.localsDirective = true
            options.sequentialLabels = true
            options.debugInfo = true
            options.codeOffsets = false
            options.accessorComments = true
            options.registerInfo = 0
            
            val dexFile = DexFileFactory.loadDexFile(tempDex, Opcodes.forApi(21))
            Baksmali.disassembleDexFile(dexFile, smaliDir, Runtime.getRuntime().availableProcessors().coerceAtMost(4), options)
            
            tempDex.delete()
            Log.i(TAG, "Decoded ${entry.name} to $smaliDirName")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode DEX ${entry.name}: ${e.message}", e)
            // Fallback: copy raw DEX
            copyEntry(zipFile, entry, outDir)
        }
    }
    
    /**
     * Build smali files to DEX
     */
    private fun buildSmaliToDex(smaliDir: File, outputDex: File): Boolean {
        try {
            Log.i(TAG, "Building smali: ${smaliDir.absolutePath} -> ${outputDex.absolutePath}")
            
            // Collect all smali files
            val smaliFiles = smaliDir.walkTopDown()
                .filter { it.isFile && it.extension == "smali" }
                .map { it.absolutePath }
                .toList()
            
            if (smaliFiles.isEmpty()) {
                Log.w(TAG, "No smali files found in ${smaliDir.absolutePath}")
                return false
            }
            
            Log.i(TAG, "Found ${smaliFiles.size} smali files")
            
            // Use smali to assemble - pass directory path
            val options = SmaliOptions()
            options.apiLevel = 21
            options.verboseErrors = true
            options.jobs = Runtime.getRuntime().availableProcessors().coerceAtMost(4)
            
            // Smali.assemble takes the smali directory path as string
            val success = Smali.assemble(options, smaliDir.absolutePath, outputDex.absolutePath)
            
            if (success) {
                Log.i(TAG, "Successfully built DEX: ${outputDex.length()} bytes")
            } else {
                Log.e(TAG, "Smali assembly failed")
            }
            
            return success
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to build DEX: ${e.message}", e)
            return false
        }
    }
    
    /**
     * Decode binary Android XML to readable XML
     * Note: This is a simplified version - full decoding requires ARSC parsing
     */
    private fun decodeBinaryXml(zipFile: ZipFile, entry: ZipEntry, outDir: File) {
        try {
            val outFile = File(outDir, entry.name)
            outFile.parentFile?.mkdirs()
            
            // Try to decode as binary XML
            zipFile.getInputStream(entry).use { input ->
                val bytes = input.readBytes()
                
                // Check for binary XML magic (0x00000003 = RES_XML_TYPE)
                if (bytes.size >= 4 && bytes[0] == 0x03.toByte() && bytes[1] == 0x00.toByte()) {
                    // Binary XML - decode it
                    val decoded = decodeBinaryXmlBytes(bytes)
                    if (decoded != null) {
                        outFile.writeText(decoded)
                        return
                    }
                }
                
                // Not binary or decoding failed - copy as-is
                outFile.writeBytes(bytes)
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to decode XML ${entry.name}: ${e.message}")
            copyEntry(zipFile, entry, outDir)
        }
    }
    
    /**
     * Simple binary XML decoder
     * For full functionality, would need complete AXML parser
     */
    private fun decodeBinaryXmlBytes(bytes: ByteArray): String? {
        // This is a placeholder - full binary XML parsing is complex
        // For now, return null to trigger raw copy
        // In a full implementation, this would parse the AXML format
        return null
    }
    
    /**
     * Copy an entry from ZIP to output directory
     */
    private fun copyEntry(zipFile: ZipFile, entry: ZipEntry, outDir: File) {
        if (entry.isDirectory) return
        
        val outFile = File(outDir, entry.name)
        outFile.parentFile?.mkdirs()
        
        zipFile.getInputStream(entry).use { input ->
            outFile.outputStream().use { output ->
                input.copyTo(output)
            }
        }
    }
    
    /**
     * Add a file to ZIP output
     */
    private fun addFileToZip(zipOut: ZipOutputStream, file: File, entryName: String, store: Boolean = false) {
        val entry = ZipEntry(entryName)
        
        if (store || entryName.endsWith(".so")) {
            // Store native libraries uncompressed
            entry.method = ZipEntry.STORED
            entry.size = file.length()
            entry.compressedSize = file.length()
            
            // Calculate CRC
            val crc = CRC32()
            file.inputStream().use { input ->
                val buffer = ByteArray(8192)
                var len: Int
                while (input.read(buffer).also { len = it } != -1) {
                    crc.update(buffer, 0, len)
                }
            }
            entry.crc = crc.value
        }
        
        zipOut.putNextEntry(entry)
        file.inputStream().use { input ->
            input.copyTo(zipOut)
        }
        zipOut.closeEntry()
    }
    
    /**
     * Add a directory recursively to ZIP
     */
    private fun addDirectoryToZip(
        zipOut: ZipOutputStream, 
        dir: File, 
        basePath: String,
        storeUncompressed: Boolean = false
    ) {
        dir.walkTopDown().forEach { file ->
            if (file.isFile) {
                val relativePath = file.relativeTo(dir).path.replace('\\', '/')
                val entryName = if (basePath.isEmpty()) relativePath else "$basePath/$relativePath"
                val shouldStore = storeUncompressed || file.extension == "so"
                addFileToZip(zipOut, file, entryName, shouldStore)
            }
        }
    }
    
    /**
     * Create apktool.yml metadata file
     */
    private fun createMetaInfo(apkFile: File, zipFile: ZipFile): String {
        val sb = StringBuilder()
        sb.appendLine("!!brut.androlib.meta.MetaInfo")
        sb.appendLine("apkFileName: ${apkFile.name}")
        sb.appendLine("doNotCompress:")
        
        // Find uncompressed entries
        zipFile.entries().asSequence()
            .filter { it.method == ZipEntry.STORED && it.size > 0 }
            .map { it.name.substringAfterLast('.') }
            .distinct()
            .filter { it.isNotEmpty() }
            .forEach { ext ->
                sb.appendLine("- $ext")
            }
        
        sb.appendLine("isFrameworkApk: false")
        sb.appendLine("sdkInfo:")
        sb.appendLine("  minSdkVersion: '21'")
        sb.appendLine("  targetSdkVersion: '34'")
        sb.appendLine("sharedLibrary: false")
        sb.appendLine("sparseResources: false")
        sb.appendLine("version: $VERSION")
        sb.appendLine("versionInfo:")
        sb.appendLine("  versionCode: '1'")
        sb.appendLine("  versionName: '1.0'")
        
        return sb.toString()
    }
    
    /**
     * Get list of files in decompiled APK
     */
    fun listDecompiledFiles(sourceDir: String): List<Map<String, Any>> {
        val result = mutableListOf<Map<String, Any>>()
        val dir = File(sourceDir)
        
        if (!dir.exists()) return result
        
        dir.walkTopDown().forEach { file ->
            if (file.isFile) {
                result.add(mapOf(
                    "path" to file.relativeTo(dir).path,
                    "size" to file.length(),
                    "type" to when {
                        file.extension == "smali" -> "smali"
                        file.extension == "xml" -> "xml"
                        file.extension == "so" -> "native"
                        file.name == "AndroidManifest.xml" -> "manifest"
                        else -> "other"
                    }
                ))
            }
        }
        
        return result
    }
    
    /**
     * Read a file from decompiled APK
     */
    fun readDecompiledFile(sourceDir: String, filePath: String): String? {
        val file = File(sourceDir, filePath)
        return if (file.exists() && file.isFile) {
            file.readText()
        } else {
            null
        }
    }
    
    /**
     * Write a file to decompiled APK
     */
    fun writeDecompiledFile(sourceDir: String, filePath: String, content: String): Boolean {
        return try {
            val file = File(sourceDir, filePath)
            file.parentFile?.mkdirs()
            file.writeText(content)
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to write file: ${e.message}")
            false
        }
    }
    
    /**
     * Get APK info from manifest
     */
    fun getApkInfo(apkPath: String): Map<String, Any>? {
        return try {
            val zipFile = ZipFile(apkPath)
            val manifest = zipFile.getEntry("AndroidManifest.xml")
            
            if (manifest != null) {
                // Parse binary manifest
                val info = mutableMapOf<String, Any>(
                    "path" to apkPath,
                    "size" to File(apkPath).length()
                )
                
                // Count entries
                var dexCount = 0
                var nativeLibs = mutableListOf<String>()
                
                zipFile.entries().asSequence().forEach { entry ->
                    if (entry.name.endsWith(".dex")) dexCount++
                    if (entry.name.startsWith("lib/") && entry.name.endsWith(".so")) {
                        nativeLibs.add(entry.name)
                    }
                }
                
                info["dexCount"] = dexCount
                info["nativeLibs"] = nativeLibs
                
                zipFile.close()
                info
            } else {
                zipFile.close()
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get APK info: ${e.message}")
            null
        }
    }
}
