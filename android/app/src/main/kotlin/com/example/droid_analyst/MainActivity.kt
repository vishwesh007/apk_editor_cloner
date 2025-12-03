package com.example.droid_analyst

import android.content.pm.PackageManager
import android.content.pm.ApplicationInfo
import android.os.Build
import android.app.ActivityManager
import android.content.Context
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.droid_analyst/android"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
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
            }
        }
        
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
}
