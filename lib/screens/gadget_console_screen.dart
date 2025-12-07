import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Screen for connecting to and interacting with Frida Gadget
class GadgetConsoleScreen extends StatefulWidget {
  final String? host;
  final int port;
  
  const GadgetConsoleScreen({
    super.key,
    this.host,
    this.port = 27042,
  });

  @override
  State<GadgetConsoleScreen> createState() => _GadgetConsoleScreenState();
}

class _GadgetConsoleScreenState extends State<GadgetConsoleScreen> {
  final _hostController = TextEditingController();
  final _portController = TextEditingController();
  final _logs = <String>[];
  final _scrollController = ScrollController();
  
  Socket? _socket;
  bool _isConnected = false;
  bool _isConnecting = false;
  String? _error;
  String _connectionStatus = 'Not connected';

  @override
  void initState() {
    super.initState();
    _hostController.text = widget.host ?? '127.0.0.1';
    _portController.text = widget.port.toString();
    _addLog('Gadget Console initialized');
    _addLog('Use this to connect to apps with Frida Gadget injected');
  }

  @override
  void dispose() {
    _disconnect();
    _hostController.dispose();
    _portController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _addLog(String message) {
    setState(() {
      _logs.add('[${DateTime.now().toString().split('.').first}] $message');
    });
    // Auto-scroll to bottom
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

  Future<void> _testConnection() async {
    final host = _hostController.text.trim();
    final port = int.tryParse(_portController.text) ?? 27042;
    
    if (host.isEmpty) {
      _addLog('❌ Error: Host address is required');
      return;
    }

    setState(() {
      _isConnecting = true;
      _error = null;
      _connectionStatus = 'Testing connection...';
    });
    
    _addLog('Testing connection to $host:$port...');

    try {
      _socket = await Socket.connect(host, port, timeout: const Duration(seconds: 5));
      
      setState(() {
        _isConnected = true;
        _isConnecting = false;
        _connectionStatus = 'Connected to Frida Gadget';
      });
      
      _addLog('✓ Successfully connected to Frida Gadget!');
      _addLog('✓ The target app is running with Frida Gadget');
      
      // Listen for any data
      _socket!.listen(
        (data) {
          try {
            final message = utf8.decode(data);
            _addLog('📥 Received: ${message.length > 100 ? '${message.substring(0, 100)}...' : message}');
          } catch (e) {
            _addLog('📥 Received ${data.length} bytes (binary data)');
          }
        },
        onError: (error) {
          _addLog('❌ Connection error: $error');
          _disconnect();
        },
        onDone: () {
          _addLog('Connection closed by remote');
          _disconnect();
        },
      );
    } on SocketException catch (e) {
      setState(() {
        _isConnecting = false;
        _connectionStatus = 'Connection failed';
        _error = e.message;
      });
      
      if (e.message.contains('Connection refused')) {
        _addLog('❌ Connection refused - is the gadget-injected app running?');
        _addLog('ℹ️  Make sure to launch the modified APK first');
      } else if (e.message.contains('timed out')) {
        _addLog('❌ Connection timed out');
        _addLog('ℹ️  Check if port forwarding is set up correctly');
      } else {
        _addLog('❌ Socket error: ${e.message}');
      }
    } catch (e) {
      setState(() {
        _isConnecting = false;
        _connectionStatus = 'Connection failed';
        _error = e.toString();
      });
      _addLog('❌ Failed to connect: $e');
    }
  }

  void _disconnect() {
    if (_socket != null) {
      _socket!.destroy();
      _socket = null;
      _addLog('Disconnected');
    }
    setState(() {
      _isConnected = false;
      _isConnecting = false;
      _connectionStatus = 'Disconnected';
    });
  }

  void _clearLogs() {
    setState(() {
      _logs.clear();
    });
  }

  void _showSetupInstructions() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.info_outline, color: Colors.blue),
            SizedBox(width: 8),
            Text('Setup Instructions'),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildStep('1', 'Inject Frida Gadget', 
                'Use the "Inject Gadget" feature to modify your target APK with Frida Gadget'),
              _buildStep('2', 'Install Modified APK', 
                'Install the modified APK on your device (uninstall original first if needed)'),
              _buildStep('3', 'Launch the App', 
                'Launch the modified app. It will pause waiting for Frida connection'),
              _buildStep('4', 'Set Up Port Forwarding', 
                'On your computer, run:\nadb forward tcp:27042 tcp:27042'),
              _buildStep('5', 'Connect', 
                'Use this console to test connection, or use Frida CLI tools on PC'),
              const Divider(),
              const Text(
                'Note: Full Frida scripting requires Frida tools on a computer. '
                'This console is for testing connectivity and basic status.',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
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

  Widget _buildStep(String number, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: const Color(0xFF00D084),
            child: Text(number, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(description, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gadget Console'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: _showSetupInstructions,
            tooltip: 'Setup Instructions',
          ),
        ],
      ),
      body: Column(
        children: [
          // Connection Panel
          Card(
            margin: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        _isConnected ? Icons.check_circle : Icons.radio_button_unchecked,
                        color: _isConnected ? Colors.green : Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _connectionStatus,
                        style: TextStyle(
                          color: _isConnected ? Colors.green : (_error != null ? Colors.red : Colors.grey),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: _hostController,
                          decoration: const InputDecoration(
                            labelText: 'Host',
                            hintText: '127.0.0.1',
                            isDense: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.dns, size: 18),
                          ),
                          enabled: !_isConnected,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          controller: _portController,
                          decoration: const InputDecoration(
                            labelText: 'Port',
                            hintText: '27042',
                            isDense: true,
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          enabled: !_isConnected,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: _isConnecting ? null : (_isConnected ? _disconnect : _testConnection),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isConnected ? Colors.red : const Color(0xFF00D084),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          icon: _isConnecting
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                )
                              : Icon(_isConnected ? Icons.link_off : Icons.link),
                          label: Text(_isConnecting ? 'Connecting...' : (_isConnected ? 'Disconnect' : 'Test Connection')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // Quick Info Card
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            color: Colors.blue.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Colors.blue, size: 20),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ADB Port Forwarding Required',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(const ClipboardData(text: 'adb forward tcp:27042 tcp:27042'));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Command copied!')),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'adb forward tcp:27042 tcp:27042',
                                  style: TextStyle(fontFamily: 'monospace', fontSize: 11),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.copy, size: 14, color: Colors.grey),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 8),
          
          // Console Output
          Expanded(
            child: Card(
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
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
                          'Logs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 13,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.copy, size: 16, color: Colors.grey),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: _logs.join('\n')));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Logs copied!')),
                            );
                          },
                          tooltip: 'Copy logs',
                          iconSize: 16,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        const SizedBox(width: 12),
                        IconButton(
                          icon: const Icon(Icons.clear_all, size: 16, color: Colors.grey),
                          onPressed: _clearLogs,
                          tooltip: 'Clear logs',
                          iconSize: 16,
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
                        Color color = Colors.grey.shade400;
                        if (log.contains('❌') || log.contains('Error') || log.contains('Failed')) {
                          color = Colors.red;
                        } else if (log.contains('✓') || log.contains('success') || log.contains('Successfully')) {
                          color = Colors.green;
                        } else if (log.contains('ℹ️') || log.contains('📥')) {
                          color = Colors.cyan;
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Text(
                            log,
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
    );
  }
}
