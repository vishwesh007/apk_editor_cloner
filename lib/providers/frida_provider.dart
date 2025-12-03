import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import '../models/frida_script.dart';
import '../models/captured_event.dart';
import '../services/frida_service.dart';

class FridaProvider extends ChangeNotifier {
  FridaService? _fridaServiceInstance;
  FridaService get _fridaService => _fridaServiceInstance ??= FridaService();
  
  final Uuid _uuid = const Uuid();

  List<FridaScript> _scripts = [];
  List<CapturedEvent> _events = [];
  List<String> _logs = [];
  FridaScript? _selectedScript;
  bool _isAttached = false;
  String? _attachedPackage;
  String? _error;
  bool _isFridaInstalled = false;
  String? _fridaVersion;

  StreamSubscription? _eventSubscription;
  StreamSubscription? _logSubscription;

  List<FridaScript> get scripts => _scripts;
  List<CapturedEvent> get events => _events;
  List<String> get logs => _logs;
  FridaScript? get selectedScript => _selectedScript;
  bool get isAttached => _isAttached;
  String? get attachedPackage => _attachedPackage;
  String? get error => _error;
  bool get isFridaInstalled => _isFridaInstalled;
  String? get fridaVersion => _fridaVersion;

  FridaProvider() {
    _initBuiltInScripts();
    if (!kIsWeb) {
      _checkFridaInstallation();
      _setupStreamListeners();
    }
  }

  void _setupStreamListeners() {
    if (kIsWeb) return;
    
    _eventSubscription = _fridaService.eventStream.listen((event) {
      _events.insert(0, event);
      if (_events.length > 1000) {
        _events = _events.sublist(0, 1000);
      }
      notifyListeners();
    });

    _logSubscription = _fridaService.logStream.listen((log) {
      _logs.add(log);
      if (_logs.length > 500) {
        _logs = _logs.sublist(_logs.length - 500);
      }
      notifyListeners();
    });
  }

  Future<void> _checkFridaInstallation() async {
    _isFridaInstalled = await _fridaService.isFridaInstalled();
    if (_isFridaInstalled) {
      _fridaVersion = await _fridaService.getFridaVersion();
    }
    notifyListeners();
  }

  void _initBuiltInScripts() {
    _scripts = [
      // Network Monitoring Script
      FridaScript(
        id: _uuid.v4(),
        name: 'HTTP Traffic Monitor',
        description: 'Captures all HTTP/HTTPS requests and responses',
        category: ScriptCategory.network,
        isBuiltIn: true,
        createdAt: DateTime.now(),
        code: '''
Java.perform(function() {
    // Hook OkHttp3
    try {
        var OkHttpClient = Java.use('okhttp3.OkHttpClient');
        var Request = Java.use('okhttp3.Request');
        var RequestBody = Java.use('okhttp3.RequestBody');
        
        var Interceptor = Java.use('okhttp3.Interceptor');
        
        console.log('[*] OkHttp3 hooks installed');
    } catch(e) {
        console.log('[-] OkHttp3 not found');
    }
    
    // Hook HttpURLConnection
    try {
        var HttpURLConnection = Java.use('java.net.HttpURLConnection');
        var URL = Java.use('java.net.URL');
        
        URL.openConnection.overload().implementation = function() {
            var conn = this.openConnection();
            var urlStr = this.toString();
            
            send(JSON.stringify({
                type: 'http_request',
                source: 'HttpURLConnection',
                data: { url: urlStr }
            }));
            
            console.log('[HTTP] ' + urlStr);
            return conn;
        };
        
        console.log('[*] HttpURLConnection hooks installed');
    } catch(e) {
        console.log('[-] HttpURLConnection hook failed: ' + e);
    }
    
    // Hook WebView
    try {
        var WebView = Java.use('android.webkit.WebView');
        
        WebView.loadUrl.overload('java.lang.String').implementation = function(url) {
            send(JSON.stringify({
                type: 'http_request',
                source: 'WebView',
                data: { url: url }
            }));
            console.log('[WebView] ' + url);
            return this.loadUrl(url);
        };
        
        console.log('[*] WebView hooks installed');
    } catch(e) {
        console.log('[-] WebView hook failed: ' + e);
    }
});
''',
      ),

      // File System Monitor
      FridaScript(
        id: _uuid.v4(),
        name: 'File System Monitor',
        description: 'Monitors file read/write operations',
        category: ScriptCategory.filesystem,
        isBuiltIn: true,
        createdAt: DateTime.now(),
        code: '''
Java.perform(function() {
    var File = Java.use('java.io.File');
    var FileInputStream = Java.use('java.io.FileInputStream');
    var FileOutputStream = Java.use('java.io.FileOutputStream');
    
    // Monitor file reads
    FileInputStream.\$init.overload('java.io.File').implementation = function(file) {
        var path = file.getAbsolutePath();
        send(JSON.stringify({
            type: 'file_read',
            source: 'FileInputStream',
            data: { path: path }
        }));
        console.log('[FILE READ] ' + path);
        return this.\$init(file);
    };
    
    FileInputStream.\$init.overload('java.lang.String').implementation = function(path) {
        send(JSON.stringify({
            type: 'file_read',
            source: 'FileInputStream',
            data: { path: path }
        }));
        console.log('[FILE READ] ' + path);
        return this.\$init(path);
    };
    
    // Monitor file writes
    FileOutputStream.\$init.overload('java.io.File').implementation = function(file) {
        var path = file.getAbsolutePath();
        send(JSON.stringify({
            type: 'file_write',
            source: 'FileOutputStream',
            data: { path: path }
        }));
        console.log('[FILE WRITE] ' + path);
        return this.\$init(file);
    };
    
    FileOutputStream.\$init.overload('java.lang.String').implementation = function(path) {
        send(JSON.stringify({
            type: 'file_write',
            source: 'FileOutputStream',
            data: { path: path }
        }));
        console.log('[FILE WRITE] ' + path);
        return this.\$init(path);
    };
    
    console.log('[*] File system hooks installed');
});
''',
      ),

      // Crypto Monitor
      FridaScript(
        id: _uuid.v4(),
        name: 'Crypto Operations Monitor',
        description: 'Captures encryption/decryption operations and keys',
        category: ScriptCategory.crypto,
        isBuiltIn: true,
        createdAt: DateTime.now(),
        code: '''
Java.perform(function() {
    var Cipher = Java.use('javax.crypto.Cipher');
    var SecretKeySpec = Java.use('javax.crypto.spec.SecretKeySpec');
    var IvParameterSpec = Java.use('javax.crypto.spec.IvParameterSpec');
    
    function bytesToHex(bytes) {
        var hex = '';
        for (var i = 0; i < bytes.length; i++) {
            hex += ('0' + (bytes[i] & 0xFF).toString(16)).slice(-2);
        }
        return hex;
    }
    
    // Hook Cipher.init
    Cipher.init.overload('int', 'java.security.Key').implementation = function(mode, key) {
        var modeStr = mode == 1 ? 'ENCRYPT' : 'DECRYPT';
        var algo = this.getAlgorithm();
        var keyBytes = key.getEncoded();
        
        send(JSON.stringify({
            type: 'crypto',
            source: 'Cipher.init',
            data: {
                mode: modeStr,
                algorithm: algo,
                key: bytesToHex(keyBytes)
            }
        }));
        
        console.log('[CRYPTO] ' + modeStr + ' | ' + algo + ' | Key: ' + bytesToHex(keyBytes));
        return this.init(mode, key);
    };
    
    // Hook SecretKeySpec
    SecretKeySpec.\$init.overload('[B', 'java.lang.String').implementation = function(key, algo) {
        send(JSON.stringify({
            type: 'crypto',
            source: 'SecretKeySpec',
            data: {
                algorithm: algo,
                key: bytesToHex(key)
            }
        }));
        console.log('[KEY] ' + algo + ' | ' + bytesToHex(key));
        return this.\$init(key, algo);
    };
    
    console.log('[*] Crypto hooks installed');
});
''',
      ),

      // API Call Tracer
      FridaScript(
        id: _uuid.v4(),
        name: 'API Call Tracer',
        description: 'Traces sensitive Android API calls',
        category: ScriptCategory.api,
        isBuiltIn: true,
        createdAt: DateTime.now(),
        code: '''
Java.perform(function() {
    // Location
    try {
        var LocationManager = Java.use('android.location.LocationManager');
        LocationManager.getLastKnownLocation.implementation = function(provider) {
            var loc = this.getLastKnownLocation(provider);
            send(JSON.stringify({
                type: 'api_call',
                source: 'LocationManager.getLastKnownLocation',
                data: { provider: provider }
            }));
            console.log('[LOCATION] getLastKnownLocation: ' + provider);
            return loc;
        };
    } catch(e) {}
    
    // Contacts
    try {
        var ContentResolver = Java.use('android.content.ContentResolver');
        ContentResolver.query.overload('android.net.Uri', '[Ljava.lang.String;', 'java.lang.String', '[Ljava.lang.String;', 'java.lang.String').implementation = function(uri, proj, sel, selArgs, sort) {
            var uriStr = uri.toString();
            send(JSON.stringify({
                type: 'api_call',
                source: 'ContentResolver.query',
                data: { uri: uriStr }
            }));
            console.log('[CONTENT] Query: ' + uriStr);
            return this.query(uri, proj, sel, selArgs, sort);
        };
    } catch(e) {}
    
    // Device Info
    try {
        var TelephonyManager = Java.use('android.telephony.TelephonyManager');
        
        TelephonyManager.getDeviceId.overload().implementation = function() {
            var id = this.getDeviceId();
            send(JSON.stringify({
                type: 'api_call',
                source: 'TelephonyManager.getDeviceId',
                data: { deviceId: id }
            }));
            console.log('[DEVICE] getDeviceId: ' + id);
            return id;
        };
        
        TelephonyManager.getSubscriberId.implementation = function() {
            var id = this.getSubscriberId();
            send(JSON.stringify({
                type: 'api_call',
                source: 'TelephonyManager.getSubscriberId',
                data: { subscriberId: id }
            }));
            console.log('[DEVICE] getSubscriberId: ' + id);
            return id;
        };
    } catch(e) {}
    
    // SharedPreferences
    try {
        var SharedPreferencesImpl = Java.use('android.app.SharedPreferencesImpl');
        
        SharedPreferencesImpl.getString.implementation = function(key, defValue) {
            var value = this.getString(key, defValue);
            send(JSON.stringify({
                type: 'shared_prefs',
                source: 'SharedPreferences.getString',
                data: { key: key, value: value }
            }));
            console.log('[PREFS] getString: ' + key + ' = ' + value);
            return value;
        };
    } catch(e) {}
    
    console.log('[*] API hooks installed');
});
''',
      ),

      // Anti-Debug Detection
      FridaScript(
        id: _uuid.v4(),
        name: 'Anti-Analysis Detector',
        description: 'Detects root/debugger/Frida detection attempts',
        category: ScriptCategory.antiDebug,
        isBuiltIn: true,
        createdAt: DateTime.now(),
        code: '''
Java.perform(function() {
    // Debug detection
    try {
        var Debug = Java.use('android.os.Debug');
        Debug.isDebuggerConnected.implementation = function() {
            send(JSON.stringify({
                type: 'debugger_detection',
                source: 'Debug.isDebuggerConnected',
                data: {}
            }));
            console.log('[ANTI-DEBUG] isDebuggerConnected called');
            return false;
        };
    } catch(e) {}
    
    // Root detection patterns
    try {
        var File = Java.use('java.io.File');
        File.exists.implementation = function() {
            var path = this.getAbsolutePath();
            var rootPaths = ['/system/bin/su', '/system/xbin/su', '/sbin/su', 
                           '/data/local/su', '/data/local/bin/su', '/system/app/Superuser.apk',
                           '/data/data/com.noshufou.android.su'];
            
            if (rootPaths.indexOf(path) >= 0) {
                send(JSON.stringify({
                    type: 'root_detection',
                    source: 'File.exists',
                    data: { path: path }
                }));
                console.log('[ROOT CHECK] ' + path);
                return false;
            }
            return this.exists();
        };
    } catch(e) {}
    
    // Runtime.exec for su
    try {
        var Runtime = Java.use('java.lang.Runtime');
        Runtime.exec.overload('java.lang.String').implementation = function(cmd) {
            if (cmd.indexOf('su') >= 0 || cmd.indexOf('which') >= 0) {
                send(JSON.stringify({
                    type: 'root_detection',
                    source: 'Runtime.exec',
                    data: { command: cmd }
                }));
                console.log('[ROOT CHECK] exec: ' + cmd);
            }
            return this.exec(cmd);
        };
    } catch(e) {}
    
    // Build.TAGS check
    try {
        var Build = Java.use('android.os.Build');
        Build.TAGS.value = 'release-keys';
        console.log('[*] Build.TAGS set to release-keys');
    } catch(e) {}
    
    console.log('[*] Anti-analysis detection hooks installed');
});
''',
      ),

      // Database Monitor
      FridaScript(
        id: _uuid.v4(),
        name: 'SQLite Database Monitor',
        description: 'Monitors SQLite database queries',
        category: ScriptCategory.api,
        isBuiltIn: true,
        createdAt: DateTime.now(),
        code: '''
Java.perform(function() {
    var SQLiteDatabase = Java.use('android.database.sqlite.SQLiteDatabase');
    
    // rawQuery
    SQLiteDatabase.rawQuery.overload('java.lang.String', '[Ljava.lang.String;').implementation = function(sql, args) {
        send(JSON.stringify({
            type: 'database',
            source: 'SQLiteDatabase.rawQuery',
            data: { 
                query: sql,
                args: args ? args.join(', ') : ''
            }
        }));
        console.log('[SQL] ' + sql);
        return this.rawQuery(sql, args);
    };
    
    // execSQL
    SQLiteDatabase.execSQL.overload('java.lang.String').implementation = function(sql) {
        send(JSON.stringify({
            type: 'database',
            source: 'SQLiteDatabase.execSQL',
            data: { query: sql }
        }));
        console.log('[SQL] ' + sql);
        return this.execSQL(sql);
    };
    
    // insert
    SQLiteDatabase.insert.implementation = function(table, nullCol, values) {
        send(JSON.stringify({
            type: 'database',
            source: 'SQLiteDatabase.insert',
            data: { 
                table: table,
                values: values.toString()
            }
        }));
        console.log('[SQL INSERT] ' + table);
        return this.insert(table, nullCol, values);
    };
    
    console.log('[*] SQLite hooks installed');
});
''',
      ),
    ];

    notifyListeners();
  }

  Future<List<Map<String, dynamic>>> getAttachableProcesses(
      String deviceId) async {
    return await _fridaService.getAttachableProcesses(deviceId);
  }

  Future<bool> attachToProcess(String deviceId, String packageName) async {
    if (_selectedScript == null) {
      _error = 'No script selected';
      notifyListeners();
      return false;
    }

    _error = null;
    final result = await _fridaService.attachToProcess(
      deviceId,
      packageName,
      _selectedScript!.code,
    );

    _isAttached = result;
    _attachedPackage = result ? packageName : null;
    notifyListeners();
    return result;
  }

  Future<bool> spawnAndAttach(String deviceId, String packageName) async {
    if (_selectedScript == null) {
      _error = 'No script selected';
      notifyListeners();
      return false;
    }

    _error = null;
    final result = await _fridaService.spawnAndAttach(
      deviceId,
      packageName,
      _selectedScript!.code,
    );

    _isAttached = result;
    _attachedPackage = result ? packageName : null;
    notifyListeners();
    return result;
  }

  Future<void> detach() async {
    await _fridaService.detach();
    _isAttached = false;
    _attachedPackage = null;
    notifyListeners();
  }

  void selectScript(FridaScript script) {
    _selectedScript = script;
    notifyListeners();
  }

  void addScript(FridaScript script) {
    _scripts.add(script);
    notifyListeners();
  }

  void updateScript(FridaScript script) {
    final index = _scripts.indexWhere((s) => s.id == script.id);
    if (index >= 0) {
      _scripts[index] = script;
      if (_selectedScript?.id == script.id) {
        _selectedScript = script;
      }
      notifyListeners();
    }
  }

  void deleteScript(String id) {
    _scripts.removeWhere((s) => s.id == id && !s.isBuiltIn);
    if (_selectedScript?.id == id) {
      _selectedScript = null;
    }
    notifyListeners();
  }

  void clearEvents() {
    _events.clear();
    notifyListeners();
  }

  void clearLogs() {
    _logs.clear();
    notifyListeners();
  }

  List<CapturedEvent> getEventsByType(EventType type) {
    return _events.where((e) => e.type == type).toList();
  }

  @override
  void dispose() {
    _eventSubscription?.cancel();
    _logSubscription?.cancel();
    _fridaService.dispose();
    super.dispose();
  }
}
