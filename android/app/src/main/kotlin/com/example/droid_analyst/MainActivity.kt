package com.example.droid_analyst

import android.content.pm.PackageManager
import android.content.pm.ApplicationInfo
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
    
    // For local socket connection to gadget
    private var gadgetSocket: LocalSocket? = null
    private var gadgetTcpSocket: java.net.Socket? = null
    private var gadgetReader: BufferedReader? = null
    private var gadgetWriter: PrintWriter? = null
    private var localGadgetChannel: MethodChannel? = null
    private var isUsingTcp = false

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
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
    
    override fun onDestroy() {
        disconnectGadget()
        super.onDestroy()
    }
}
