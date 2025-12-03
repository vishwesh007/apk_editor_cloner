import 'dart:async';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:process_run/process_run.dart';
import '../models/device.dart';

/// Service for managing ADB connections to Android devices
class AdbService {
  static final AdbService _instance = AdbService._internal();
  factory AdbService() => _instance;
  AdbService._internal();

  Shell? _shell;
  
  Shell get shell {
    if (kIsWeb) throw UnsupportedError('ADB is not supported on web');
    return _shell ??= Shell();
  }

  /// Get list of connected devices
  Future<List<AndroidDevice>> getConnectedDevices() async {
    if (kIsWeb) return [];
    
    try {
      final result = await shell.run('adb devices -l');
      final output = result.outText;
      final lines = output.split('\n').skip(1).where((l) => l.trim().isNotEmpty);

      final devices = <AndroidDevice>[];
      for (final line in lines) {
        final device = await _parseDeviceLine(line);
        if (device != null) {
          devices.add(device);
        }
      }
      return devices;
    } catch (e) {
      return [];
    }
  }

  Future<AndroidDevice?> _parseDeviceLine(String line) async {
    final parts = line.split(RegExp(r'\s+'));
    if (parts.length < 2) return null;

    final id = parts[0];
    final statusStr = parts[1];

    DeviceStatus status;
    switch (statusStr) {
      case 'device':
        status = DeviceStatus.connected;
        break;
      case 'unauthorized':
        status = DeviceStatus.unauthorized;
        break;
      case 'offline':
        status = DeviceStatus.offline;
        break;
      default:
        status = DeviceStatus.disconnected;
    }

    String model = 'Unknown';
    String androidVersion = 'Unknown';
    bool isRooted = false;

    if (status == DeviceStatus.connected) {
      try {
        // Get device model
        final modelResult = await shell.run(
            'adb -s $id shell getprop ro.product.model');
        model = modelResult.outText.trim();

        // Get Android version
        final versionResult = await shell.run(
            'adb -s $id shell getprop ro.build.version.release');
        androidVersion = versionResult.outText.trim();

        // Check if rooted (check for su binary)
        final rootResult = await shell.run(
            'adb -s $id shell which su');
        isRooted = rootResult.outText.trim().isNotEmpty;
      } catch (_) {}
    }

    return AndroidDevice(
      id: id,
      model: model,
      androidVersion: androidVersion,
      isRooted: isRooted,
      status: status,
    );
  }

  /// Install APK on device
  Future<bool> installApk(String deviceId, String apkPath) async {
    try {
      final result = await shell.run('adb -s $deviceId install -r "$apkPath"');
      return result.outText.contains('Success');
    } catch (e) {
      return false;
    }
  }

  /// Uninstall package from device
  Future<bool> uninstallPackage(String deviceId, String packageName) async {
    try {
      final result = await shell.run(
          'adb -s $deviceId uninstall $packageName');
      return result.outText.contains('Success');
    } catch (e) {
      return false;
    }
  }

  /// Get list of installed packages
  Future<List<String>> getInstalledPackages(String deviceId) async {
    try {
      final result = await shell.run(
          'adb -s $deviceId shell pm list packages -3');
      return result.outText
          .split('\n')
          .where((l) => l.startsWith('package:'))
          .map((l) => l.replaceFirst('package:', '').trim())
          .toList();
    } catch (e) {
      return [];
    }
  }

  /// Start an app on device
  Future<bool> startApp(String deviceId, String packageName) async {
    try {
      // Get launch activity
      final activityResult = await shell.run(
          'adb -s $deviceId shell cmd package resolve-activity --brief $packageName');
      final lines = activityResult.outText.split('\n');
      String? launchActivity;
      for (final line in lines) {
        if (line.contains('/')) {
          launchActivity = line.trim();
          break;
        }
      }
      if (launchActivity == null) return false;

      await shell.run(
          'adb -s $deviceId shell am start -n $launchActivity');
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Force stop an app
  Future<bool> stopApp(String deviceId, String packageName) async {
    try {
      await shell.run(
          'adb -s $deviceId shell am force-stop $packageName');
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Forward TCP port for Frida
  Future<bool> forwardPort(String deviceId,
      {int localPort = 27042, int remotePort = 27042}) async {
    try {
      await shell.run(
          'adb -s $deviceId forward tcp:$localPort tcp:$remotePort');
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Execute shell command on device
  Future<String> executeShell(String deviceId, String command) async {
    try {
      final result = await shell.run('adb -s $deviceId shell $command');
      return result.outText;
    } catch (e) {
      return 'Error: $e';
    }
  }

  /// Pull file from device
  Future<bool> pullFile(
      String deviceId, String remotePath, String localPath) async {
    try {
      await shell.run('adb -s $deviceId pull "$remotePath" "$localPath"');
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Push file to device
  Future<bool> pushFile(
      String deviceId, String localPath, String remotePath) async {
    try {
      await shell.run('adb -s $deviceId push "$localPath" "$remotePath"');
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Check if Frida server is running on device
  Future<bool> isFridaServerRunning(String deviceId) async {
    try {
      final result = await shell.run(
          'adb -s $deviceId shell ps | grep frida');
      return result.outText.contains('frida');
    } catch (e) {
      return false;
    }
  }

  /// Start Frida server on device (assumes it's already pushed)
  Future<bool> startFridaServer(String deviceId) async {
    try {
      // Run in background
      await shell.run(
          'adb -s $deviceId shell "/data/local/tmp/frida-server &"');
      await Future.delayed(const Duration(seconds: 2));
      return await isFridaServerRunning(deviceId);
    } catch (e) {
      return false;
    }
  }

  /// Get running processes on device
  Future<List<Map<String, String>>> getRunningProcesses(String deviceId) async {
    try {
      final result = await shell.run('adb -s $deviceId shell ps -A');
      final lines = result.outText.split('\n').skip(1);
      final processes = <Map<String, String>>[];

      for (final line in lines) {
        final parts = line.split(RegExp(r'\s+'));
        if (parts.length >= 9) {
          processes.add({
            'user': parts[0],
            'pid': parts[1],
            'name': parts.last,
          });
        }
      }
      return processes;
    } catch (e) {
      return [];
    }
  }
}
