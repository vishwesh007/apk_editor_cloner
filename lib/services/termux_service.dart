import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Service for interacting with Termux on Android
/// Supports running commands via Termux:API and Termux:Tasker plugins
class TermuxService {
  static final TermuxService _instance = TermuxService._internal();
  factory TermuxService() => _instance;
  TermuxService._internal();

  static const platform = MethodChannel('com.droidanalyst/termux');
  static const _outputChannel = EventChannel('com.droidanalyst/termux_output');
  
  final _outputController = StreamController<String>.broadcast();
  StreamSubscription? _outputSubscription;
  Stream<String> get outputStream => _outputController.stream;
  
  bool _isTermuxInstalled = false;
  bool _isTermuxApiInstalled = false;
  String? _termuxVersion;
  
  bool get isTermuxInstalled => _isTermuxInstalled;
  bool get isTermuxApiInstalled => _isTermuxApiInstalled;
  String? get termuxVersion => _termuxVersion;
  
  /// Check if Termux and its plugins are installed
  Future<Map<String, bool>> checkTermuxInstallation() async {
    if (kIsWeb) {
      return {
        'termux': false,
        'termux_api': false,
      };
    }
    
    try {
      final result = await platform.invokeMethod('checkTermuxInstallation');
      
      // Result is already a Map from Kotlin
      if (result is Map) {
        _isTermuxInstalled = result['termux'] ?? false;
        _isTermuxApiInstalled = result['termux_api'] ?? false;
        
        return {
          'termux': _isTermuxInstalled,
          'termux_api': _isTermuxApiInstalled,
        };
      }
      
      return {
        'termux': false,
        'termux_api': false,
      };
    } catch (e) {
      debugPrint('Error checking Termux installation: $e');
      return {
        'termux': false,
        'termux_api': false,
      };
    }
  }
  
  /// Run a command in Termux via Intent
  /// This opens Termux and runs the command
  Future<bool> runCommand(String command, {bool background = false}) async {
    if (kIsWeb) return false;
    
    try {
      final result = await platform.invokeMethod('runCommand', {
        'command': command,
        'background': background,
      });
      return result == true;
    } catch (e) {
      debugPrint('Error running Termux command: $e');
      return false;
    }
  }

  void _ensureOutputListening() {
    _outputSubscription ??= _outputChannel.receiveBroadcastStream().listen(
      (event) {
        if (event is String) {
          _outputController.add(event);
        } else {
          _outputController.add(event?.toString() ?? '');
        }
      },
      onError: (e) {
        debugPrint('Termux output error: $e');
      },
    );
  }

  /// Run a local shell command and stream output via EventChannel
  Future<bool> runLocalShell(String command) async {
    if (kIsWeb) return false;
    _ensureOutputListening();
    try {
      final result = await platform.invokeMethod('runLocalShell', {
        'command': command,
      });
      return result == true;
    } catch (e) {
      debugPrint('Error running local shell: $e');
      return false;
    }
  }

  Future<bool> stopLocalShell() async {
    if (kIsWeb) return false;
    try {
      final result = await platform.invokeMethod('stopLocalShell');
      return result == true;
    } catch (e) {
      debugPrint('Error stopping local shell: $e');
      return false;
    }
  }
  
  /// Run a command via Termux:Tasker plugin style intent
  /// Supports working directory and session action options
  Future<bool> runTaskerCommand(
    String command, {
    String? workingDirectory,
    String? sessionAction,
  }) async {
    if (kIsWeb) return false;
    
    try {
      final result = await platform.invokeMethod('runTaskerCommand', {
        'command': command,
        'workingDirectory': workingDirectory,
        'sessionAction': sessionAction,
      });
      return result == true;
    } catch (e) {
      debugPrint('Error running Termux Tasker command: $e');
      return false;
    }
  }
  
  /// Run a script file in Termux
  Future<bool> runScript(String scriptPath, {List<String>? args}) async {
    if (kIsWeb) return false;
    
    try {
      final result = await platform.invokeMethod('runScript', {
        'scriptPath': scriptPath,
        'args': args ?? [],
      });
      return result == true;
    } catch (e) {
      debugPrint('Error running Termux script: $e');
      return false;
    }
  }
  
  /// Open Termux app
  Future<bool> openTermux() async {
    if (kIsWeb) return false;
    
    try {
      final result = await platform.invokeMethod('openTermux');
      return result == true;
    } catch (e) {
      debugPrint('Error opening Termux: $e');
      return false;
    }
  }
  
  /// Setup Frida in Termux (install frida-tools via pip)
  Future<bool> setupFridaInTermux() async {
    return await runCommand(
      'pkg update -y && pkg install -y python && pip install frida-tools',
      background: false,
    );
  }
  
  /// Run frida-server in Termux (requires root)
  Future<bool> startFridaServerViaTermux({int port = 27042}) async {
    return await runCommand(
      'su -c "/data/local/tmp/frida-server -l 0.0.0.0:$port &"',
      background: true,
    );
  }
  
  /// Attach to a process with Frida via Termux
  Future<bool> attachFridaToProcess(String packageName, String scriptPath) async {
    return await runCommand(
      'frida -U -f $packageName -l $scriptPath --no-pause',
      background: false,
    );
  }
  
  /// Install a package in Termux
  Future<bool> installPackage(String packageName) async {
    return await runCommand('pkg install -y $packageName', background: false);
  }
  
  /// Copy file to Termux home directory
  Future<bool> copyFileToTermux(String sourcePath, String destName) async {
    if (kIsWeb) return false;
    
    try {
      final result = await platform.invokeMethod('copyFileToTermux', {
        'sourcePath': sourcePath,
        'destName': destName,
      });
      return result == true;
    } catch (e) {
      debugPrint('Error copying file to Termux: $e');
      return false;
    }
  }
  
  /// Get Termux home directory path
  Future<String?> getTermuxHomePath() async {
    if (kIsWeb) return null;
    
    try {
      final result = await platform.invokeMethod('getTermuxHomePath');
      return result as String?;
    } catch (e) {
      debugPrint('Error getting Termux home path: $e');
      return null;
    }
  }
  
  /// Create a script in Termux home directory
  Future<bool> createScript(String scriptName, String content) async {
    if (kIsWeb) return false;
    
    try {
      final result = await platform.invokeMethod('createScript', {
        'name': scriptName,
        'content': content,
      });
      return result == true;
    } catch (e) {
      debugPrint('Error creating Termux script: $e');
      return false;
    }
  }
  
  void dispose() {
    _outputSubscription?.cancel();
    _outputController.close();
  }
}

/// Represents a Termux script/command result
class TermuxResult {
  final bool success;
  final String? output;
  final String? error;
  final int? exitCode;
  
  TermuxResult({
    required this.success,
    this.output,
    this.error,
    this.exitCode,
  });
}
