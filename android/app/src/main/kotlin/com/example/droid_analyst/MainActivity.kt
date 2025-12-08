package com.example.droid_analyst

import android.content.pm.PackageManager
import android.content.pm.ApplicationInfo
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.app.ActivityManager
import android.content.Context
import android.net.LocalSocket
import android.net.LocalSocketAddress
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.ByteArrayOutputStream
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintWriter
import java.security.KeyStore
import java.security.KeyPairGenerator
import java.security.MessageDigest
import java.security.Signature
import java.security.cert.X509Certificate
import java.security.PrivateKey
import java.security.cert.Certificate
import java.util.jar.JarEntry
import java.util.jar.JarFile
import java.util.jar.JarOutputStream
import java.util.jar.Manifest
import java.util.jar.Attributes
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
import java.util.zip.ZipOutputStream
import java.util.Base64
import java.util.Date
import java.math.BigInteger
import javax.security.auth.x500.X500Principal
import org.bouncycastle.asn1.x509.BasicConstraints
import org.bouncycastle.asn1.x509.Extension
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter
import org.bouncycastle.cert.jcajce.JcaX509v3CertificateBuilder
import org.bouncycastle.operator.jcajce.JcaContentSignerBuilder
import org.bouncycastle.cms.CMSSignedDataGenerator
import org.bouncycastle.cms.CMSProcessableByteArray
import org.bouncycastle.cms.jcajce.JcaSignerInfoGeneratorBuilder
import org.bouncycastle.operator.jcajce.JcaDigestCalculatorProviderBuilder
import org.bouncycastle.cert.jcajce.JcaCertStore
import com.android.apksig.ApkSigner

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.droid_analyst/android"
    private val LOCAL_GADGET_CHANNEL = "com.droidanalyst/local_gadget"
    private val TERMUX_CHANNEL = "com.droidanalyst/termux"
    
    // For local socket connection to gadget
    private var gadgetSocket: LocalSocket? = null
    private var gadgetTcpSocket: java.net.Socket? = null
    private var gadgetReader: BufferedReader? = null
    private var gadgetWriter: PrintWriter? = null
    private var localGadgetChannel: MethodChannel? = null
    private var isUsingTcp = false
    
    // Termux package names
    private val TERMUX_PACKAGE = "com.termux"
    private val TERMUX_API_PACKAGE = "com.termux.api"
    private val TERMUX_RUN_COMMAND_SERVICE = "com.termux.RUN_COMMAND"
    
    // APK Tool Service
    private lateinit var apkToolService: ApkToolService
    private val APK_TOOL_CHANNEL = "com.droidanalyst/apktool"
    private var apkToolChannel: MethodChannel? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Initialize APK Tool Service
        apkToolService = ApkToolService(applicationContext)
        super.configureFlutterEngine(flutterEngine)
        
        // Main channel for package/device operations
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getInstalledPackages" -> {
                    result.success(getInstalledPackages())
                }
                "getRunningProcesses" -> {
                    result.success(getRunningProcesses())
                }
                "getDeviceInfo" -> {
                    result.success(getDeviceInfo())
                }
                "getApkPath" -> {
                    val packageName = call.argument<String>("packageName")
                    if (packageName != null) {
                        result.success(getApkPath(packageName))
                    } else {
                        result.error("INVALID_ARGUMENT", "Package name is required", null)
                    }
                }
                "signApk" -> {
                    val inputPath = call.argument<String>("inputPath")
                    val outputPath = call.argument<String>("outputPath")
                    if (inputPath != null && outputPath != null) {
                        Thread {
                            try {
                                val success = signApk(inputPath, outputPath)
                                runOnUiThread {
                                    result.success(success)
                                }
                            } catch (e: Exception) {
                                android.util.Log.e("DroidAnalyst", "Sign APK error: ${e.message}", e)
                                runOnUiThread {
                                    result.error("SIGN_ERROR", e.message, null)
                                }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "inputPath and outputPath are required", null)
                    }
                }
                "getCacheDir" -> {
                    try {
                        val cachePath = applicationContext.cacheDir.absolutePath
                        result.success(cachePath)
                    } catch (e: Exception) {
                        result.error("CACHE_ERROR", e.message, null)
                    }
                }
                "patchApkWithSmali" -> {
                    val inputApk = call.argument<String>("inputApk")
                    val outputApk = call.argument<String>("outputApk")
                    val gadgetLibPath = call.argument<String>("gadgetLibPath")
                    val targetClass = call.argument<String>("targetClass")
                    val configPath = call.argument<String>("configPath")
                    val scriptPath = call.argument<String>("scriptPath")
                    
                    if (inputApk != null && outputApk != null) {
                        Thread {
                            try {
                                val success = patchApkWithSmali(
                                    inputApk, outputApk, gadgetLibPath,
                                    targetClass, configPath, scriptPath
                                )
                                runOnUiThread { result.success(success) }
                            } catch (e: Exception) {
                                android.util.Log.e("DroidAnalyst", "Smali patch error: ${e.message}", e)
                                runOnUiThread { result.error("PATCH_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "inputApk and outputApk are required", null)
                    }
                }
                "installApk" -> {
                    val apkPath = call.argument<String>("apkPath")
                    if (apkPath != null) {
                        installApk(apkPath, result)
                    } else {
                        result.error("INVALID_ARGUMENT", "apkPath is required", null)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
        
        // Local Gadget channel for shared UID communication
        localGadgetChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, LOCAL_GADGET_CHANNEL)
        localGadgetChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "getSharedUidApps" -> {
                    result.success(getSharedUidApps())
                }
                "connectToGadget" -> {
                    val packageName = call.argument<String>("packageName")
                    val port = call.argument<Int>("port") ?: 27042
                    if (packageName != null) {
                        Thread {
                            try {
                                val success = connectToGadget(packageName, port)
                                runOnUiThread { result.success(success) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("CONNECT_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "packageName required", null)
                    }
                }
                "disconnect" -> {
                    disconnectGadget()
                    result.success(true)
                }
                "executeScript" -> {
                    val script = call.argument<String>("script")
                    if (script != null) {
                        Thread {
                            try {
                                val response = sendToGadget(script)
                                runOnUiThread { result.success(response) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("SCRIPT_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "script required", null)
                    }
                }
                "getAppsWithGadget" -> {
                    result.success(getAppsWithGadget())
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
        
        // Termux integration channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, TERMUX_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "checkTermuxInstallation" -> {
                    result.success(checkTermuxInstallation())
                }
                "runCommand" -> {
                    val command = call.argument<String>("command")
                    val background = call.argument<Boolean>("background") ?: false
                    if (command != null) {
                        val success = runTermuxCommand(command, background)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "command is required", null)
                    }
                }
                "runTaskerCommand" -> {
                    val command = call.argument<String>("command")
                    val workingDirectory = call.argument<String>("workingDirectory")
                    val sessionAction = call.argument<String>("sessionAction")
                    if (command != null) {
                        val success = runTermuxTaskerCommand(command, workingDirectory, sessionAction)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "command is required", null)
                    }
                }
                "runScript" -> {
                    val scriptPath = call.argument<String>("scriptPath")
                    val args = call.argument<List<String>>("args") ?: emptyList()
                    if (scriptPath != null) {
                        val success = runTermuxScript(scriptPath, args)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "scriptPath is required", null)
                    }
                }
                "openTermux" -> {
                    val success = openTermux()
                    result.success(success)
                }
                "createScript" -> {
                    val name = call.argument<String>("name")
                    val content = call.argument<String>("content")
                    if (name != null && content != null) {
                        val success = createTermuxScript(name, content)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "name and content are required", null)
                    }
                }
                "copyFileToTermux" -> {
                    val sourcePath = call.argument<String>("sourcePath")
                    val destName = call.argument<String>("destName")
                    if (sourcePath != null && destName != null) {
                        val success = copyFileToTermux(sourcePath, destName)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourcePath and destName are required", null)
                    }
                }
                "getTermuxHomePath" -> {
                    result.success(getTermuxHomePath())
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
        
        // APK Tool channel for decompile/build operations
        apkToolChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, APK_TOOL_CHANNEL)
        apkToolChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "decodeApk" -> {
                    val apkPath = call.argument<String>("apkPath")
                    val outputDir = call.argument<String>("outputDir")
                    val decodeSources = call.argument<Boolean>("decodeSources") ?: true
                    val decodeResources = call.argument<Boolean>("decodeResources") ?: true
                    
                    if (apkPath != null && outputDir != null) {
                        Thread {
                            try {
                                val callback = object : ApkToolService.ProgressCallback {
                                    override fun onProgress(message: String, progress: Int) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onProgress", mapOf(
                                                "message" to message,
                                                "progress" to progress
                                            ))
                                        }
                                    }
                                    override fun onError(message: String) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onError", mapOf("message" to message))
                                        }
                                    }
                                    override fun onComplete(outputPath: String) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onComplete", mapOf("outputPath" to outputPath))
                                        }
                                    }
                                }
                                
                                val success = apkToolService.decodeApk(
                                    apkPath, outputDir, decodeSources, decodeResources, callback
                                )
                                runOnUiThread { result.success(success) }
                            } catch (e: Exception) {
                                android.util.Log.e("DroidAnalyst", "Decode error: ${e.message}", e)
                                runOnUiThread { result.error("DECODE_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "apkPath and outputDir are required", null)
                    }
                }
                "buildApk" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val outputApk = call.argument<String>("outputApk")
                    val signApk = call.argument<Boolean>("signApk") ?: true
                    
                    if (sourceDir != null && outputApk != null) {
                        Thread {
                            try {
                                val callback = object : ApkToolService.ProgressCallback {
                                    override fun onProgress(message: String, progress: Int) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onProgress", mapOf(
                                                "message" to message,
                                                "progress" to progress
                                            ))
                                        }
                                    }
                                    override fun onError(message: String) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onError", mapOf("message" to message))
                                        }
                                    }
                                    override fun onComplete(outputPath: String) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onComplete", mapOf("outputPath" to outputPath))
                                        }
                                    }
                                }
                                
                                val success = apkToolService.buildApk(
                                    sourceDir, outputApk, signApk, callback
                                )
                                runOnUiThread { result.success(success) }
                            } catch (e: Exception) {
                                android.util.Log.e("DroidAnalyst", "Build error: ${e.message}", e)
                                runOnUiThread { result.error("BUILD_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir and outputApk are required", null)
                    }
                }
                "listDecompiledFiles" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    if (sourceDir != null) {
                        Thread {
                            try {
                                val files = apkToolService.listDecompiledFiles(sourceDir)
                                val jsonArray = org.json.JSONArray()
                                files.forEach { file ->
                                    val obj = org.json.JSONObject()
                                    file.forEach { (k, v) -> obj.put(k, v) }
                                    jsonArray.put(obj)
                                }
                                runOnUiThread { result.success(jsonArray.toString()) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("LIST_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir is required", null)
                    }
                }
                "readDecompiledFile" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val filePath = call.argument<String>("filePath")
                    if (sourceDir != null && filePath != null) {
                        val content = apkToolService.readDecompiledFile(sourceDir, filePath)
                        result.success(content)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir and filePath are required", null)
                    }
                }
                "writeDecompiledFile" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val filePath = call.argument<String>("filePath")
                    val content = call.argument<String>("content")
                    if (sourceDir != null && filePath != null && content != null) {
                        val success = apkToolService.writeDecompiledFile(sourceDir, filePath, content)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir, filePath and content are required", null)
                    }
                }
                "signApk" -> {
                    val inputApk = call.argument<String>("inputApk")
                    val outputApk = call.argument<String>("outputApk")
                    val minSdkVersion = call.argument<Int>("minSdkVersion") ?: 21
                    val enableV1 = call.argument<Boolean>("enableV1") ?: true
                    val enableV2 = call.argument<Boolean>("enableV2") ?: true
                    val enableV3 = call.argument<Boolean>("enableV3") ?: false
                    
                    if (inputApk != null && outputApk != null) {
                        Thread {
                            try {
                                val callback = object : ApkToolService.ProgressCallback {
                                    override fun onProgress(message: String, progress: Int) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onProgress", mapOf(
                                                "message" to message,
                                                "progress" to progress
                                            ))
                                        }
                                    }
                                    override fun onError(message: String) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onError", mapOf("message" to message))
                                        }
                                    }
                                    override fun onComplete(outputPath: String) {
                                        runOnUiThread {
                                            apkToolChannel?.invokeMethod("onComplete", mapOf("outputPath" to outputPath))
                                        }
                                    }
                                }
                                
                                val success = apkToolService.signApk(
                                    inputApk, outputApk, minSdkVersion, enableV1, enableV2, enableV3, callback
                                )
                                runOnUiThread { result.success(success) }
                            } catch (e: Exception) {
                                android.util.Log.e("DroidAnalyst", "Sign error: ${e.message}", e)
                                runOnUiThread { result.error("SIGN_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "inputApk and outputApk are required", null)
                    }
                }
                "searchInFiles" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val query = call.argument<String>("query")
                    val useRegex = call.argument<Boolean>("useRegex") ?: false
                    val ignoreCase = call.argument<Boolean>("ignoreCase") ?: true
                    val fileExtensions = call.argument<List<String>>("fileExtensions") ?: listOf("smali", "xml", "json", "txt")
                    
                    if (sourceDir != null && query != null) {
                        Thread {
                            try {
                                val results = apkToolService.searchInFiles(sourceDir, query, useRegex, ignoreCase, fileExtensions)
                                val jsonArray = org.json.JSONArray()
                                results.forEach { r ->
                                    val obj = org.json.JSONObject()
                                    r.forEach { (k, v) -> obj.put(k, v) }
                                    jsonArray.put(obj)
                                }
                                runOnUiThread { result.success(jsonArray.toString()) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("SEARCH_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir and query are required", null)
                    }
                }
                "replaceInFile" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val filePath = call.argument<String>("filePath")
                    val search = call.argument<String>("search")
                    val replace = call.argument<String>("replace")
                    val useRegex = call.argument<Boolean>("useRegex") ?: false
                    val ignoreCase = call.argument<Boolean>("ignoreCase") ?: true
                    
                    if (sourceDir != null && filePath != null && search != null && replace != null) {
                        val count = apkToolService.replaceInFile(sourceDir, filePath, search, replace, useRegex, ignoreCase)
                        result.success(count)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir, filePath, search and replace are required", null)
                    }
                }
                "getStringResources" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val language = call.argument<String>("language") ?: "default"
                    
                    if (sourceDir != null) {
                        Thread {
                            try {
                                val strings = apkToolService.getStringResources(sourceDir, language)
                                val jsonObj = org.json.JSONObject()
                                strings.forEach { (k, v) -> jsonObj.put(k, v) }
                                runOnUiThread { result.success(jsonObj.toString()) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("STRINGS_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir is required", null)
                    }
                }
                "updateStringResource" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val stringName = call.argument<String>("stringName")
                    val newValue = call.argument<String>("newValue")
                    val language = call.argument<String>("language") ?: "default"
                    
                    if (sourceDir != null && stringName != null && newValue != null) {
                        val success = apkToolService.updateStringResource(sourceDir, stringName, newValue, language)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir, stringName and newValue are required", null)
                    }
                }
                "getAvailableLanguages" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    
                    if (sourceDir != null) {
                        val languages = apkToolService.getAvailableLanguages(sourceDir)
                        result.success(languages)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir is required", null)
                    }
                }
                "getColorResources" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    
                    if (sourceDir != null) {
                        Thread {
                            try {
                                val colors = apkToolService.getColorResources(sourceDir)
                                val jsonObj = org.json.JSONObject()
                                colors.forEach { (k, v) -> jsonObj.put(k, v) }
                                runOnUiThread { result.success(jsonObj.toString()) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("COLORS_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir is required", null)
                    }
                }
                "updateColorResource" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val colorName = call.argument<String>("colorName")
                    val newValue = call.argument<String>("newValue")
                    
                    if (sourceDir != null && colorName != null && newValue != null) {
                        val success = apkToolService.updateColorResource(sourceDir, colorName, newValue)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir, colorName and newValue are required", null)
                    }
                }
                "getManifestInfo" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    
                    if (sourceDir != null) {
                        Thread {
                            try {
                                val info = apkToolService.getManifestInfo(sourceDir)
                                val jsonObj = org.json.JSONObject()
                                info.forEach { (k, v) -> 
                                    if (v is List<*>) {
                                        jsonObj.put(k, org.json.JSONArray(v))
                                    } else {
                                        jsonObj.put(k, v)
                                    }
                                }
                                runOnUiThread { result.success(jsonObj.toString()) }
                            } catch (e: Exception) {
                                runOnUiThread { result.error("MANIFEST_ERROR", e.message, null) }
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir is required", null)
                    }
                }
                "updateManifestAttribute" -> {
                    val sourceDir = call.argument<String>("sourceDir")
                    val attribute = call.argument<String>("attribute")
                    val newValue = call.argument<String>("newValue")
                    
                    if (sourceDir != null && attribute != null && newValue != null) {
                        val success = apkToolService.updateManifestAttribute(sourceDir, attribute, newValue)
                        result.success(success)
                    } else {
                        result.error("INVALID_ARGUMENT", "sourceDir, attribute and newValue are required", null)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun getInstalledPackages(): String {
        val pm = packageManager
        val packages = pm.getInstalledApplications(PackageManager.GET_META_DATA)
        val jsonArray = JSONArray()
        
        android.util.Log.i("DroidAnalyst", "Getting installed packages, found: ${packages.size}")
        
        for (app in packages) {
            try {
                val json = JSONObject()
                json.put("packageName", app.packageName)
                json.put("appName", pm.getApplicationLabel(app).toString())
                json.put("sourceDir", app.sourceDir)
                json.put("isSystem", (app.flags and ApplicationInfo.FLAG_SYSTEM) != 0)
                json.put("enabled", app.enabled)
                
                val pkgInfo = pm.getPackageInfo(app.packageName, 0)
                json.put("versionName", pkgInfo.versionName ?: "1.0")
                json.put("versionCode", if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                    pkgInfo.longVersionCode
                } else {
                    @Suppress("DEPRECATION")
                    pkgInfo.versionCode.toLong()
                })
                json.put("firstInstallTime", pkgInfo.firstInstallTime)
                json.put("lastUpdateTime", pkgInfo.lastUpdateTime)
                
                // Get permissions
                val permissions = JSONArray()
                try {
                    val pkgInfoPerms = pm.getPackageInfo(app.packageName, PackageManager.GET_PERMISSIONS)
                    pkgInfoPerms.requestedPermissions?.forEach { perm ->
                        permissions.put(perm)
                    }
                } catch (e: Exception) {}
                json.put("permissions", permissions)
                
                jsonArray.put(json)
            } catch (e: Exception) {
                // Skip problematic packages
                android.util.Log.e("DroidAnalyst", "Error processing package ${app.packageName}: ${e.message}")
            }
        }
        
        android.util.Log.i("DroidAnalyst", "Returning ${jsonArray.length()} packages")
        return jsonArray.toString()
    }

    private fun getRunningProcesses(): String {
        val activityManager = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val jsonArray = JSONArray()
        
        // Note: On newer Android versions, this only returns processes for our own app
        // unless we have special permissions
        val runningApps = activityManager.runningAppProcesses ?: return jsonArray.toString()
        
        for (process in runningApps) {
            val json = JSONObject()
            json.put("pid", process.pid)
            json.put("processName", process.processName)
            json.put("importance", process.importance)
            json.put("uid", process.uid)
            jsonArray.put(json)
        }
        
        return jsonArray.toString()
    }

    private fun getDeviceInfo(): String {
        val json = JSONObject()
        json.put("model", Build.MODEL)
        json.put("manufacturer", Build.MANUFACTURER)
        json.put("brand", Build.BRAND)
        json.put("device", Build.DEVICE)
        json.put("androidVersion", Build.VERSION.RELEASE)
        json.put("sdkVersion", Build.VERSION.SDK_INT)
        json.put("board", Build.BOARD)
        json.put("hardware", Build.HARDWARE)
        json.put("product", Build.PRODUCT)
        json.put("fingerprint", Build.FINGERPRINT)
        json.put("isEmulator", isEmulator())
        return json.toString()
    }

    private fun isEmulator(): Boolean {
        return (Build.FINGERPRINT.startsWith("google/sdk_gphone") ||
                Build.FINGERPRINT.startsWith("generic") ||
                Build.FINGERPRINT.startsWith("unknown") ||
                Build.MODEL.contains("google_sdk") ||
                Build.MODEL.contains("Emulator") ||
                Build.MODEL.contains("Android SDK built for x86") ||
                Build.MANUFACTURER.contains("Genymotion") ||
                Build.HARDWARE.contains("goldfish") ||
                Build.HARDWARE.contains("ranchu") ||
                Build.PRODUCT.contains("sdk_gphone") ||
                Build.PRODUCT.contains("sdk_google") ||
                Build.PRODUCT.contains("sdk") ||
                Build.PRODUCT.contains("emulator"))
    }

    private fun getApkPath(packageName: String): String? {
        return try {
            val appInfo = packageManager.getApplicationInfo(packageName, 0)
            appInfo.sourceDir
        } catch (e: PackageManager.NameNotFoundException) {
            null
        }
    }

    /**
     * Sign an APK with v1, v2, v3 signatures using Android's apksig library
     * This is the official way to sign APKs with all signature schemes
     */
    private fun signApk(inputPath: String, outputPath: String): Boolean {
        android.util.Log.i("DroidAnalyst", "Starting APK signing with v1+v2+v3: $inputPath -> $outputPath")
        
        try {
            // Generate key pair and certificate
            val keyPairGenerator = KeyPairGenerator.getInstance("RSA")
            keyPairGenerator.initialize(2048)
            val keyPair = keyPairGenerator.generateKeyPair()
            
            // Create self-signed certificate using BouncyCastle
            val certificate = createSelfSignedCertificate(keyPair)
            android.util.Log.i("DroidAnalyst", "Generated certificate")
            
            val inputFile = File(inputPath)
            val outputFile = File(outputPath)
            outputFile.parentFile?.mkdirs()
            
            // Create signer config
            val signerConfig = ApkSigner.SignerConfig.Builder(
                "CERT",
                keyPair.private,
                listOf(certificate)
            ).build()
            
            // Build and configure ApkSigner
            val apkSigner = ApkSigner.Builder(listOf(signerConfig))
                .setInputApk(inputFile)
                .setOutputApk(outputFile)
                .setV1SigningEnabled(true)
                .setV2SigningEnabled(true)
                .setV3SigningEnabled(true)
                .setAlignFileSize(true)
                .build()
            
            // Sign the APK
            apkSigner.sign()
            
            android.util.Log.i("DroidAnalyst", "APK signed successfully with v1+v2+v3: ${outputFile.length()} bytes")
            return true
            
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Error signing APK: ${e.message}", e)
            throw e
        }
    }

    private fun createSelfSignedCertificate(keyPair: java.security.KeyPair): X509Certificate {
        val now = Date()
        val notBefore = Date(now.time - 24 * 60 * 60 * 1000) // 1 day ago
        val notAfter = Date(now.time + 365L * 24 * 60 * 60 * 1000 * 30) // 30 years
        
        val issuer = X500Principal("CN=DroidAnalyst, O=DroidAnalyst, C=US")
        val serialNumber = BigInteger.valueOf(System.currentTimeMillis())
        
        val certBuilder = JcaX509v3CertificateBuilder(
            issuer,
            serialNumber,
            notBefore,
            notAfter,
            issuer,
            keyPair.public
        )
        
        certBuilder.addExtension(
            Extension.basicConstraints,
            true,
            BasicConstraints(true)
        )
        
        val signer = JcaContentSignerBuilder("SHA256withRSA").build(keyPair.private)
        return JcaX509CertificateConverter().getCertificate(certBuilder.build(signer))
    }

    private fun createPKCS7Signature(data: ByteArray, privateKey: PrivateKey, certificate: X509Certificate): ByteArray {
        val generator = CMSSignedDataGenerator()
        
        val signerBuilder = JcaSignerInfoGeneratorBuilder(
            JcaDigestCalculatorProviderBuilder().build()
        )
        
        val contentSigner = JcaContentSignerBuilder("SHA256withRSA").build(privateKey)
        generator.addSignerInfoGenerator(signerBuilder.build(contentSigner, certificate))
        
        val certs = listOf<Certificate>(certificate)
        generator.addCertificates(JcaCertStore(certs))
        
        val content = CMSProcessableByteArray(data)
        val signedData = generator.generate(content, false) // false = detached signature
        
        return signedData.encoded
    }

    // ============ Local Gadget / Shared UID Methods ============
    
    /**
     * Get list of apps that might have Frida Gadget injected
     * These are apps we can potentially connect to via local socket
     */
    private fun getSharedUidApps(): List<Map<String, Any?>> {
        val result = mutableListOf<Map<String, Any?>>()
        val pm = packageManager
        val packages = pm.getInstalledApplications(PackageManager.GET_META_DATA)
        
        for (app in packages) {
            // Skip system apps
            if ((app.flags and ApplicationInfo.FLAG_SYSTEM) != 0) continue
            
            try {
                // Check if app has our expected gadget socket name in its data
                val hasGadget = checkAppHasGadget(app.packageName)
                val gadgetConfig = if (hasGadget) readGadgetConfig(app.sourceDir) else null
                val gadgetPort = (gadgetConfig?.get("port") as? Int) ?: 27042
                
                result.add(mapOf(
                    "packageName" to app.packageName,
                    "appName" to pm.getApplicationLabel(app).toString(),
                    "hasGadget" to hasGadget,
                    "sourceDir" to app.sourceDir,
                    "gadgetConfig" to gadgetConfig,
                    "gadgetPort" to gadgetPort
                ))
            } catch (e: Exception) {
                android.util.Log.e("DroidAnalyst", "Error checking app ${app.packageName}: ${e.message}")
            }
        }
        
        return result
    }
    
    /**
     * Check if an app has Frida Gadget by looking for the library
     */
    private fun checkAppHasGadget(packageName: String): Boolean {
        try {
            val appInfo = packageManager.getApplicationInfo(packageName, 0)
            val apkPath = appInfo.sourceDir
            
            // Check if APK contains frida-gadget library
            val zipFile = ZipFile(apkPath)
            val hasGadget = zipFile.entries().asSequence().any { entry ->
                entry.name.contains("libfrida-gadget.so")
            }
            zipFile.close()
            return hasGadget
        } catch (e: Exception) {
            return false
        }
    }

    private fun readGadgetConfig(apkPath: String): Map<String, Any?>? {
        return try {
            ZipFile(apkPath).use { zip ->
                val entries = zip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    if (entry.name.endsWith("libfrida-gadget.config.so")) {
                        val json = zip.getInputStream(entry).bufferedReader().use { it.readText() }
                        val root = JSONObject(json)
                        val interaction = root.optJSONObject("interaction")
                        val port = interaction?.optInt("port")
                        val address = interaction?.optString("address")
                        val type = interaction?.optString("type")
                        val onLoad = interaction?.optString("on_load")
                        return mapOf(
                            "port" to port,
                            "address" to address,
                            "type" to type,
                            "onLoad" to onLoad
                        )
                    }
                }
            }
            null
        } catch (e: Exception) {
            android.util.Log.d("DroidAnalyst", "Failed to parse gadget config: ${e.message}")
            null
        }
    }
    
    /**
     * Get list of apps that have Frida Gadget embedded
     */
    private fun getAppsWithGadget(): List<Map<String, Any?>> {
        return getSharedUidApps().filter { it["hasGadget"] == true }
    }
    
    /**
     * Connect to Frida Gadget running in another app via local abstract socket
     * Frida Gadget listens on: localabstract:frida:<package_name>
     */
    private fun connectToGadget(packageName: String, port: Int): Boolean {
        try {
            disconnectGadget() // Clean up any existing connection
            
            // Try different socket names that Frida Gadget might use
            val socketNames = listOf(
                "frida:$packageName",           // Standard Frida format
                "frida",                         // Default Frida socket
                "droidanalyst_frida",           // Our custom socket name
                "frida-gadget-$packageName"     // Alternative format
            )
            
            for (socketName in socketNames) {
                try {
                    android.util.Log.i("DroidAnalyst", "Trying to connect to socket: $socketName")
                    
                    val socket = LocalSocket()
                    val address = LocalSocketAddress(socketName, LocalSocketAddress.Namespace.ABSTRACT)
                    socket.connect(address)
                    socket.soTimeout = 5000 // 5 second timeout
                    
                    gadgetSocket = socket
                    gadgetReader = BufferedReader(InputStreamReader(socket.inputStream))
                    gadgetWriter = PrintWriter(socket.outputStream, true)
                    
                    android.util.Log.i("DroidAnalyst", "Connected to gadget via socket: $socketName")
                    
                    // Start listening for messages in background
                    startGadgetListener()
                    
                    return true
                } catch (e: Exception) {
                    android.util.Log.d("DroidAnalyst", "Socket $socketName not available: ${e.message}")
                    continue
                }
            }
            
            // Also try TCP connection as fallback (for listen mode gadget)
            return connectToGadgetTcp(packageName, port)
            
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to connect to gadget: ${e.message}")
            return false
        }
    }
    
    /**
     * Try connecting via TCP (for gadgets in listen mode)
     */
    private fun connectToGadgetTcp(packageName: String, port: Int): Boolean {
        try {
            android.util.Log.i("DroidAnalyst", "Trying TCP connection to localhost:$port for $packageName")
            
            val socket = java.net.Socket()
            socket.connect(java.net.InetSocketAddress("127.0.0.1", port), 5000)
            socket.soTimeout = 5000
            
            gadgetTcpSocket = socket
            gadgetReader = BufferedReader(InputStreamReader(socket.getInputStream()))
            gadgetWriter = PrintWriter(socket.getOutputStream(), true)
            isUsingTcp = true
            
            android.util.Log.i("DroidAnalyst", "TCP connection successful to gadget")
            
            // Start listening for messages in background
            startTcpGadgetListener()
            
            return true
        } catch (e: Exception) {
            android.util.Log.d("DroidAnalyst", "TCP connection failed: ${e.message}")
            return false
        }
    }
    
    /**
     * Start background thread to listen for TCP gadget messages
     */
    private fun startTcpGadgetListener() {
        Thread {
            try {
                val reader = gadgetReader
                while (gadgetTcpSocket?.isConnected == true && reader != null) {
                    try {
                        if (reader.ready()) {
                            val line = reader.readLine() ?: break
                            runOnUiThread {
                                localGadgetChannel?.invokeMethod("onLog", mapOf(
                                    "message" to line,
                                    "level" to "info"
                                ))
                            }
                        } else {
                            Thread.sleep(100)
                        }
                    } catch (e: java.net.SocketTimeoutException) {
                        // Timeout is ok, just continue
                        continue
                    }
                }
            } catch (e: Exception) {
                android.util.Log.d("DroidAnalyst", "TCP gadget listener ended: ${e.message}")
            }
            
            runOnUiThread {
                localGadgetChannel?.invokeMethod("onDisconnected", null)
            }
        }.start()
    }
    
    /**
     * Start background thread to listen for gadget messages
     */
    private fun startGadgetListener() {
        Thread {
            try {
                while (gadgetSocket?.isConnected == true) {
                    val line = gadgetReader?.readLine() ?: break
                    
                    runOnUiThread {
                        localGadgetChannel?.invokeMethod("onLog", mapOf(
                            "message" to line,
                            "level" to "info"
                        ))
                    }
                }
            } catch (e: Exception) {
                android.util.Log.d("DroidAnalyst", "Gadget listener ended: ${e.message}")
            }
            
            runOnUiThread {
                localGadgetChannel?.invokeMethod("onDisconnected", null)
            }
        }.start()
    }
    
    /**
     * Send script/command to connected gadget
     */
    private fun sendToGadget(script: String): String {
        if (gadgetWriter == null) {
            throw Exception("Not connected to gadget")
        }
        
        try {
            // Send the script
            gadgetWriter?.println(script)
            gadgetWriter?.flush()
            
            // Try to read response (with timeout)
            val response = StringBuilder()
            val startTime = System.currentTimeMillis()
            
            while (System.currentTimeMillis() - startTime < 3000) { // 3 second timeout
                if (gadgetReader?.ready() == true) {
                    val line = gadgetReader?.readLine() ?: break
                    response.appendLine(line)
                } else {
                    Thread.sleep(100)
                }
            }
            
            return if (response.isNotEmpty()) response.toString() else "Script sent (no immediate response)"
            
        } catch (e: Exception) {
            throw Exception("Failed to send to gadget: ${e.message}")
        }
    }
    
    /**
     * Disconnect from gadget
     */
    private fun disconnectGadget() {
        try {
            gadgetWriter?.close()
            gadgetReader?.close()
            gadgetSocket?.close()
            gadgetTcpSocket?.close()
        } catch (e: Exception) {
            // Ignore
        }
        gadgetWriter = null
        gadgetReader = null
        gadgetSocket = null
        gadgetTcpSocket = null
        isUsingTcp = false
    }
    
    // ============ Termux Integration Methods ============
    
    /**
     * Check if Termux and Termux:API are installed
     */
    private fun checkTermuxInstallation(): Map<String, Boolean> {
        val pm = packageManager
        var termuxInstalled = false
        var termuxApiInstalled = false
        
        try {
            pm.getPackageInfo(TERMUX_PACKAGE, 0)
            termuxInstalled = true
        } catch (e: PackageManager.NameNotFoundException) {
            // Termux not installed
        }
        
        try {
            pm.getPackageInfo(TERMUX_API_PACKAGE, 0)
            termuxApiInstalled = true
        } catch (e: PackageManager.NameNotFoundException) {
            // Termux:API not installed
        }
        
        return mapOf(
            "termux" to termuxInstalled,
            "termux_api" to termuxApiInstalled
        )
    }
    
    /**
     * Run a command in Termux using RUN_COMMAND intent
     */
    private fun runTermuxCommand(command: String, background: Boolean): Boolean {
        return try {
            val intent = Intent()
            intent.setClassName(TERMUX_PACKAGE, "com.termux.app.RunCommandService")
            intent.action = TERMUX_RUN_COMMAND_SERVICE
            intent.putExtra("com.termux.RUN_COMMAND_PATH", "/data/data/com.termux/files/usr/bin/bash")
            intent.putExtra("com.termux.RUN_COMMAND_ARGUMENTS", arrayOf("-c", command))
            intent.putExtra("com.termux.RUN_COMMAND_WORKDIR", "/data/data/com.termux/files/home")
            intent.putExtra("com.termux.RUN_COMMAND_BACKGROUND", background)
            intent.putExtra("com.termux.RUN_COMMAND_SESSION_ACTION", "0") // 0=new session, 1=current session
            
            startService(intent)
            android.util.Log.i("DroidAnalyst", "Termux command sent: $command")
            true
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to run Termux command: ${e.message}", e)
            false
        }
    }
    
    /**
     * Run a command using Termux:Tasker style intent
     */
    private fun runTermuxTaskerCommand(command: String, workingDirectory: String?, sessionAction: String?): Boolean {
        return try {
            val intent = Intent()
            intent.setClassName(TERMUX_PACKAGE, "com.termux.app.RunCommandService")
            intent.action = TERMUX_RUN_COMMAND_SERVICE
            intent.putExtra("com.termux.RUN_COMMAND_PATH", "/data/data/com.termux/files/usr/bin/bash")
            intent.putExtra("com.termux.RUN_COMMAND_ARGUMENTS", arrayOf("-c", command))
            intent.putExtra("com.termux.RUN_COMMAND_WORKDIR", workingDirectory ?: "/data/data/com.termux/files/home")
            intent.putExtra("com.termux.RUN_COMMAND_BACKGROUND", false)
            intent.putExtra("com.termux.RUN_COMMAND_SESSION_ACTION", sessionAction ?: "0")
            
            startService(intent)
            android.util.Log.i("DroidAnalyst", "Termux Tasker command sent: $command")
            true
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to run Termux Tasker command: ${e.message}", e)
            false
        }
    }
    
    /**
     * Run a script file in Termux
     */
    private fun runTermuxScript(scriptPath: String, args: List<String>): Boolean {
        return try {
            val intent = Intent()
            intent.setClassName(TERMUX_PACKAGE, "com.termux.app.RunCommandService")
            intent.action = TERMUX_RUN_COMMAND_SERVICE
            intent.putExtra("com.termux.RUN_COMMAND_PATH", scriptPath)
            intent.putExtra("com.termux.RUN_COMMAND_ARGUMENTS", args.toTypedArray())
            intent.putExtra("com.termux.RUN_COMMAND_WORKDIR", "/data/data/com.termux/files/home")
            intent.putExtra("com.termux.RUN_COMMAND_BACKGROUND", false)
            
            startService(intent)
            android.util.Log.i("DroidAnalyst", "Termux script started: $scriptPath")
            true
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to run Termux script: ${e.message}", e)
            false
        }
    }
    
    /**
     * Open Termux app
     */
    private fun openTermux(): Boolean {
        return try {
            val intent = packageManager.getLaunchIntentForPackage(TERMUX_PACKAGE)
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                startActivity(intent)
                true
            } else {
                android.util.Log.e("DroidAnalyst", "Termux launch intent not found")
                false
            }
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to open Termux: ${e.message}", e)
            false
        }
    }
    
    /**
     * Create a script file in Termux home directory
     * This uses a workaround by creating the file via a command
     */
    private fun createTermuxScript(name: String, content: String): Boolean {
        return try {
            // Escape content for shell
            val escapedContent = content
                .replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("\$", "\\\$")
                .replace("`", "\\`")
            
            // Create script via echo command
            val command = """
                cat > '$name' << 'DROIDANALYST_EOF'
$content
DROIDANALYST_EOF
                chmod +x '$name'
            """.trimIndent()
            
            runTermuxCommand(command, true)
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to create Termux script: ${e.message}", e)
            false
        }
    }
    
    /**
     * Copy a file to Termux home directory
     * Uses cp command through Termux
     */
    private fun copyFileToTermux(sourcePath: String, destName: String): Boolean {
        return try {
            val command = "cp '$sourcePath' '/data/data/com.termux/files/home/$destName'"
            runTermuxCommand(command, true)
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to copy file to Termux: ${e.message}", e)
            false
        }
    }
    
    /**
     * Get Termux home path
     */
    private fun getTermuxHomePath(): String {
        return "/data/data/com.termux/files/home"
    }
    
    /**
     * Patch APK using smali injection to load Frida Gadget
     * This is the most reliable method for non-rooted devices
     */
    private fun patchApkWithSmali(
        inputApk: String,
        outputApk: String,
        gadgetLibPath: String?,
        targetClass: String?,
        configPath: String?,
        scriptPath: String?
    ): Boolean {
        android.util.Log.i("DroidAnalyst", "Starting smali patch: $inputApk -> $outputApk")
        
        try {
            val tempDir = File(cacheDir, "smali_patch_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            // Step 1: Extract DEX files from APK
            android.util.Log.i("DroidAnalyst", "Extracting DEX files...")
            val inputZip = ZipFile(inputApk)
            val dexFiles = mutableListOf<Pair<String, File>>()
            
            inputZip.entries().asSequence().forEach { entry ->
                if (entry.name.endsWith(".dex")) {
                    val dexFile = File(tempDir, entry.name)
                    inputZip.getInputStream(entry).use { input ->
                        dexFile.outputStream().use { output ->
                            input.copyTo(output)
                        }
                    }
                    dexFiles.add(entry.name to dexFile)
                    android.util.Log.i("DroidAnalyst", "Extracted ${entry.name}")
                }
            }
            
            if (dexFiles.isEmpty()) {
                android.util.Log.e("DroidAnalyst", "No DEX files found in APK")
                return false
            }
            
            // Step 2: Find and patch the Application or main class
            android.util.Log.i("DroidAnalyst", "Patching DEX to load frida-gadget...")
            var patched = false
            
            for ((dexName, dexFile) in dexFiles) {
                if (patched) break
                
                try {
                    // Use dexlib2 to read and modify the DEX
                    val dexBackedDexFile = com.android.tools.smali.dexlib2.DexFileFactory.loadDexFile(
                        dexFile,
                        com.android.tools.smali.dexlib2.Opcodes.forApi(21)
                    )
                    
                    // Find a class to patch - prefer Application class
                    for (classDef in dexBackedDexFile.classes) {
                        val className = classDef.type
                        
                        // Look for Application subclass or specified target
                        val isTarget = if (targetClass != null) {
                            className.contains(targetClass.replace('.', '/'))
                        } else {
                            classDef.superclass == "Landroid/app/Application;" ||
                            className.contains("Application") && 
                            classDef.superclass?.contains("Application") == true
                        }
                        
                        if (isTarget) {
                            android.util.Log.i("DroidAnalyst", "Found target class: $className")
                            
                            // Patch this class's <clinit> or onCreate to load gadget
                            val patchedDex = patchClassToLoadGadget(dexBackedDexFile, className, tempDir)
                            if (patchedDex != null) {
                                // Replace original DEX with patched one
                                patchedDex.copyTo(dexFile, overwrite = true)
                                patched = true
                                android.util.Log.i("DroidAnalyst", "Successfully patched $className in $dexName")
                                break
                            }
                        }
                    }
                } catch (e: Exception) {
                    android.util.Log.w("DroidAnalyst", "Failed to patch $dexName: ${e.message}")
                }
            }
            
            if (!patched) {
                android.util.Log.w("DroidAnalyst", "Could not find class to patch, gadget may not load")
            }
            
            // Step 3: Rebuild APK with patched DEX
            android.util.Log.i("DroidAnalyst", "Rebuilding APK...")
            val unsignedApk = File(tempDir, "unsigned.apk")
            
            ZipOutputStream(FileOutputStream(unsignedApk)).use { zipOut ->
                // Copy all entries from original APK
                inputZip.entries().asSequence().forEach { entry ->
                    // Skip META-INF signature files
                    if (entry.name.startsWith("META-INF/") && 
                        (entry.name.endsWith(".SF") || entry.name.endsWith(".RSA") || 
                         entry.name.endsWith(".DSA") || entry.name.endsWith(".MF"))) {
                        return@forEach
                    }
                    
                    // Use patched DEX if available
                    val dexPair = dexFiles.find { it.first == entry.name }
                    if (dexPair != null) {
                        val newEntry = ZipEntry(entry.name)
                        zipOut.putNextEntry(newEntry)
                        dexPair.second.inputStream().use { it.copyTo(zipOut) }
                        zipOut.closeEntry()
                    } else {
                        val newEntry = ZipEntry(entry.name)
                        // Preserve compression for .so files (STORED)
                        if (entry.name.endsWith(".so")) {
                            newEntry.method = ZipEntry.STORED
                            newEntry.size = entry.size
                            newEntry.compressedSize = entry.size
                            newEntry.crc = entry.crc
                        }
                        zipOut.putNextEntry(newEntry)
                        inputZip.getInputStream(entry).use { it.copyTo(zipOut) }
                        zipOut.closeEntry()
                    }
                }
            }
            
            inputZip.close()
            
            // Step 4: Sign the APK
            android.util.Log.i("DroidAnalyst", "Signing APK...")
            val signResult = signApk(unsignedApk.absolutePath, outputApk)
            
            // Cleanup
            tempDir.deleteRecursively()
            
            android.util.Log.i("DroidAnalyst", "Smali patch complete: $signResult")
            return signResult
            
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Smali patch failed: ${e.message}", e)
            return false
        }
    }
    
    /**
     * Patch a class to load frida-gadget in its static initializer
     * Uses dexlib2 to rewrite the DEX file with the injected code
     */
    private fun patchClassToLoadGadget(
        dexFile: com.android.tools.smali.dexlib2.iface.DexFile,
        targetClassName: String,
        tempDir: File
    ): File? {
        try {
            android.util.Log.i("DroidAnalyst", "Patching class: $targetClassName")
            
            // Create a mutable copy of the DEX file
            val rewriter = object : com.android.tools.smali.dexlib2.rewriter.DexRewriter(
                object : com.android.tools.smali.dexlib2.rewriter.RewriterModule() {
                    override fun getClassDefRewriter(rewriters: com.android.tools.smali.dexlib2.rewriter.Rewriters): com.android.tools.smali.dexlib2.rewriter.Rewriter<com.android.tools.smali.dexlib2.iface.ClassDef> {
                        return com.android.tools.smali.dexlib2.rewriter.Rewriter { classDef ->
                            if (classDef.type == targetClassName) {
                                // Create modified class with injected static initializer
                                createPatchedClassDef(classDef, rewriters)
                            } else {
                                // Use default rewriter for other classes
                                super.getClassDefRewriter(rewriters).rewrite(classDef)
                            }
                        }
                    }
                }
            ) {}
            
            val rewrittenDex = rewriter.dexFileRewriter.rewrite(dexFile)
            
            // Write the modified DEX
            val outputFile = File(tempDir, "patched.dex")
            com.android.tools.smali.dexlib2.writer.pool.DexPool.writeTo(
                com.android.tools.smali.dexlib2.writer.io.FileDataStore(outputFile),
                rewrittenDex
            )
            
            android.util.Log.i("DroidAnalyst", "Patched DEX written to: ${outputFile.absolutePath}")
            return outputFile
            
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Failed to patch class: ${e.message}", e)
            e.printStackTrace()
            return null
        }
    }
    
    /**
     * Create a patched ClassDef that loads frida-gadget in <clinit>
     */
    private fun createPatchedClassDef(
        original: com.android.tools.smali.dexlib2.iface.ClassDef,
        rewriters: com.android.tools.smali.dexlib2.rewriter.Rewriters
    ): com.android.tools.smali.dexlib2.iface.ClassDef {
        android.util.Log.i("DroidAnalyst", "Creating patched class def for: ${original.type}")
        
        // Find existing <clinit> method or prepare to add one
        val methods = original.methods.toMutableList()
        var clinitFound = false
        
        val patchedMethods = methods.map { method ->
            if (method.name == "<clinit>") {
                clinitFound = true
                createPatchedClinit(method)
            } else {
                method
            }
        }.toMutableList()
        
        // If no <clinit> exists, create one
        if (!clinitFound) {
            android.util.Log.i("DroidAnalyst", "No <clinit> found, creating new one")
            patchedMethods.add(createNewClinit(original.type))
        }
        
        return com.android.tools.smali.dexlib2.immutable.ImmutableClassDef(
            original.type,
            original.accessFlags,
            original.superclass,
            original.interfaces,
            original.sourceFile,
            original.annotations,
            original.fields,
            patchedMethods
        )
    }
    
    /**
     * Create a patched <clinit> that first loads frida-gadget
     */
    private fun createPatchedClinit(
        original: com.android.tools.smali.dexlib2.iface.Method
    ): com.android.tools.smali.dexlib2.iface.Method {
        android.util.Log.i("DroidAnalyst", "Patching existing <clinit>")
        
        val originalImpl = original.implementation
        if (originalImpl == null) {
            return original
        }
        
        // Create load gadget instructions to prepend
        val loadGadgetInstructions = createLoadGadgetInstructions()
        
        // Combine: load gadget first, then original instructions
        val newInstructions = mutableListOf<com.android.tools.smali.dexlib2.iface.instruction.Instruction>()
        newInstructions.addAll(loadGadgetInstructions)
        newInstructions.addAll(originalImpl.instructions)
        
        val newImpl = com.android.tools.smali.dexlib2.immutable.ImmutableMethodImplementation(
            Math.max(originalImpl.registerCount, 1),
            newInstructions,
            originalImpl.tryBlocks,
            originalImpl.debugItems
        )
        
        return com.android.tools.smali.dexlib2.immutable.ImmutableMethod(
            original.definingClass,
            original.name,
            original.parameters,
            original.returnType,
            original.accessFlags,
            original.annotations,
            original.hiddenApiRestrictions,
            newImpl
        )
    }
    
    /**
     * Create a new <clinit> method that loads frida-gadget
     */
    private fun createNewClinit(className: String): com.android.tools.smali.dexlib2.iface.Method {
        android.util.Log.i("DroidAnalyst", "Creating new <clinit> for $className")
        
        val instructions = createLoadGadgetInstructions().toMutableList()
        // Add return-void at the end
        instructions.add(
            com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction10x(
                com.android.tools.smali.dexlib2.Opcode.RETURN_VOID
            )
        )
        
        val impl = com.android.tools.smali.dexlib2.immutable.ImmutableMethodImplementation(
            1, // register count
            instructions,
            emptyList(),
            emptyList()
        )
        
        return com.android.tools.smali.dexlib2.immutable.ImmutableMethod(
            className,
            "<clinit>",
            emptyList(),
            "V",
            com.android.tools.smali.dexlib2.AccessFlags.STATIC.value or 
                com.android.tools.smali.dexlib2.AccessFlags.CONSTRUCTOR.value,
            emptySet(),
            emptySet(),
            impl
        )
    }
    
    /**
     * Create instructions for: System.loadLibrary("frida-gadget")
     * 
     * Equivalent smali:
     * const-string v0, "frida-gadget"
     * invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
     */
    private fun createLoadGadgetInstructions(): List<com.android.tools.smali.dexlib2.iface.instruction.Instruction> {
        val instructions = mutableListOf<com.android.tools.smali.dexlib2.iface.instruction.Instruction>()
        
        // const-string v0, "frida-gadget"
        instructions.add(
            com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction21c(
                com.android.tools.smali.dexlib2.Opcode.CONST_STRING,
                0, // register v0
                com.android.tools.smali.dexlib2.immutable.reference.ImmutableStringReference("frida-gadget")
            )
        )
        
        // invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
        instructions.add(
            com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction35c(
                com.android.tools.smali.dexlib2.Opcode.INVOKE_STATIC,
                1, // argument count
                0, 0, 0, 0, 0, // registers (only v0 used)
                com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodReference(
                    "Ljava/lang/System;",
                    "loadLibrary",
                    listOf("Ljava/lang/String;"),
                    "V"
                )
            )
        )
        
        return instructions
    }
    
    /**
     * Install an APK using the system installer
     */
    private fun installApk(apkPath: String, result: MethodChannel.Result) {
        try {
            android.util.Log.i("DroidAnalyst", "Installing APK: $apkPath")
            
            val apkFile = File(apkPath)
            if (!apkFile.exists()) {
                result.error("FILE_NOT_FOUND", "APK file not found: $apkPath", null)
                return
            }
            
            val apkUri = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                androidx.core.content.FileProvider.getUriForFile(
                    this,
                    "$packageName.fileprovider",
                    apkFile
                )
            } else {
                Uri.fromFile(apkFile)
            }
            
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(apkUri, "application/vnd.android.package-archive")
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_GRANT_READ_URI_PERMISSION
            }
            
            startActivity(intent)
            result.success(true)
        } catch (e: Exception) {
            android.util.Log.e("DroidAnalyst", "Install APK error: ${e.message}", e)
            result.error("INSTALL_ERROR", e.message, null)
        }
    }
    
    override fun onDestroy() {
        disconnectGadget()
        super.onDestroy()
    }
}
