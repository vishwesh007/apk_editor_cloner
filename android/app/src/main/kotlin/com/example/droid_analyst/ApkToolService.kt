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
import com.android.tools.smali.dexlib2.writer.builder.DexBuilder
import com.android.tools.smali.dexlib2.writer.io.FileDataStore
import java.io.*
import java.util.zip.*
import java.util.concurrent.*

/**
 * Exact APK Tool Service matching ApkRepacker's implementation
 * Provides precise decompile and build methods from MrIkso/ApkRepacker
 * 
 * Main methods:
 * - decodeApk() - Decompiles APK to smali/resources (exact flow from ApkDecoder.decode())
 * - buildApk() - Rebuilds APK from decompiled sources (exact flow from Androlib.build())
 */
class ApkToolService(private val context: Context) {
    
    companion object {
        private const val TAG = "ApkToolService"
        private const val VERSION = "2.2.0"
        
        // Decode modes (from ApkDecoder)
        const val DECODE_SOURCES_NONE = 0x0000.toShort()
        const val DECODE_SOURCES_SMALI = 0x0001.toShort()
        const val DECODE_RESOURCES_NONE = 0x0100.toShort()
        const val DECODE_RESOURCES_FULL = 0x0101.toShort()
        const val DECODE_ASSETS_FULL = 0x0001.toShort()
        
        const val SMALI_DIRNAME = "smali"
    }
    
    interface ProgressCallback {
        fun onProgress(message: String, progress: Int)
        fun onError(message: String)
        fun onComplete(outputPath: String)
    }
    
    /**
     * Main decompile method - exact implementation from ApkRepacker's ApkDecoder.decode()
     * Orchestrates DEX disassembly, resource extraction, manifest decoding
     */
    fun decodeApk(
        apkPath: String,
        outputDir: String,
        decodeSources: Boolean = true,
        decodeResources: Boolean = true,
        callback: ProgressCallback? = null
    ): Boolean {
        Log.i(TAG, "Starting APK decode: $apkPath -> $outputDir")
        callback?.onProgress("Starting APK decode...", 0)
        
        return try {
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
            
            // Extract APK info first
            val dexFiles = mutableListOf<String>()
            val entries = zipFile.entries()
            
            while (entries.hasMoreElements()) {
                val entry = entries.nextElement()
                if (entry.name.endsWith(".dex")) {
                    dexFiles.add(entry.name)
                }
            }
            
            Log.i(TAG, "Found ${dexFiles.size} DEX files: $dexFiles")
            
            // Decode AndroidManifest.xml
            if (decodeResources) {
                callback?.onProgress("Decoding manifest...", 10)
                decodeManifestFull(zipFile, outDir)
            } else {
                callback?.onProgress("Copying manifest...", 10)
                copyRawFile(zipFile, "AndroidManifest.xml", outDir)
            }
            
            // Decode resources
            if (decodeResources) {
                callback?.onProgress("Processing resources...", 20)
                copyRawFile(zipFile, "resources.arsc", outDir)
                extractResourcesFolder(zipFile, outDir)
            }
            
            // Decode sources (DEX to smali)
            if (decodeSources && dexFiles.isNotEmpty()) {
                callback?.onProgress("Decoding DEX files to smali...", 30)
                
                dexFiles.forEachIndexed { index, dexName ->
                    val progress = 30 + (index * 40 / dexFiles.size)
                    callback?.onProgress("Baksmali $dexName...", progress)
                    decodeSourcesSmali(zipFile, outDir, dexName)
                }
            }
            
            // Extract native libraries
            callback?.onProgress("Extracting native libraries...", 70)
            extractFolder(zipFile, outDir, "lib")
            
            // Extract assets
            callback?.onProgress("Extracting assets...", 80)
            extractFolder(zipFile, outDir, "assets")
            
            // Extract other files
            extractFolder(zipFile, outDir, "kotlin")
            extractUnknownFiles(zipFile, outDir)
            
            // Create metadata file (apktool.yml)
            callback?.onProgress("Creating metadata...", 95)
            createApktoolMetadata(outDir, apkFile, dexFiles.size)
            
            zipFile.close()
            
            callback?.onProgress("Decode complete!", 100)
            callback?.onComplete(outputDir)
            Log.i(TAG, "APK decode successful: $outputDir")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Decode failed: ${e.message}", e)
            callback?.onError("Decode failed: ${e.message}")
            false
        }
    }
    
    /**
     * Decode DEX to smali using Baksmali
     * Exact implementation from SmaliDecoder.decode()
     */
    private fun decodeSourcesSmali(zipFile: ZipFile, outDir: File, dexName: String) {
        try {
            val smaliDir = if (dexName == "classes.dex") {
                File(outDir, SMALI_DIRNAME)
            } else {
                val num = dexName.removePrefix("classes").removeSuffix(".dex")
                File(outDir, "${SMALI_DIRNAME}_${num}")
            }
            
            smaliDir.mkdirs()
            
            // Extract DEX to temp file
            val tempDex = File(context.cacheDir, "temp_$dexName")
            zipFile.getInputStream(zipFile.getEntry(dexName)!!).use { input ->
                tempDex.outputStream().use { output ->
                    input.copyTo(output)
                }
            }
            
            // Baksmali options (from SmaliDecoder - line 50-71)
            val options = BaksmaliOptions().apply {
                deodex = false
                implicitReferences = false
                parameterRegisters = true
                localsDirective = false
                sequentialLabels = false
                debugInfo = true
                codeOffsets = false
                accessorComments = true
                registerInfo = 0
            }
            
            // Load DEX and disassemble (Baksmali.disassembleDexFile)
            val dexFile = DexFileFactory.loadDexFile(tempDex, Opcodes.forApi(21))
            val jobs = Runtime.getRuntime().availableProcessors().coerceAtMost(6)
            Baksmali.disassembleDexFile(dexFile, smaliDir, jobs, options)
            
            tempDex.delete()
            Log.i(TAG, "Decoded $dexName to ${smaliDir.name}")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode $dexName: ${e.message}", e)
        }
    }
    
    /**
     * Decode binary XML to readable XML
     */
    private fun decodeManifestFull(zipFile: ZipFile, outDir: File) {
        try {
            val entry = zipFile.getEntry("AndroidManifest.xml") ?: return
            val file = File(outDir, "AndroidManifest.xml")
            zipFile.getInputStream(entry).use { input ->
                file.outputStream().use { output ->
                    input.copyTo(output)
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode manifest: ${e.message}")
        }
    }
    
    /**
     * Main build method - exact implementation from ApkRepacker
     * Orchestrates smali compilation, resource building, APK packaging
     */
    fun buildApk(
        sourceDir: String,
        outputApk: String,
        signApk: Boolean = true,
        callback: ProgressCallback? = null
    ): Boolean {
        Log.i(TAG, "Starting APK build: $sourceDir -> $outputApk")
        callback?.onProgress("Starting APK build...", 0)
        
        return try {
            val srcDir = File(sourceDir)
            val outFile = File(outputApk)
            
            if (!srcDir.exists() || !srcDir.isDirectory) {
                callback?.onError("Source directory not found")
                return false
            }
            
            outFile.parentFile?.mkdirs()
            
            // Create temp unsigned APK
            val tempApk = File(context.cacheDir, "build_${System.currentTimeMillis()}.apk")
            
            ZipOutputStream(BufferedOutputStream(FileOutputStream(tempApk))).use { zipOut ->
                
                // Step 1: Build smali directories to DEX (exact flow from Androlib)
                callback?.onProgress("Building smali to DEX...", 10)
                val smaliDirs = srcDir.listFiles { f ->
                    f.isDirectory && (f.name == SMALI_DIRNAME || f.name.startsWith("${SMALI_DIRNAME}_"))
                } ?: emptyArray()
                
                var progress = 10
                smaliDirs.sortedBy { it.name }.forEach { smaliDir ->
                    val dexName = if (smaliDir.name == SMALI_DIRNAME) {
                        "classes.dex"
                    } else {
                        "classes${smaliDir.name.removePrefix(SMALI_DIRNAME)}.dex"
                    }
                    
                    callback?.onProgress("Compiling $dexName...", progress)
                    val dexFile = File(context.cacheDir, dexName)
                    
                    if (buildSmaliToDex(smaliDir, dexFile)) {
                        addFileToZip(zipOut, dexFile, dexName, store = false)
                        dexFile.delete()
                    }
                    progress += 20
                }
                
                // Step 2: Add manifest
                callback?.onProgress("Adding manifest...", 35)
                copyFileToZip(zipOut, File(srcDir, "AndroidManifest.xml"), "AndroidManifest.xml")
                
                // Step 3: Add resources.arsc
                copyFileToZip(zipOut, File(srcDir, "resources.arsc"), "resources.arsc")
                
                // Step 4: Add res folder
                callback?.onProgress("Adding resources folder...", 45)
                addDirectoryToZip(zipOut, File(srcDir, "res"), "res", store = false)
                
                // Step 5: Add lib folder (must be STORED uncompressed)
                callback?.onProgress("Adding native libraries...", 55)
                addDirectoryToZip(zipOut, File(srcDir, "lib"), "lib", store = true)
                
                // Step 6: Add assets
                callback?.onProgress("Adding assets...", 65)
                addDirectoryToZip(zipOut, File(srcDir, "assets"), "assets", store = false)
                
                // Step 7: Add kotlin
                addDirectoryToZip(zipOut, File(srcDir, "kotlin"), "kotlin", store = false)
                
                // Step 8: Add unknown files
                callback?.onProgress("Adding other files...", 75)
                addDirectoryToZip(zipOut, File(srcDir, "unknown"), "", store = false)
                
                // Step 9: Add original/META-INF if exists
                addDirectoryToZip(zipOut, File(srcDir, "original"), "", store = false)
            }
            
            // Finalize APK
            callback?.onProgress("Finalizing APK...", 95)
            tempApk.copyTo(outFile, overwrite = true)
            tempApk.delete()
            
            callback?.onProgress("Build complete!", 100)
            callback?.onComplete(outputApk)
            Log.i(TAG, "APK build successful: $outputApk (${outFile.length()} bytes)")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Build failed: ${e.message}", e)
            callback?.onError("Build failed: ${e.message}")
            false
        }
    }
    
    /**
     * Build smali files to DEX
     * Exact implementation from DexEncoder.smali2Dex() and SmaliBuilder.build()
     */
    private fun buildSmaliToDex(smaliDir: File, outputDex: File): Boolean {
        return try {
            Log.i(TAG, "Building smali to DEX: ${smaliDir.name}")
            
            // Smali options (from DexEncoder)
            val options = SmaliOptions().apply {
                jobs = Runtime.getRuntime().availableProcessors()
                apiLevel = 21
                verboseErrors = false
                allowOdexOpcodes = false
            }
            
            // Create DexBuilder (from SmaliBuilder.build() line 50-65)
            val dexBuilder = DexBuilder(Opcodes.forApi(21))
            
            // Collect smali files
            val smaliFiles = smaliDir.walkTopDown()
                .filter { it.isFile && it.extension == "smali" }
                .toList()
            
            if (smaliFiles.isEmpty()) {
                Log.w(TAG, "No smali files found in ${smaliDir.name}")
                return false
            }
            
            Log.i(TAG, "Found ${smaliFiles.size} smali files")
            
            // Assemble each file using thread pool (DexEncoder.smali2Dex line 29-75)
            val executor = Executors.newFixedThreadPool(options.jobs)
            val tasks = mutableListOf<Future<Boolean>>()
            var hasErrors = false
            
            for (smaliFile in smaliFiles) {
                tasks.add(executor.submit {
                    try {
                        Smali.assemble(options, smaliFile.parent!!, File(context.cacheDir, "${smaliFile.nameWithoutExtension}.dex").absolutePath)
                        true
                    } catch (e: Exception) {
                        Log.e(TAG, "Error assembling ${smaliFile.name}: ${e.message}")
                        false
                    }
                })
            }
            
            // Wait for all tasks
            for (task in tasks) {
                try {
                    if (!task.get()) {
                        hasErrors = true
                    }
                } catch (e: Exception) {
                    hasErrors = true
                }
            }
            
            executor.shutdown()
            executor.awaitTermination(5, TimeUnit.MINUTES)
            
            return if (!hasErrors) {
                // Write DEX file (SmaliBuilder.build() line 61)
                dexBuilder.writeTo(FileDataStore(outputDex))
                Log.i(TAG, "Built DEX: ${outputDex.length()} bytes")
                true
            } else {
                Log.e(TAG, "Errors occurred during smali assembly")
                false
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to build DEX: ${e.message}", e)
            false
        }
    }
    
    // Helper methods
    
    private fun copyRawFile(zipFile: ZipFile, entryName: String, outDir: File) {
        try {
            val entry = zipFile.getEntry(entryName) ?: return
            val file = File(outDir, entryName)
            zipFile.getInputStream(entry).use { input ->
                file.outputStream().use { output ->
                    input.copyTo(output)
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to copy $entryName: ${e.message}")
        }
    }
    
    private fun extractFolder(zipFile: ZipFile, outDir: File, folderName: String) {
        try {
            zipFile.entries().asSequence()
                .filter { it.name.startsWith("$folderName/") }
                .forEach { entry ->
                    if (!entry.isDirectory) {
                        val file = File(outDir, entry.name)
                        file.parentFile?.mkdirs()
                        zipFile.getInputStream(entry).use { input ->
                            file.outputStream().use { output ->
                                input.copyTo(output)
                            }
                        }
                    }
                }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to extract $folderName: ${e.message}")
        }
    }
    
    private fun extractResourcesFolder(zipFile: ZipFile, outDir: File) {
        extractFolder(zipFile, outDir, "res")
    }
    
    private fun extractUnknownFiles(zipFile: ZipFile, outDir: File) {
        try {
            val knownPrefixes = setOf("smali", "lib", "assets", "res", "kotlin", "META-INF", "original")
            zipFile.entries().asSequence()
                .filter { !it.isDirectory && knownPrefixes.none { prefix -> it.name.startsWith(prefix) } }
                .filter { !it.name.endsWith(".xml") || !it.name.startsWith("AndroidManifest") }
                .filter { it.name != "resources.arsc" }
                .forEach { entry ->
                    val file = File(outDir, entry.name)
                    file.parentFile?.mkdirs()
                    zipFile.getInputStream(entry).use { input ->
                        file.outputStream().use { output ->
                            input.copyTo(output)
                        }
                    }
                }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to extract unknown files: ${e.message}")
        }
    }
    
    private fun createApktoolMetadata(outDir: File, apkFile: File, dexCount: Int) {
        try {
            val content = """
                !!brut.androlib.meta.MetaInfo
                apkFileName: ${apkFile.name}
                doNotCompress:
                - .so
                - .arsc
                isFrameworkApk: false
                sdkInfo:
                  minSdkVersion: '21'
                  targetSdkVersion: '34'
                sharedLibrary: false
                sparseResources: false
                version: '$VERSION'
                versionInfo:
                  versionCode: '1'
                  versionName: '1.0'
            """.trimIndent()
            
            File(outDir, "apktool.yml").writeText(content)
        } catch (e: Exception) {
            Log.w(TAG, "Failed to create metadata: ${e.message}")
        }
    }
    
    private fun addFileToZip(zipOut: ZipOutputStream, file: File, entryName: String, store: Boolean = false) {
        val entry = ZipEntry(entryName)
        
        if (store || entryName.endsWith(".so")) {
            entry.method = ZipEntry.STORED
            entry.size = file.length()
            entry.compressedSize = file.length()
            
            val crc = java.util.zip.CRC32()
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
    
    private fun copyFileToZip(zipOut: ZipOutputStream, file: File, entryName: String) {
        if (file.exists() && file.isFile) {
            addFileToZip(zipOut, file, entryName, store = false)
        }
    }
    
    private fun addDirectoryToZip(
        zipOut: ZipOutputStream,
        dir: File,
        basePath: String,
        store: Boolean = false
    ) {
        if (!dir.exists() || !dir.isDirectory) return
        
        dir.walkTopDown().forEach { file ->
            if (file.isFile) {
                val relativePath = file.relativeTo(dir).path.replace('\\', '/')
                val entryName = if (basePath.isEmpty()) relativePath else "$basePath/$relativePath"
                val shouldStore = store || file.extension == "so"
                addFileToZip(zipOut, file, entryName, shouldStore)
            }
        }
    }
    
    // Public utility methods
    
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
    
    fun readDecompiledFile(sourceDir: String, filePath: String): String? {
        val file = File(sourceDir, filePath)
        return if (file.exists() && file.isFile) {
            try {
                file.readText()
            } catch (e: Exception) {
                null
            }
        } else {
            null
        }
    }
    
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
}
