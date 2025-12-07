import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/frida_script.dart' as frida;
import '../services/frida_gadget_service.dart';
import '../services/adb_service.dart';

/// User Script Console - Create, edit, save, and execute Frida scripts
class ScriptConsoleScreen extends StatefulWidget {
  final String? connectedApp;
  final String? apkPath; // Path to original APK for re-injection

  const ScriptConsoleScreen({super.key, this.connectedApp, this.apkPath});

  @override
  State<ScriptConsoleScreen> createState() => _ScriptConsoleScreenState();
}

class _ScriptConsoleScreenState extends State<ScriptConsoleScreen> {
  static const platform = MethodChannel('com.droidanalyst/local_gadget');
  static const _scriptsKey = 'user_scripts';

  final _codeController = TextEditingController();
  final _nameController = TextEditingController();
  final _outputController = ScrollController();
  final _gadgetService = FridaGadgetService();
  final _adbService = AdbService();
  
  List<frida.FridaScript> _userScripts = [];
  frida.FridaScript? _selectedScript;
  bool _isExecuting = false;
  bool _isInjecting = false;
  final _output = <String>[];
  Timer? _toastTimer;
  bool _scriptRunning = false;
  String? _selectedApkPath; // User-selected APK path for injection

  // Built-in demo scripts
  final List<frida.FridaScript> _builtInScripts = [
    frida.FridaScript(
      id: 'toast_demo',
      name: 'Toast Every 10 Seconds',
      description: 'Shows a toast message from the target app every 10 seconds',
      code: '''// Toast Demo Script
// Shows a toast message every 10 seconds
// Includes delay to ensure app is fully initialized

console.log("[Frida] Toast script loading...");

// Wait for Java VM to be ready then delay a bit more for app initialization
setTimeout(function() {
    console.log("[Frida] Checking Java availability...");
    
    if (!Java.available) {
        console.log("[Frida] Java not available!");
        return;
    }
    
    Java.perform(function() {
        console.log("[Frida] Java.perform running...");
        
        try {
            var Toast = Java.use('android.widget.Toast');
            var ActivityThread = Java.use('android.app.ActivityThread');
            var String = Java.use('java.lang.String');
            
            var count = 0;
            
            // Function to get context (may need retry)
            function getContext() {
                try {
                    var app = ActivityThread.currentApplication();
                    if (app !== null) {
                        return app.getApplicationContext();
                    }
                } catch(e) {
                    console.log("[Frida] Context error: " + e);
                }
                return null;
            }
            
            // Function to show toast with context retry
            function showToast(message) {
                Java.scheduleOnMainThread(function() {
                    try {
                        var ctx = getContext();
                        if (ctx !== null) {
                            Toast.makeText(ctx, String.\$new(message), 1).show();
                            console.log("[Frida] Toast shown: " + message);
                        } else {
                            console.log("[Frida] Context still null, skipping toast");
                        }
                    } catch(e) {
                        console.log("[Frida] Toast error: " + e);
                    }
                });
            }
            
            // Show initial toast
            showToast("🔥 Frida Gadget Active! Toast #" + count);
            send("Toast script started!");
            console.log("[Frida] Initial toast triggered");
            
            // Set up interval for repeated toasts
            setInterval(function() {
                count++;
                showToast("🔥 Hello from Frida! Toast #" + count);
                send("Toast #" + count + " displayed");
            }, 10000);
            
            console.log("[Frida] Toast interval set up successfully");
        } catch(e) {
            console.log("[Frida] Script error: " + e);
            send("Script error: " + e);
        }
    });
}, 2000);  // 2 second delay to ensure app is fully initialized

console.log("[Frida] Toast script setup complete, waiting for timer...");
''',
      category: frida.ScriptCategory.custom,
      isBuiltIn: true,
      createdAt: DateTime.now(),
    ),
    frida.FridaScript(
      id: 'method_trace',
      name: 'Activity Lifecycle Trace',
      description: 'Traces Activity lifecycle methods (onCreate, onResume, etc.)',
      code: '''// Activity Lifecycle Tracer
// Logs all Activity lifecycle events

Java.perform(function() {
    var Activity = Java.use('android.app.Activity');
    
    Activity.onCreate.overload('android.os.Bundle').implementation = function(bundle) {
        send("[+] onCreate: " + this.getClass().getName());
        return this.onCreate(bundle);
    };
    
    Activity.onResume.implementation = function() {
        send("[+] onResume: " + this.getClass().getName());
        return this.onResume();
    };
    
    Activity.onPause.implementation = function() {
        send("[+] onPause: " + this.getClass().getName());
        return this.onPause();
    };
    
    Activity.onDestroy.implementation = function() {
        send("[+] onDestroy: " + this.getClass().getName());
        return this.onDestroy();
    };
    
    send("Activity lifecycle tracer installed!");
});
''',
      category: frida.ScriptCategory.api,
      isBuiltIn: true,
      createdAt: DateTime.now(),
    ),
    frida.FridaScript(
      id: 'log_intercept',
      name: 'Log.d Interceptor',
      description: 'Intercepts all Log.d() calls and shows their content',
      code: '''// Android Log Interceptor
// Captures all Log.d() calls

Java.perform(function() {
    var Log = Java.use('android.util.Log');
    
    Log.d.overload('java.lang.String', 'java.lang.String').implementation = function(tag, msg) {
        send("[LOG.d] " + tag + ": " + msg);
        return this.d(tag, msg);
    };
    
    Log.i.overload('java.lang.String', 'java.lang.String').implementation = function(tag, msg) {
        send("[LOG.i] " + tag + ": " + msg);
        return this.i(tag, msg);
    };
    
    Log.e.overload('java.lang.String', 'java.lang.String').implementation = function(tag, msg) {
        send("[LOG.e] " + tag + ": " + msg);
        return this.e(tag, msg);
    };
    
    send("Log interceptor installed!");
});
''',
      category: frida.ScriptCategory.api,
      isBuiltIn: true,
      createdAt: DateTime.now(),
    ),
    frida.FridaScript(
      id: 'shared_prefs',
      name: 'SharedPreferences Monitor',
      description: 'Monitors all SharedPreferences read/write operations',
      code: '''// SharedPreferences Monitor
// Tracks all SharedPreferences access

Java.perform(function() {
    var SharedPreferencesImpl = Java.use('android.app.SharedPreferencesImpl');
    var Editor = Java.use('android.app.SharedPreferencesImpl\$EditorImpl');
    
    // Monitor getString
    SharedPreferencesImpl.getString.implementation = function(key, defValue) {
        var value = this.getString(key, defValue);
        send("[PREFS GET] " + key + " = " + value);
        return value;
    };
    
    // Monitor putString
    Editor.putString.implementation = function(key, value) {
        send("[PREFS PUT] " + key + " = " + value);
        return this.putString(key, value);
    };
    
    // Monitor commit
    Editor.commit.implementation = function() {
        send("[PREFS] commit() called");
        return this.commit();
    };
    
    send("SharedPreferences monitor installed!");
});
''',
      category: frida.ScriptCategory.filesystem,
      isBuiltIn: true,
      createdAt: DateTime.now(),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _loadUserScripts();
    _gadgetService.init();
    platform.setMethodCallHandler(_handleNativeCall);
  }

  @override
  void dispose() {
    _codeController.dispose();
    _nameController.dispose();
    _outputController.dispose();
    _toastTimer?.cancel();
    super.dispose();
  }

  Future<dynamic> _handleNativeCall(MethodCall call) async {
    if (call.method == 'onLog') {
      final message = call.arguments['message'] as String;
      _addOutput(message);
    }
  }

  void _addOutput(String message) {
    if (!mounted) return;
    setState(() {
      _output.add('[${_timeStamp()}] $message');
    });
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_outputController.hasClients) {
        _outputController.animateTo(
          _outputController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _timeStamp() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
  }

  Future<void> _loadUserScripts() async {
    final prefs = await SharedPreferences.getInstance();
    final scriptsJson = prefs.getStringList(_scriptsKey) ?? [];
    
    setState(() {
      _userScripts = scriptsJson
          .map((json) => frida.FridaScript.fromJson(jsonDecode(json)))
          .toList();
    });
  }

  Future<void> _saveUserScripts() async {
    final prefs = await SharedPreferences.getInstance();
    final scriptsJson = _userScripts
        .map((script) => jsonEncode(script.toJson()))
        .toList();
    await prefs.setStringList(_scriptsKey, scriptsJson);
  }

  void _createNewScript() {
    _nameController.text = '';
    _codeController.text = '''// New Frida Script
// Write your JavaScript code here

Java.perform(function() {
    // Your hooking code goes here
    send("Script loaded!");
});
''';
    
    showDialog(
      context: context,
      builder: (context) => _buildScriptDialog(isNew: true),
    );
  }

  void _editScript(frida.FridaScript script) {
    _nameController.text = script.name;
    _codeController.text = script.code;
    _selectedScript = script;
    
    showDialog(
      context: context,
      builder: (context) => _buildScriptDialog(isNew: false, script: script),
    );
  }

  Widget _buildScriptDialog({required bool isNew, frida.FridaScript? script}) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.85,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isNew ? Icons.add_circle : Icons.edit,
                  color: Colors.deepPurple,
                ),
                const SizedBox(width: 8),
                Text(
                  isNew ? 'Create New Script' : 'Edit Script',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Script Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.label),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: TextField(
                  controller: _codeController,
                  maxLines: null,
                  expands: true,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 13,
                    color: Colors.greenAccent,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: InputBorder.none,
                    hintText: 'Enter your Frida JavaScript code...',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                if (!isNew && script != null && !script.isBuiltIn)
                  TextButton(
                    onPressed: () {
                      _deleteScript(script);
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Delete'),
                  ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    _saveScript(isNew, script);
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.save, size: 18),
                  label: const Text('Save'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _saveScript(bool isNew, frida.FridaScript? existingScript) {
    final name = _nameController.text.trim();
    final code = _codeController.text;
    
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a script name')),
      );
      return;
    }
    
    if (isNew) {
      final newScript = frida.FridaScript(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: name,
        description: 'Custom user script',
        code: code,
        category: frida.ScriptCategory.custom,
        isBuiltIn: false,
        createdAt: DateTime.now(),
      );
      setState(() {
        _userScripts.add(newScript);
      });
    } else if (existingScript != null) {
      final index = _userScripts.indexWhere((s) => s.id == existingScript.id);
      if (index != -1) {
        setState(() {
          _userScripts[index] = existingScript.copyWith(
            name: name,
            code: code,
          );
        });
      }
    }
    
    _saveUserScripts();
    _addOutput('Script "$name" saved');
  }

  void _deleteScript(frida.FridaScript script) {
    setState(() {
      _userScripts.removeWhere((s) => s.id == script.id);
    });
    _saveUserScripts();
    _addOutput('Script "${script.name}" deleted');
  }

  Future<void> _executeScript(frida.FridaScript script) async {
    if (widget.connectedApp == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Not connected to any app. Connect first from Gadget Monitor.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    
    setState(() => _isExecuting = true);
    _addOutput('Executing script: ${script.name}...');
    
    try {
      final result = await platform.invokeMethod('executeScript', {
        'script': script.code,
      });
      
      _addOutput('✓ Script executed successfully');
      if (result != null && result.toString().isNotEmpty) {
        _addOutput('Response: $result');
      }
      
      setState(() => _scriptRunning = true);
      
    } catch (e) {
      _addOutput('❌ Execution failed: $e');
    } finally {
      setState(() => _isExecuting = false);
    }
  }

  /// Inject APK with embedded script and install it
  Future<void> _injectWithScript(frida.FridaScript script) async {
    final apkPath = _selectedApkPath ?? widget.apkPath;
    
    if (apkPath == null || apkPath.isEmpty) {
      // Show dialog to select APK
      await _showSelectApkDialog();
      return;
    }

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.memory, color: Colors.deepPurple),
            const SizedBox(width: 8),
            const Text('Inject with Script'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This will create a new APK with the script "${script.name}" embedded.'),
            const SizedBox(height: 12),
            const Text(
              'The script will automatically run when the app starts.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'APK: ${apkPath.split('/').last}',
                style: const TextStyle(fontFamily: 'monospace', fontSize: 11),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.rocket_launch, size: 18),
            label: const Text('Inject & Install'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() => _isInjecting = true);
    _addOutput('Starting injection with script: ${script.name}');

    try {
      // Generate output path
      final inputFile = File(apkPath);
      final baseName = inputFile.path.split('/').last.replaceAll('.apk', '');
      final outputPath = '/storage/emulated/0/Download/${baseName}_script.apk';

      _addOutput('Injecting gadget with embedded script...');
      
      // Pass scriptContent to embed the script directly in the APK
      final result = await _gadgetService.injectGadget(
        apkPath: apkPath,
        outputPath: outputPath,
        mode: FridaGadgetService.modeScript,
        scriptContent: script.code,  // This embeds the script in the APK
        onProgress: (message) {
          _addOutput(message);
        },
      );

      if (result.success) {
        _addOutput('✓ Injection successful: $outputPath');
        
        // Ask to install
        final installConfirmed = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text('Injection Complete'),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('APK created with embedded script!'),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'Script will auto-run when app starts',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Later'),
              ),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context, true),
                icon: const Icon(Icons.install_mobile, size: 18),
                label: const Text('Install'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
        );

        if (installConfirmed == true) {
          _addOutput('Installing APK...');
          try {
            await platform.invokeMethod('installApk', {'path': outputPath});
            _addOutput('✓ APK installed!');
            _addOutput('🚀 Launch the app - script will auto-run!');
          } catch (e) {
            _addOutput('⚠️ Installation failed: $e');
            _addOutput('You can manually install from: $outputPath');
          }
        }
      } else {
        _addOutput('❌ Injection failed: ${result.error}');
      }
    } catch (e) {
      _addOutput('❌ Error: $e');
    } finally {
      setState(() => _isInjecting = false);
    }
  }

  /// Show dialog to select APK file
  Future<void> _showSelectApkDialog() async {
    final pathController = TextEditingController(
      text: _selectedApkPath ?? '/storage/emulated/0/Download/',
    );

    final result = await showDialog<String?>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.folder_open, color: Colors.deepPurple),
            SizedBox(width: 8),
            Text('Select APK'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter the path to the APK file you want to inject:',
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: pathController,
              decoration: const InputDecoration(
                labelText: 'APK Path',
                hintText: '/storage/emulated/0/Download/app.apk',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
            const SizedBox(height: 12),
            const Text(
              'Tip: Use the Gadget Injection screen for file browsing.',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final path = pathController.text.trim();
              if (path.isNotEmpty && path.endsWith('.apk')) {
                Navigator.pop(context, path);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please enter a valid APK path'),
                    backgroundColor: Colors.orange,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            child: const Text('Select'),
          ),
        ],
      ),
    );

    if (result != null) {
      setState(() => _selectedApkPath = result);
      _addOutput('Selected APK: $result');
    }
  }

  void _clearOutput() {
    setState(() => _output.clear());
  }

  @override
  Widget build(BuildContext context) {
    final allScripts = [..._builtInScripts, ..._userScripts];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Script Console'),
        actions: [
          if (widget.connectedApp != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Chip(
                avatar: const Icon(Icons.check_circle, size: 16, color: Colors.green),
                label: Text(
                  widget.connectedApp!.split('.').last,
                  style: const TextStyle(fontSize: 11),
                ),
                backgroundColor: Colors.green.withOpacity(0.2),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.folder_open),
            onPressed: _showSelectApkDialog,
            tooltip: 'Select APK',
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _createNewScript,
            tooltip: 'Create Script',
          ),
        ],
      ),
      body: Column(
        children: [
          // Selected APK display
          if (_selectedApkPath != null || widget.apkPath != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: Colors.green.withOpacity(0.1),
              child: Row(
                children: [
                  const Icon(Icons.android, color: Colors.green, size: 18),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'APK: ${(_selectedApkPath ?? widget.apkPath)!.split('/').last}',
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 11,
                        color: Colors.green,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 16, color: Colors.green),
                    onPressed: () => setState(() => _selectedApkPath = null),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    tooltip: 'Clear selection',
                  ),
                ],
              ),
            ),
          // Info banner about script modes
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.blue.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.info_outline, color: Colors.blue, size: 18),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Script Execution Modes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  '• Inject: Embeds script into APK and re-installs (recommended)\n'
                  '• Run: Sends script to connected gadget (requires Frida client)',
                  style: TextStyle(fontSize: 11, color: Colors.blue),
                ),
              ],
            ),
          ),
          // Connection status
          if (widget.connectedApp == null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: Colors.orange.withOpacity(0.2),
              child: const Row(
                children: [
                  Icon(Icons.warning, color: Colors.orange, size: 18),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Not connected. Use "Inject" to embed scripts into APKs.',
                      style: TextStyle(color: Colors.orange, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          
          // Scripts list
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(Icons.code, size: 18, color: Colors.deepPurple),
                      const SizedBox(width: 8),
                      const Text(
                        'Available Scripts',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '${allScripts.length} scripts',
                        style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allScripts.length,
                    itemBuilder: (context, index) {
                      final script = allScripts[index];
                      final isBuiltIn = script.isBuiltIn;
                      
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: isBuiltIn
                                ? Colors.blue.withOpacity(0.2)
                                : Colors.deepPurple.withOpacity(0.2),
                            child: Text(
                              script.category.icon,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  script.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              if (isBuiltIn)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    'Built-in',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          subtitle: Text(
                            script.description,
                            style: const TextStyle(fontSize: 11),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.visibility, size: 18),
                                onPressed: () => _editScript(script),
                                tooltip: isBuiltIn ? 'View' : 'Edit',
                              ),
                              const SizedBox(width: 4),
                              // Inject button - always show, will prompt for APK if needed
                              _isInjecting
                                  ? const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Colors.deepPurple,
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: OutlinedButton(
                                        onPressed: () => _injectWithScript(script),
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.deepPurple,
                                          side: const BorderSide(color: Colors.deepPurple),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                          ),
                                          minimumSize: const Size(50, 32),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.memory, size: 14),
                                            SizedBox(width: 4),
                                            Text(
                                              'Inject',
                                              style: TextStyle(fontSize: 11),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                              _isExecuting
                                  ? const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : ElevatedButton(
                                      onPressed: () => _executeScript(script),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF00D084),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        minimumSize: const Size(60, 32),
                                      ),
                                      child: const Text(
                                        'Run',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          
          const Divider(height: 1),
          
          // Output console
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Icon(Icons.terminal, size: 16, color: Colors.green),
                        const SizedBox(width: 8),
                        const Text(
                          'Output',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 13,
                          ),
                        ),
                        if (_scriptRunning)
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  size: 12,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Running',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.copy,
                            size: 16,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            final text = _output.join('\n');
                            Clipboard.setData(ClipboardData(text: text));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Output copied!')),
                            );
                          },
                          tooltip: 'Copy',
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        const SizedBox(width: 12),
                        IconButton(
                          icon: const Icon(
                            Icons.clear_all,
                            size: 16,
                            color: Colors.grey,
                          ),
                          onPressed: _clearOutput,
                          tooltip: 'Clear',
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1, color: Colors.grey),
                  Expanded(
                    child: ListView.builder(
                      controller: _outputController,
                      padding: const EdgeInsets.all(8),
                      itemCount: _output.length,
                      itemBuilder: (context, index) {
                        final line = _output[index];
                        Color color = Colors.grey.shade400;
                        if (line.contains('✓') || line.contains('success')) {
                          color = Colors.green;
                        } else if (line.contains('❌') || line.contains('error')) {
                          color = Colors.red;
                        } else if (line.contains('Toast') || line.contains('[')) {
                          color = Colors.cyan;
                        }
                        
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Text(
                            line,
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 11,
                              color: color,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _createNewScript,
        icon: const Icon(Icons.add),
        label: const Text('New Script'),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
