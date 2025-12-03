import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:process_run/process_run.dart';
import '../models/captured_event.dart';
import 'package:uuid/uuid.dart';

/// Service for interacting with Frida on connected devices
class FridaService {
  static final FridaService _instance = FridaService._internal();
  factory FridaService() => _instance;
  FridaService._internal();

  Shell? _shell;
  Shell get shell {
    if (kIsWeb) throw UnsupportedError('Frida is not supported on web');
    return _shell ??= Shell();
  }
  
  final Uuid _uuid = const Uuid();

  Process? _fridaProcess;
  final StreamController<CapturedEvent> _eventController =
      StreamController<CapturedEvent>.broadcast();
  final StreamController<String> _logController =
      StreamController<String>.broadcast();

  Stream<CapturedEvent> get eventStream => _eventController.stream;
  Stream<String> get logStream => _logController.stream;

  bool _isAttached = false;
  String? _currentPackage;
  String? _currentDevice;

  bool get isAttached => _isAttached;
  String? get currentPackage => _currentPackage;

  /// Get list of running apps on device that can be attached to
  Future<List<Map<String, dynamic>>> getAttachableProcesses(
      String deviceId) async {
    if (kIsWeb) return [];
    
    try {
      final result = await shell.run('frida-ps -U -a');
      final lines = result.outText.split('\n').skip(2);
      final processes = <Map<String, dynamic>>[];

      for (final line in lines) {
        final match = RegExp(r'(\d+)\s+(.+)').firstMatch(line.trim());
        if (match != null) {
          processes.add({
            'pid': int.parse(match.group(1)!),
            'name': match.group(2)!.trim(),
          });
        }
      }
      return processes;
    } catch (e) {
      _logController.add('Error getting processes: $e');
      return [];
    }
  }

  /// Attach to a running process and inject script
  Future<bool> attachToProcess(
    String deviceId,
    String packageName,
    String script,
  ) async {
    if (_isAttached) {
      await detach();
    }

    try {
      _currentDevice = deviceId;
      _currentPackage = packageName;

      // Create temp file for script
      final tempDir = Directory.systemTemp;
      final scriptFile = File('${tempDir.path}/frida_script_${_uuid.v4()}.js');
      await scriptFile.writeAsString(script);

      // Start frida with script
      _fridaProcess = await Process.start(
        'frida',
        ['-U', '-n', packageName, '-l', scriptFile.path, '--no-pause'],
        runInShell: true,
      );

      _isAttached = true;

      // Listen to stdout
      _fridaProcess!.stdout
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .listen(_handleFridaOutput);

      // Listen to stderr
      _fridaProcess!.stderr
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .listen((line) => _logController.add('[ERROR] $line'));

      _fridaProcess!.exitCode.then((code) {
        _isAttached = false;
        _logController.add('Frida process exited with code: $code');
      });

      _logController.add('Attached to $packageName');
      return true;
    } catch (e) {
      _logController.add('Failed to attach: $e');
      _isAttached = false;
      return false;
    }
  }

  /// Spawn and attach to a new process
  Future<bool> spawnAndAttach(
    String deviceId,
    String packageName,
    String script,
  ) async {
    if (_isAttached) {
      await detach();
    }

    try {
      _currentDevice = deviceId;
      _currentPackage = packageName;

      // Create temp file for script
      final tempDir = Directory.systemTemp;
      final scriptFile = File('${tempDir.path}/frida_script_${_uuid.v4()}.js');
      await scriptFile.writeAsString(script);

      // Start frida with spawn
      _fridaProcess = await Process.start(
        'frida',
        ['-U', '-f', packageName, '-l', scriptFile.path, '--no-pause'],
        runInShell: true,
      );

      _isAttached = true;

      _fridaProcess!.stdout
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .listen(_handleFridaOutput);

      _fridaProcess!.stderr
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .listen((line) => _logController.add('[ERROR] $line'));

      _fridaProcess!.exitCode.then((code) {
        _isAttached = false;
        _logController.add('Frida process exited with code: $code');
      });

      _logController.add('Spawned and attached to $packageName');
      return true;
    } catch (e) {
      _logController.add('Failed to spawn: $e');
      _isAttached = false;
      return false;
    }
  }

  void _handleFridaOutput(String line) {
    _logController.add(line);

    // Try to parse as JSON event
    if (line.startsWith('{') && line.endsWith('}')) {
      try {
        final json = jsonDecode(line) as Map<String, dynamic>;
        if (json.containsKey('type')) {
          final event = _parseEvent(json);
          if (event != null) {
            _eventController.add(event);
          }
        }
      } catch (_) {
        // Not a valid JSON event, just a log message
      }
    }
  }

  CapturedEvent? _parseEvent(Map<String, dynamic> json) {
    try {
      final typeStr = json['type'] as String;
      EventType? eventType;

      switch (typeStr) {
        case 'http_request':
          eventType = EventType.httpRequest;
          break;
        case 'http_response':
          eventType = EventType.httpResponse;
          break;
        case 'file_read':
          eventType = EventType.fileRead;
          break;
        case 'file_write':
          eventType = EventType.fileWrite;
          break;
        case 'crypto':
          eventType = EventType.cryptoOperation;
          break;
        case 'api_call':
          eventType = EventType.apiCall;
          break;
        case 'intent_sent':
          eventType = EventType.intentSent;
          break;
        case 'database':
          eventType = EventType.databaseQuery;
          break;
        case 'shared_prefs':
          eventType = EventType.sharedPrefAccess;
          break;
        case 'native':
          eventType = EventType.nativeCall;
          break;
        case 'ssl_pinning':
          eventType = EventType.sslPinningAttempt;
          break;
        case 'root_detection':
          eventType = EventType.rootDetection;
          break;
        case 'debugger_detection':
          eventType = EventType.debuggerDetection;
          break;
        default:
          eventType = EventType.apiCall;
      }

      return CapturedEvent(
        id: _uuid.v4(),
        timestamp: DateTime.now(),
        type: eventType,
        source: json['source'] as String? ?? 'unknown',
        data: json['data'] as Map<String, dynamic>? ?? {},
        stackTrace: json['stack'] as String?,
      );
    } catch (e) {
      return null;
    }
  }

  /// Detach from current process
  Future<void> detach() async {
    if (_fridaProcess != null) {
      _fridaProcess!.kill();
      _fridaProcess = null;
    }
    _isAttached = false;
    _currentPackage = null;
    _currentDevice = null;
    _logController.add('Detached from process');
  }

  /// Send command to Frida REPL
  Future<void> sendCommand(String command) async {
    if (_fridaProcess != null && _isAttached) {
      _fridaProcess!.stdin.writeln(command);
    }
  }

  /// Check if Frida is installed
  Future<bool> isFridaInstalled() async {
    if (kIsWeb) return false;
    
    try {
      final result = await shell.run('frida --version');
      return result.isNotEmpty && result.first.exitCode == 0;
    } catch (e) {
      return false;
    }
  }

  /// Get Frida version
  Future<String?> getFridaVersion() async {
    if (kIsWeb) return null;
    
    try {
      final result = await shell.run('frida --version');
      return result.outText.trim();
    } catch (e) {
      return null;
    }
  }

  void dispose() {
    detach();
    _eventController.close();
    _logController.close();
  }
}
