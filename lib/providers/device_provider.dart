import 'dart:async';
import 'package:flutter/foundation.dart';
import '../models/device.dart';
import '../services/adb_service.dart';

class DeviceProvider extends ChangeNotifier {
  AdbService? _adbService;
  AdbService get adbService => _adbService ??= AdbService();

  List<AndroidDevice> _devices = [];
  AndroidDevice? _selectedDevice;
  bool _isLoading = false;
  String? _error;
  Timer? _refreshTimer;

  List<AndroidDevice> get devices => _devices;
  AndroidDevice? get selectedDevice => _selectedDevice;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasConnectedDevice =>
      _selectedDevice?.status == DeviceStatus.connected;

  DeviceProvider() {
    // Only start auto-refresh on non-web platforms
    if (!kIsWeb) {
      refreshDevices();
      // Auto-refresh every 5 seconds
      _refreshTimer = Timer.periodic(
        const Duration(seconds: 5),
        (_) => refreshDevices(),
      );
    }
  }

  Future<void> refreshDevices() async {
    if (kIsWeb) return;
    
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _devices = await adbService.getConnectedDevices();

      // Check Frida server status for each connected device
      for (var i = 0; i < _devices.length; i++) {
        if (_devices[i].status == DeviceStatus.connected) {
          final fridaRunning =
              await adbService.isFridaServerRunning(_devices[i].id);
          _devices[i] = _devices[i].copyWith(fridaServerRunning: fridaRunning);
        }
      }

      // Update selected device if it's no longer available
      if (_selectedDevice != null) {
        final stillExists = _devices.any((d) => d.id == _selectedDevice!.id);
        if (!stillExists) {
          _selectedDevice = null;
        } else {
          _selectedDevice = _devices.firstWhere(
            (d) => d.id == _selectedDevice!.id,
          );
        }
      }

      // Auto-select first connected device if none selected
      if (_selectedDevice == null && _devices.isNotEmpty) {
        final connected = _devices.where(
          (d) => d.status == DeviceStatus.connected,
        );
        if (connected.isNotEmpty) {
          _selectedDevice = connected.first;
        }
      }
    } catch (e) {
      _error = 'Failed to get devices: $e';
    }

    _isLoading = false;
    notifyListeners();
  }

  void selectDevice(AndroidDevice device) {
    _selectedDevice = device;
    notifyListeners();
  }

  Future<bool> installApk(String apkPath) async {
    if (_selectedDevice == null) return false;
    return await adbService.installApk(_selectedDevice!.id, apkPath);
  }

  Future<bool> uninstallPackage(String packageName) async {
    if (_selectedDevice == null) return false;
    return await adbService.uninstallPackage(_selectedDevice!.id, packageName);
  }

  Future<List<String>> getInstalledPackages() async {
    if (_selectedDevice == null) return [];
    return await adbService.getInstalledPackages(_selectedDevice!.id);
  }

  Future<bool> startApp(String packageName) async {
    if (_selectedDevice == null) return false;
    return await adbService.startApp(_selectedDevice!.id, packageName);
  }

  Future<bool> stopApp(String packageName) async {
    if (_selectedDevice == null) return false;
    return await adbService.stopApp(_selectedDevice!.id, packageName);
  }

  Future<bool> startFridaServer() async {
    if (_selectedDevice == null) return false;
    final result = await adbService.startFridaServer(_selectedDevice!.id);
    if (result) {
      _selectedDevice =
          _selectedDevice!.copyWith(fridaServerRunning: true);
      notifyListeners();
    }
    return result;
  }

  Future<bool> forwardFridaPort() async {
    if (_selectedDevice == null) return false;
    return await adbService.forwardPort(_selectedDevice!.id);
  }

  Future<List<Map<String, String>>> getRunningProcesses() async {
    if (_selectedDevice == null) return [];
    return await adbService.getRunningProcesses(_selectedDevice!.id);
  }

  Future<String> executeShell(String command) async {
    if (_selectedDevice == null) return 'No device selected';
    return await adbService.executeShell(_selectedDevice!.id, command);
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    super.dispose();
  }
}
