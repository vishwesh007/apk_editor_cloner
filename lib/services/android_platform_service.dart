import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Service for Android native operations via platform channel
class AndroidPlatformService {
  static const platform = MethodChannel('com.example.droid_analyst/android');
  
  static final AndroidPlatformService _instance = AndroidPlatformService._internal();
  factory AndroidPlatformService() => _instance;
  AndroidPlatformService._internal();

  /// Check if running on Android (not web)
  bool get isAndroid => !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  /// Get list of installed packages on the device
  Future<List<InstalledApp>> getInstalledPackages() async {
    if (!isAndroid) return [];
    
    try {
      final String result = await platform.invokeMethod('getInstalledPackages');
      final List<dynamic> jsonList = json.decode(result);
      
      return jsonList.map((item) => InstalledApp.fromJson(item)).toList();
    } on PlatformException catch (e) {
      print('Failed to get installed packages: ${e.message}');
      return [];
    }
  }

  /// Get running processes (limited on newer Android)
  Future<List<RunningProcess>> getRunningProcesses() async {
    if (!isAndroid) return [];
    
    try {
      final String result = await platform.invokeMethod('getRunningProcesses');
      final List<dynamic> jsonList = json.decode(result);
      
      return jsonList.map((item) => RunningProcess.fromJson(item)).toList();
    } on PlatformException catch (e) {
      print('Failed to get running processes: ${e.message}');
      return [];
    }
  }

  /// Get current device information
  Future<DeviceInfo?> getDeviceInfo() async {
    if (!isAndroid) return null;
    
    try {
      final String result = await platform.invokeMethod('getDeviceInfo');
      final Map<String, dynamic> json = jsonDecode(result);
      
      return DeviceInfo.fromJson(json);
    } on PlatformException catch (e) {
      print('Failed to get device info: ${e.message}');
      return null;
    }
  }

  /// Get APK path for a package
  Future<String?> getApkPath(String packageName) async {
    if (!isAndroid) return null;
    
    try {
      final String? result = await platform.invokeMethod('getApkPath', {
        'packageName': packageName,
      });
      return result;
    } on PlatformException catch (e) {
      print('Failed to get APK path: ${e.message}');
      return null;
    }
  }
}

/// Model for installed app information
class InstalledApp {
  final String packageName;
  final String appName;
  final String sourceDir;
  final bool isSystem;
  final bool enabled;
  final String versionName;
  final int versionCode;
  final DateTime firstInstallTime;
  final DateTime lastUpdateTime;
  final List<String> permissions;

  InstalledApp({
    required this.packageName,
    required this.appName,
    required this.sourceDir,
    required this.isSystem,
    required this.enabled,
    required this.versionName,
    required this.versionCode,
    required this.firstInstallTime,
    required this.lastUpdateTime,
    required this.permissions,
  });

  factory InstalledApp.fromJson(Map<String, dynamic> json) {
    return InstalledApp(
      packageName: json['packageName'] ?? '',
      appName: json['appName'] ?? '',
      sourceDir: json['sourceDir'] ?? '',
      isSystem: json['isSystem'] ?? false,
      enabled: json['enabled'] ?? true,
      versionName: json['versionName'] ?? '1.0',
      versionCode: (json['versionCode'] ?? 1).toInt(),
      firstInstallTime: DateTime.fromMillisecondsSinceEpoch(
        (json['firstInstallTime'] ?? 0).toInt(),
      ),
      lastUpdateTime: DateTime.fromMillisecondsSinceEpoch(
        (json['lastUpdateTime'] ?? 0).toInt(),
      ),
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList() ?? [],
    );
  }
}

/// Model for running process
class RunningProcess {
  final int pid;
  final String processName;
  final int importance;
  final int uid;

  RunningProcess({
    required this.pid,
    required this.processName,
    required this.importance,
    required this.uid,
  });

  factory RunningProcess.fromJson(Map<String, dynamic> json) {
    return RunningProcess(
      pid: json['pid'] ?? 0,
      processName: json['processName'] ?? '',
      importance: json['importance'] ?? 0,
      uid: json['uid'] ?? 0,
    );
  }
  
  String get importanceLabel {
    switch (importance) {
      case 100: return 'Foreground';
      case 125: return 'Foreground Service';
      case 130: return 'Top Sleeping';
      case 150: return 'Visible';
      case 200: return 'Perceptible';
      case 230: return 'Perceptible Pre-26';
      case 300: return 'Service';
      case 325: return 'Can\'t Save State';
      case 350: return 'Cached';
      case 400: return 'Background';
      case 500: return 'Empty';
      default: return 'Unknown ($importance)';
    }
  }
}

/// Model for device information
class DeviceInfo {
  final String model;
  final String manufacturer;
  final String brand;
  final String device;
  final String androidVersion;
  final int sdkVersion;
  final String board;
  final String hardware;
  final String product;
  final String fingerprint;
  final bool isEmulator;

  DeviceInfo({
    required this.model,
    required this.manufacturer,
    required this.brand,
    required this.device,
    required this.androidVersion,
    required this.sdkVersion,
    required this.board,
    required this.hardware,
    required this.product,
    required this.fingerprint,
    required this.isEmulator,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return DeviceInfo(
      model: json['model'] ?? '',
      manufacturer: json['manufacturer'] ?? '',
      brand: json['brand'] ?? '',
      device: json['device'] ?? '',
      androidVersion: json['androidVersion'] ?? '',
      sdkVersion: json['sdkVersion'] ?? 0,
      board: json['board'] ?? '',
      hardware: json['hardware'] ?? '',
      product: json['product'] ?? '',
      fingerprint: json['fingerprint'] ?? '',
      isEmulator: json['isEmulator'] ?? false,
    );
  }
}
