import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'script_console_screen.dart';

/// Screen for connecting to Frida Gadget and monitoring injected apps
class LocalGadgetScreen extends StatefulWidget {
  const LocalGadgetScreen({super.key});

  @override
  State<LocalGadgetScreen> createState() => _LocalGadgetScreenState();
}

class _LocalGadgetScreenState extends State<LocalGadgetScreen> {
  static const platform = MethodChannel('com.droidanalyst/local_gadget');

  final _logs = <LogEntry>[];
  final _scrollController = ScrollController();

  bool _isConnected = false;
  bool _isConnecting = false;
  String? _connectedApp;
  String? _connectedAppPath; // APK path for connected app
  List<Map<String, dynamic>> _appsWithGadget = [];
  bool _loadingApps = false;

  @override
  void initState() {
    super.initState();
    _loadAppsWithGadget();

    // Set up message handler for logs from native
    platform.setMethodCallHandler(_handleNativeCall);
  }

  @override
  void dispose() {
    _disconnect();
    _scrollController.dispose();
    super.dispose();
  }

  Future<dynamic> _handleNativeCall(MethodCall call) async {
    switch (call.method) {
      case 'onLog':
        final message = call.arguments['message'] as String;
        final level = call.arguments['level'] as String? ?? 'info';
        _addLog(message, level);
        break;
      case 'onDisconnected':
        if (mounted) {
          setState(() {
            _isConnected = false;
            _connectedApp = null;
          });
          _addLog('Disconnected from gadget', 'warning');
        }
        break;
    }
  }

  void _addLog(String message, [String level = 'info']) {
    if (!mounted) return;
    setState(() {
      _logs.add(LogEntry(
        time: DateTime.now(),
        message: message,
        level: level,
      ));
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _loadAppsWithGadget() async {
    setState(() => _loadingApps = true);
    _addLog('Scanning for apps with Frida Gadget...');

    try {
      final result = await platform.invokeMethod('getSharedUidApps');
      if (result is List) {
        final allApps = result.map((entry) {
          final rawMap = Map<String, dynamic>.from(entry as Map);
          final config = rawMap['gadgetConfig'];
          if (config is Map) {
            rawMap['gadgetConfig'] = Map<String, dynamic>.from(config.map(
              (key, value) => MapEntry(key.toString(), value),
            ));
          }
          return rawMap;
        }).toList();
        // Filter only apps with gadget
        setState(() {
          _appsWithGadget =
              allApps.where((app) => app['hasGadget'] == true).toList();
        });
        _addLog('Found ${_appsWithGadget.length} apps with Frida Gadget',
            'success');
      }
    } catch (e) {
      _addLog('Failed to scan apps: $e', 'error');
    } finally {
      setState(() => _loadingApps = false);
    }
  }

  Future<void> _testConnection(Map<String, dynamic> app) async {
    final packageName = app['packageName'] as String;
    final sourceDir = app['sourceDir'] as String?;
    final config = app['gadgetConfig'] as Map<String, dynamic>?;
    final dynamicPort = app['gadgetPort'] ?? config?['port'];
    final port = switch (dynamicPort) {
      final int value => value,
      final String value => int.tryParse(value) ?? 27042,
      _ => 27042,
    };
    final address = config?['address']?.toString();
    final addressLabel =
        (address != null && address.startsWith('localabstract:'))
            ? address.split(':').last
            : 'tcp:$port';

    setState(() => _isConnecting = true);
    _addLog('Testing connection to $packageName on $addressLabel...');

    try {
      final result = await platform.invokeMethod('connectToGadget', {
        'packageName': packageName,
        'port': port,
      });

      if (result == true) {
        setState(() {
          _isConnected = true;
          _connectedApp = packageName;
          _connectedAppPath = sourceDir;
        });
        _addLog(
            '✓ Connected! Gadget is responding on ${addressLabel.replaceFirst('tcp:', 'port ')}',
            'success');
        _addLog('ℹ️ The app is running with Frida Gadget active', 'info');
      } else {
        _addLog(
            '❌ Could not connect on ${addressLabel.replaceFirst('tcp:', 'port ')} - is the app running?',
            'error');
        _addLog('ℹ️ Launch the modified app first, it will wait for connection',
            'info');
      }
    } catch (e) {
      _addLog('Connection error: $e', 'error');
    } finally {
      if (mounted) {
        setState(() => _isConnecting = false);
      }
    }
  }

  Future<void> _disconnect() async {
    try {
      await platform.invokeMethod('disconnect');
    } catch (e) {
      // Ignore
    }
    if (mounted) {
      setState(() {
        _isConnected = false;
        _connectedApp = null;
        _connectedAppPath = null;
      });
    }
  }

  void _clearLogs() {
    setState(() => _logs.clear());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gadget Monitor'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadAppsWithGadget,
            tooltip: 'Refresh',
          ),
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: _showHelp,
            tooltip: 'Help',
          ),
        ],
      ),
      body: Column(
        children: [
          // Connection Status
          if (_isConnected)
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.green.withOpacity(0.2),
              child: Row(
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Connected to $_connectedApp',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Frida Gadget is active and listening',
                          style: TextStyle(color: Colors.green, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ScriptConsoleScreen(
                          connectedApp: _connectedApp,
                          apkPath: _connectedAppPath,
                        ),
                      ),
                    ),
                    icon: const Icon(Icons.code, size: 16),
                    label: const Text('Scripts'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: _disconnect,
                    child: const Text('Disconnect'),
                  ),
                ],
              ),
            ),

          // Apps with Gadget List
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const Icon(Icons.bug_report,
                    size: 18, color: Colors.deepPurple),
                const SizedBox(width: 8),
                const Text(
                  'Apps with Frida Gadget',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                if (_loadingApps)
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
              ],
            ),
          ),

          // Apps List
          Expanded(
            flex: 2,
            child: _appsWithGadget.isEmpty
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.search_off,
                              size: 48, color: Colors.grey.shade600),
                          const SizedBox(height: 12),
                          const Text(
                            'No gadget-injected apps found',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Use "Inject Gadget" to modify an APK first',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: _appsWithGadget.length,
                    itemBuilder: (context, index) {
                      final app = _appsWithGadget[index];
                      final packageName = app['packageName'] as String;
                      final appName = app['appName'] as String? ?? packageName;
                      final isThisConnected = _connectedApp == packageName;
                      final config =
                          app['gadgetConfig'] as Map<String, dynamic>?;
                      final address = config?['address']?.toString();
                      final displayPort = (address != null &&
                              address.startsWith('localabstract:'))
                          ? 'Socket: ${address.split(':').last}'
                          : 'Port: ${app['gadgetPort'] ?? 27042}';

                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        color: isThisConnected
                            ? Colors.green.withOpacity(0.1)
                            : null,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: isThisConnected
                                ? Colors.green
                                : Colors.deepPurple,
                            child: Icon(
                              isThisConnected ? Icons.check : Icons.bug_report,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          title: Text(appName),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  packageName,
                                  style: const TextStyle(fontSize: 11),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  displayPort,
                                  style: const TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          isThreeLine: true,
                          trailing: _isConnecting
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child:
                                      CircularProgressIndicator(strokeWidth: 2),
                                )
                              : ElevatedButton(
                                  onPressed: isThisConnected
                                      ? null
                                      : () => _testConnection(app),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF00D084),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                  ),
                                  child: Text(
                                      isThisConnected ? 'Connected' : 'Test'),
                                ),
                        ),
                      );
                    },
                  ),
          ),

          const Divider(height: 1),

          // Console Output
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
                        const Icon(Icons.terminal,
                            size: 16, color: Colors.green),
                        const SizedBox(width: 8),
                        const Text(
                          'Console',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 13,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.copy,
                              size: 16, color: Colors.grey),
                          onPressed: () {
                            final text =
                                _logs.map((l) => l.toString()).join('\n');
                            Clipboard.setData(ClipboardData(text: text));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Logs copied!')),
                            );
                          },
                          tooltip: 'Copy',
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        const SizedBox(width: 12),
                        IconButton(
                          icon: const Icon(Icons.clear_all,
                              size: 16, color: Colors.grey),
                          onPressed: _clearLogs,
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
                      controller: _scrollController,
                      padding: const EdgeInsets.all(8),
                      itemCount: _logs.length,
                      itemBuilder: (context, index) {
                        final log = _logs[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Text(
                            log.toString(),
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 11,
                              color: log.color,
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
    );
  }

  void _showHelp() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.help_outline, color: Colors.blue),
            SizedBox(width: 8),
            Text('How to Use'),
          ],
        ),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Workflow:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Use "Inject Gadget" to patch an APK\n'
                '2. Install the patched APK\n'
                '3. Launch the patched app\n'
                '4. Come here and tap "Test" to verify connection\n'
                '5. If connected, the gadget is running!',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 16),
              Text(
                'Embedded Script Mode:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'For automatic script execution, enable "Embed Script" '
                'when injecting the gadget. The script will run '
                'automatically when the app starts.',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 16),
              Text(
                'Tip: If connection fails, make sure the patched app '
                'is actually running. Some apps may crash if they detect tampering.',
                style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }
}

class LogEntry {
  final DateTime time;
  final String message;
  final String level;

  LogEntry({
    required this.time,
    required this.message,
    this.level = 'info',
  });

  Color get color {
    switch (level) {
      case 'error':
        return Colors.red;
      case 'warning':
        return Colors.orange;
      case 'success':
        return Colors.green;
      default:
        return Colors.grey.shade400;
    }
  }

  @override
  String toString() {
    final timeStr =
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}';
    return '[$timeStr] $message';
  }
}
