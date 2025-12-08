import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../services/termux_service.dart';

/// Screen for Termux integration - run commands, scripts, and manage Frida via Termux
class TermuxScreen extends StatefulWidget {
  const TermuxScreen({super.key});

  @override
  State<TermuxScreen> createState() => _TermuxScreenState();
}

class _TermuxScreenState extends State<TermuxScreen> with SingleTickerProviderStateMixin {
  final _termuxService = TermuxService();
  final _commandController = TextEditingController();
  final _scriptController = TextEditingController();
  final _outputController = ScrollController();
  
  late TabController _tabController;
  
  bool _isTermuxInstalled = false;
  bool _isTermuxApiInstalled = false;
  bool _isChecking = true;
  bool _isExecuting = false;
  
  final List<_CommandHistoryItem> _commandHistory = [];
  final List<String> _output = [];
  int _selectedQuickCommand = -1;
  
  // Quick commands for common operations
  final List<_QuickCommand> _quickCommands = [
    const _QuickCommand(
      name: 'Install Frida Tools',
      icon: Icons.download,
      command: 'pkg update -y && pkg install -y python && pip install frida-tools',
      description: 'Install Frida CLI tools via pip',
    ),
    const _QuickCommand(
      name: 'Start Frida Server',
      icon: Icons.play_arrow,
      command: 'su -c "/data/local/tmp/frida-server -l 0.0.0.0:27042 &"',
      description: 'Start frida-server (requires root)',
    ),
    const _QuickCommand(
      name: 'List Processes',
      icon: Icons.list,
      command: 'frida-ps -U',
      description: 'List running processes via Frida',
    ),
    const _QuickCommand(
      name: 'Install APKTool',
      icon: Icons.build,
      command: 'pkg install -y apktool',
      description: 'Install APKTool for APK decompilation',
    ),
    const _QuickCommand(
      name: 'Install Jadx',
      icon: Icons.code,
      command: 'pkg install -y jadx',
      description: 'Install JADX for Java decompilation',
    ),
    const _QuickCommand(
      name: 'Check Root',
      icon: Icons.security,
      command: 'su -c "id"',
      description: 'Check if device has root access',
    ),
    const _QuickCommand(
      name: 'Install Objection',
      icon: Icons.shield,
      command: 'pip install objection',
      description: 'Install Objection toolkit',
    ),
    const _QuickCommand(
      name: 'Update Packages',
      icon: Icons.refresh,
      command: 'pkg update -y && pkg upgrade -y',
      description: 'Update all Termux packages',
    ),
  ];
  
  // Script templates
  final List<_ScriptTemplate> _scriptTemplates = [
    const _ScriptTemplate(
      name: 'Frida Spawn Script',
      description: 'Spawn app with Frida and run script',
      content: '''#!/data/data/com.termux/files/usr/bin/bash
# Frida Spawn Script
# Usage: ./frida_spawn.sh <package_name> <script.js>

PACKAGE=\$1
SCRIPT=\$2

if [ -z "\$PACKAGE" ] || [ -z "\$SCRIPT" ]; then
    echo "Usage: ./frida_spawn.sh <package_name> <script.js>"
    exit 1
fi

frida -U -f \$PACKAGE -l \$SCRIPT --no-pause
''',
    ),
    const _ScriptTemplate(
      name: 'APK Decompile Script',
      description: 'Decompile APK with apktool',
      content: '''#!/data/data/com.termux/files/usr/bin/bash
# APK Decompile Script
# Usage: ./decompile.sh <apk_path>

APK_PATH=\$1

if [ -z "\$APK_PATH" ]; then
    echo "Usage: ./decompile.sh <apk_path>"
    exit 1
fi

OUTPUT_DIR="\${APK_PATH%.apk}_decompiled"
apktool d "\$APK_PATH" -o "\$OUTPUT_DIR" -f
echo "Decompiled to: \$OUTPUT_DIR"
''',
    ),
    const _ScriptTemplate(
      name: 'Frida Server Manager',
      description: 'Start/stop frida-server with root',
      content: '''#!/data/data/com.termux/files/usr/bin/bash
# Frida Server Manager
# Usage: ./frida_server.sh [start|stop|status]

ACTION=\${1:-status}
FRIDA_SERVER="/data/local/tmp/frida-server"

case \$ACTION in
    start)
        su -c "\$FRIDA_SERVER -l 0.0.0.0:27042 &"
        echo "Frida server started on port 27042"
        ;;
    stop)
        su -c "pkill -f frida-server"
        echo "Frida server stopped"
        ;;
    status)
        if su -c "pgrep -f frida-server" > /dev/null; then
            echo "Frida server is running"
        else
            echo "Frida server is not running"
        fi
        ;;
    *)
        echo "Usage: ./frida_server.sh [start|stop|status]"
        ;;
esac
''',
    ),
    const _ScriptTemplate(
      name: 'SSL Pinning Bypass',
      description: 'Run SSL pinning bypass script',
      content: '''#!/data/data/com.termux/files/usr/bin/bash
# SSL Pinning Bypass
# Usage: ./ssl_bypass.sh <package_name>

PACKAGE=\$1

if [ -z "\$PACKAGE" ]; then
    echo "Usage: ./ssl_bypass.sh <package_name>"
    exit 1
fi

# Create temporary bypass script
cat > /tmp/ssl_bypass.js << 'EOF'
Java.perform(function() {
    var TrustManagerImpl = Java.use('com.android.org.conscrypt.TrustManagerImpl');
    TrustManagerImpl.verifyChain.implementation = function() {
        console.log('[+] SSL Pinning Bypassed');
        return arguments[0];
    };
});
EOF

frida -U -f \$PACKAGE -l /tmp/ssl_bypass.js --no-pause
''',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _checkTermuxInstallation();
    _addOutput('Termux Console initialized');
  }

  @override
  void dispose() {
    _commandController.dispose();
    _scriptController.dispose();
    _outputController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _addOutput(String message) {
    setState(() {
      _output.add('[${DateTime.now().toString().split('.').first}] $message');
    });
    // Auto-scroll to bottom
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

  Future<void> _checkTermuxInstallation() async {
    setState(() => _isChecking = true);
    
    final status = await _termuxService.checkTermuxInstallation();
    
    setState(() {
      _isTermuxInstalled = status['termux'] ?? false;
      _isTermuxApiInstalled = status['termux_api'] ?? false;
      _isChecking = false;
    });
    
    if (_isTermuxInstalled) {
      _addOutput('✓ Termux is installed');
      if (_isTermuxApiInstalled) {
        _addOutput('✓ Termux:API is installed');
      } else {
        _addOutput('⚠ Termux:API not installed - some features may be limited');
      }
    } else {
      _addOutput('✗ Termux not installed');
      _addOutput('Please install Termux from F-Droid');
    }
  }

  Future<void> _runCommand(String command) async {
    if (command.isEmpty) return;
    
    setState(() => _isExecuting = true);
    _addOutput('> $command');
    
    // Add to history
    _commandHistory.insert(0, _CommandHistoryItem(
      command: command,
      timestamp: DateTime.now(),
    ));
    
    final success = await _termuxService.runCommand(command);
    
    if (success) {
      _addOutput('Command sent to Termux');
    } else {
      _addOutput('Failed to send command to Termux');
    }
    
    setState(() {
      _isExecuting = false;
      _commandController.clear();
    });
  }

  Future<void> _createScript(String name, String content) async {
    setState(() => _isExecuting = true);
    _addOutput('Creating script: $name');
    
    final success = await _termuxService.createScript(name, content);
    
    if (success) {
      _addOutput('✓ Script created: $name');
      _addOutput('Run with: ./$name');
    } else {
      _addOutput('✗ Failed to create script');
    }
    
    setState(() => _isExecuting = false);
  }

  Future<void> _openTermux() async {
    final success = await _termuxService.openTermux();
    if (!success) {
      _addOutput('Failed to open Termux');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.terminal, size: 24),
            SizedBox(width: 8),
            Text('Termux Console'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.open_in_new),
            tooltip: 'Open Termux',
            onPressed: _openTermux,
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Check Installation',
            onPressed: _checkTermuxInstallation,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.terminal), text: 'Commands'),
            Tab(icon: Icon(Icons.flash_on), text: 'Quick'),
            Tab(icon: Icon(Icons.description), text: 'Scripts'),
          ],
        ),
      ),
      body: Column(
        children: [
          // Status bar
          _buildStatusBar(),
          
          // Tab content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildCommandsTab(),
                _buildQuickTab(),
                _buildScriptsTab(),
              ],
            ),
          ),
          
          // Output console
          _buildOutputConsole(),
        ],
      ),
    );
  }

  Widget _buildStatusBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Row(
        children: [
          Icon(
            _isTermuxInstalled ? Icons.check_circle : Icons.error,
            size: 16,
            color: _isTermuxInstalled ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 4),
          Text(
            _isChecking
                ? 'Checking...'
                : _isTermuxInstalled
                    ? 'Termux Ready'
                    : 'Termux Not Found',
            style: const TextStyle(fontSize: 12),
          ),
          const Spacer(),
          if (_isTermuxApiInstalled)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                'API',
                style: TextStyle(fontSize: 10, color: Colors.green),
              ),
            ),
          const SizedBox(width: 8),
          if (_isExecuting)
            const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
        ],
      ),
    );
  }

  Widget _buildCommandsTab() {
    return Column(
      children: [
        // Command input
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _commandController,
                  decoration: InputDecoration(
                    hintText: 'Enter command...',
                    prefixIcon: const Icon(Icons.chevron_right),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  ),
                  onSubmitted: _runCommand,
                  enabled: _isTermuxInstalled && !_isExecuting,
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton.icon(
                onPressed: _isTermuxInstalled && !_isExecuting
                    ? () => _runCommand(_commandController.text)
                    : null,
                icon: const Icon(Icons.send, size: 18),
                label: const Text('Run'),
              ),
            ],
          ),
        ),
        
        // Command history
        Expanded(
          child: _commandHistory.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.history,
                        size: 48,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'No command history',
                        style: TextStyle(color: Colors.grey.withOpacity(0.7)),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: _commandHistory.length,
                  itemBuilder: (context, index) {
                    final item = _commandHistory[index];
                    return Card(
                      child: ListTile(
                        dense: true,
                        leading: const Icon(Icons.history, size: 20),
                        title: Text(
                          item.command,
                          style: const TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          item.timestamp.toString().split('.').first,
                          style: const TextStyle(fontSize: 10),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.replay, size: 18),
                          onPressed: () {
                            _commandController.text = item.command;
                          },
                        ),
                        onTap: () => _runCommand(item.command),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildQuickTab() {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: _quickCommands.length,
      itemBuilder: (context, index) {
        final cmd = _quickCommands[index];
        final isSelected = _selectedQuickCommand == index;
        
        return Card(
          elevation: isSelected ? 4 : 1,
          color: isSelected
              ? Theme.of(context).colorScheme.primaryContainer
              : null,
          child: InkWell(
            onTap: _isTermuxInstalled && !_isExecuting
                ? () {
                    setState(() => _selectedQuickCommand = index);
                    _runCommand(cmd.command);
                  }
                : null,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(cmd.icon, size: 28),
                  const SizedBox(height: 8),
                  Text(
                    cmd.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    cmd.description,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildScriptsTab() {
    return Column(
      children: [
        // Script templates
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: _scriptTemplates.length,
            itemBuilder: (context, index) {
              final template = _scriptTemplates[index];
              return Card(
                child: ExpansionTile(
                  leading: const Icon(Icons.description),
                  title: Text(template.name),
                  subtitle: Text(
                    template.description,
                    style: const TextStyle(fontSize: 12),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: SelectableText(
                              template.content,
                              style: const TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 11,
                                color: Colors.lightGreenAccent,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton.icon(
                                icon: const Icon(Icons.copy, size: 16),
                                label: const Text('Copy'),
                                onPressed: () {
                                  Clipboard.setData(ClipboardData(text: template.content));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Copied to clipboard')),
                                  );
                                },
                              ),
                              const SizedBox(width: 8),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.save, size: 16),
                                label: const Text('Create'),
                                onPressed: _isTermuxInstalled && !_isExecuting
                                    ? () => _showCreateScriptDialog(template)
                                    : null,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        
        // Custom script button
        Padding(
          padding: const EdgeInsets.all(12),
          child: ElevatedButton.icon(
            onPressed: _isTermuxInstalled ? () => _showCustomScriptDialog() : null,
            icon: const Icon(Icons.add),
            label: const Text('Create Custom Script'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOutputConsole() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: Border(
          top: BorderSide(color: Colors.grey[700]!),
        ),
      ),
      child: Column(
        children: [
          // Console header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: Colors.grey[850],
            child: Row(
              children: [
                const Icon(Icons.terminal, size: 14, color: Colors.white70),
                const SizedBox(width: 4),
                const Text(
                  'Output',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.clear_all, size: 16),
                  color: Colors.white70,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => setState(() => _output.clear()),
                  tooltip: 'Clear',
                ),
              ],
            ),
          ),
          
          // Console output
          Expanded(
            child: ListView.builder(
              controller: _outputController,
              padding: const EdgeInsets.all(8),
              itemCount: _output.length,
              itemBuilder: (context, index) {
                final line = _output[index];
                Color textColor = Colors.white70;
                
                if (line.contains('✓') || line.contains('Success')) {
                  textColor = Colors.lightGreenAccent;
                } else if (line.contains('✗') || line.contains('Failed') || line.contains('Error')) {
                  textColor = Colors.redAccent;
                } else if (line.contains('⚠') || line.contains('Warning')) {
                  textColor = Colors.orangeAccent;
                } else if (line.startsWith('[') && line.contains('>')) {
                  textColor = Colors.cyanAccent;
                }
                
                return Text(
                  line,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    color: textColor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateScriptDialog(_ScriptTemplate template) {
    final nameController = TextEditingController(
      text: '${template.name.toLowerCase().replaceAll(' ', '_')}.sh',
    );
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Script'),
        content: TextField(
          controller: nameController,
          decoration: const InputDecoration(
            labelText: 'Script Name',
            hintText: 'my_script.sh',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _createScript(nameController.text, template.content);
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _showCustomScriptDialog() {
    final nameController = TextEditingController();
    final contentController = TextEditingController(
      text: '#!/data/data/com.termux/files/usr/bin/bash\n\n# Your script here\n',
    );
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Custom Script'),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Script Name',
                  hintText: 'my_script.sh',
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: contentController,
                decoration: const InputDecoration(
                  labelText: 'Script Content',
                  border: OutlineInputBorder(),
                ),
                maxLines: 10,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty) {
                Navigator.pop(context);
                _createScript(nameController.text, contentController.text);
              }
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}

class _QuickCommand {
  final String name;
  final IconData icon;
  final String command;
  final String description;
  
  const _QuickCommand({
    required this.name,
    required this.icon,
    required this.command,
    required this.description,
  });
}

class _ScriptTemplate {
  final String name;
  final String description;
  final String content;
  
  const _ScriptTemplate({
    required this.name,
    required this.description,
    required this.content,
  });
}

class _CommandHistoryItem {
  final String command;
  final DateTime timestamp;
  
  const _CommandHistoryItem({
    required this.command,
    required this.timestamp,
  });
}
