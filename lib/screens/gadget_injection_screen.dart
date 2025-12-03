import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../services/frida_gadget_service.dart';
import '../services/apk_patcher_service.dart';
import '../services/android_platform_service.dart';

/// Screen for injecting Frida Gadget into APKs for non-rooted analysis
class GadgetInjectionScreen extends StatefulWidget {
  final String? initialApkPath;
  
  const GadgetInjectionScreen({super.key, this.initialApkPath});

  @override
  State<GadgetInjectionScreen> createState() => _GadgetInjectionScreenState();
}

class _GadgetInjectionScreenState extends State<GadgetInjectionScreen> {
  final _gadgetService = FridaGadgetService();
  final _patcherService = ApkPatcherService();
  final _platformService = AndroidPlatformService();
  
  final _apkPathController = TextEditingController();
  final _outputPathController = TextEditingController();
  final _scriptController = TextEditingController();
  final _portController = TextEditingController(text: '27042');
  
  String _selectedMode = FridaGadgetService.modeListen;
  bool _isProcessing = false;
  List<String> _logs = [];
  GadgetInjectionResult? _result;
  
  // Architecture selection
  final Map<String, bool> _selectedArchs = {
    'arm64-v8a': true,
    'armeabi-v7a': true,
    'x86_64': false,
    'x86': false,
  };

  @override
  void initState() {
    super.initState();
    if (widget.initialApkPath != null) {
      _apkPathController.text = widget.initialApkPath!;
      _generateOutputPath();
    }
    _gadgetService.init();
  }

  @override
  void dispose() {
    _apkPathController.dispose();
    _outputPathController.dispose();
    _scriptController.dispose();
    _portController.dispose();
    super.dispose();
  }

  void _generateOutputPath() {
    final input = _apkPathController.text;
    if (input.isEmpty) return;
    
    final dir = File(input).parent.path;
    final name = input.split(Platform.pathSeparator).last;
    final baseName = name.replaceAll('.apk', '');
    _outputPathController.text = '$dir${Platform.pathSeparator}${baseName}_gadget.apk';
  }

  void _addLog(String message) {
    setState(() {
      _logs.add('[${DateTime.now().toString().split('.').first}] $message');
    });
  }

  Future<void> _injectGadget() async {
    if (_apkPathController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an APK file')),
      );
      return;
    }

    setState(() {
      _isProcessing = true;
      _logs.clear();
      _result = null;
    });

    try {
      _addLog('Starting Frida Gadget injection...');
      _addLog('Mode: $_selectedMode');
      
      final selectedArchsList = _selectedArchs.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();
      
      _addLog('Target architectures: ${selectedArchsList.join(", ")}');

      final result = await _gadgetService.injectGadget(
        apkPath: _apkPathController.text,
        outputPath: _outputPathController.text,
        mode: _selectedMode,
        scriptContent: _selectedMode == FridaGadgetService.modeScript 
            ? _scriptController.text 
            : null,
        targetArchs: selectedArchsList,
        port: int.tryParse(_portController.text) ?? 27042,
      );

      for (final step in result.steps) {
        _addLog(step);
      }

      setState(() {
        _result = result;
        _isProcessing = false;
      });

      if (result.success) {
        _showSuccessDialog(result);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Injection failed: ${result.error}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      _addLog('Error: $e');
      setState(() => _isProcessing = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _showSuccessDialog(GadgetInjectionResult result) {
    final instructions = _gadgetService.getUsageInstructions(
      _selectedMode,
      port: int.tryParse(_portController.text) ?? 27042,
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.green),
            const SizedBox(width: 8),
            const Text('Injection Successful'),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Patched APK saved to:'),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SelectableText(
                  result.outputPath ?? '',
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Usage Instructions:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SelectableText(
                  instructions,
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 11),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
          if (!kIsWeb && _platformService.isAndroid)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
                _installPatchedApk(result.outputPath!);
              },
              icon: const Icon(Icons.install_mobile),
              label: const Text('Install'),
            ),
        ],
      ),
    );
  }

  Future<void> _installPatchedApk(String apkPath) async {
    _addLog('Installing patched APK...');
    
    try {
      // Use ADB to install
      final result = await Process.run('adb', ['install', '-r', apkPath]);
      
      if (result.exitCode == 0) {
        _addLog('APK installed successfully!');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('APK installed successfully!'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        _addLog('Install failed: ${result.stderr}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Install failed: ${result.stderr}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      _addLog('Install error: $e');
    }
  }

  Future<void> _pickApk() async {
    // On Android, show installed apps picker
    if (_platformService.isAndroid) {
      final apps = await _platformService.getInstalledPackages();
      if (!mounted) return;
      
      final selected = await showDialog<InstalledApp>(
        context: context,
        builder: (ctx) => _AppPickerDialog(apps: apps),
      );
      
      if (selected != null) {
        setState(() {
          _apkPathController.text = selected.sourceDir;
          _generateOutputPath();
        });
      }
    } else {
      // On desktop, show path input dialog
      final path = await showDialog<String>(
        context: context,
        builder: (ctx) => _PathInputDialog(
          title: 'Select APK',
          hint: 'Enter path to APK file',
        ),
      );
      
      if (path != null && path.isNotEmpty) {
        setState(() {
          _apkPathController.text = path;
          _generateOutputPath();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frida Gadget Injection'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: _showHelpDialog,
            tooltip: 'Help',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Info Card
            Card(
              color: Colors.blue.shade900.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, color: Colors.blue),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Frida Gadget Injection',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Inject Frida Gadget into an APK to enable instrumentation on non-rooted devices. '
                            'The patched APK will load the gadget library on startup.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // APK Selection
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Source APK',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _apkPathController,
                            decoration: const InputDecoration(
                              hintText: 'Path to APK file',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                            onChanged: (_) => _generateOutputPath(),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          onPressed: _pickApk,
                          icon: const Icon(Icons.folder_open),
                          label: const Text('Browse'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _outputPathController,
                      decoration: const InputDecoration(
                        labelText: 'Output Path',
                        hintText: 'Path for patched APK',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Gadget Mode Selection
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gadget Mode',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    _ModeSelector(
                      selectedMode: _selectedMode,
                      onChanged: (mode) => setState(() => _selectedMode = mode),
                    ),
                    const SizedBox(height: 12),
                    if (_selectedMode == FridaGadgetService.modeListen) ...[
                      TextField(
                        controller: _portController,
                        decoration: const InputDecoration(
                          labelText: 'Listen Port',
                          hintText: '27042',
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                    if (_selectedMode == FridaGadgetService.modeScript) ...[
                      const SizedBox(height: 8),
                      const Text('Embedded Script:', style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 8),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: TextField(
                          controller: _scriptController,
                          maxLines: null,
                          expands: true,
                          decoration: const InputDecoration(
                            hintText: 'Enter Frida script here...',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(12),
                          ),
                          style: const TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Architecture Selection
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Target Architectures',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: _selectedArchs.keys.map((arch) {
                        return FilterChip(
                          label: Text(arch),
                          selected: _selectedArchs[arch]!,
                          onSelected: (selected) {
                            setState(() => _selectedArchs[arch] = selected);
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Select architectures matching your target device',
                      style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Inject Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: _isProcessing ? null : _injectGadget,
                icon: _isProcessing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.build),
                label: Text(_isProcessing ? 'Processing...' : 'Inject Gadget'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00D084),
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Log Output
            if (_logs.isNotEmpty)
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(Icons.terminal, size: 18),
                          const SizedBox(width: 8),
                          const Text(
                            'Log',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.clear, size: 18),
                            onPressed: () => setState(() => _logs.clear()),
                            tooltip: 'Clear',
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    Container(
                      height: 200,
                      padding: const EdgeInsets.all(12),
                      child: ListView.builder(
                        itemCount: _logs.length,
                        itemBuilder: (context, index) {
                          return Text(
                            _logs[index],
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 11,
                              color: _logs[index].contains('Error')
                                  ? Colors.red
                                  : _logs[index].contains('Success') ||
                                          _logs[index].contains('complete')
                                      ? Colors.green
                                      : null,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _showHelpDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Frida Gadget Help'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'What is Frida Gadget?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Frida Gadget is a shared library that can be embedded into apps '
                'to enable Frida instrumentation without requiring root access. '
                'When the app starts, it loads the gadget which then exposes '
                'the Frida interface.',
              ),
              SizedBox(height: 16),
              Text(
                'Modes:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('• Listen: Gadget waits for Frida client connections'),
              Text('• Script: Embedded script runs automatically'),
              Text('• Connect: Gadget connects back to your Frida server'),
              SizedBox(height: 16),
              Text(
                'Requirements:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('• Android SDK (for zipalign & apksigner)'),
              Text('• Java (for keystore creation)'),
              Text('• 7-Zip or xz (for gadget decompression)'),
              SizedBox(height: 16),
              Text(
                'Note: The patched APK will have a different signature and '
                'may not work with apps that verify their signature.',
                style: TextStyle(fontSize: 12, color: Colors.orange),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

/// Mode selector widget
class _ModeSelector extends StatelessWidget {
  final String selectedMode;
  final ValueChanged<String> onChanged;

  const _ModeSelector({
    required this.selectedMode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ModeOption(
          mode: FridaGadgetService.modeListen,
          title: 'Listen Mode',
          description: 'Gadget listens for incoming Frida connections',
          icon: Icons.wifi_tethering,
          isSelected: selectedMode == FridaGadgetService.modeListen,
          onTap: () => onChanged(FridaGadgetService.modeListen),
        ),
        const SizedBox(height: 8),
        _ModeOption(
          mode: FridaGadgetService.modeScript,
          title: 'Script Mode',
          description: 'Embed and auto-run a Frida script',
          icon: Icons.code,
          isSelected: selectedMode == FridaGadgetService.modeScript,
          onTap: () => onChanged(FridaGadgetService.modeScript),
        ),
        const SizedBox(height: 8),
        _ModeOption(
          mode: FridaGadgetService.modeConnect,
          title: 'Connect Mode',
          description: 'Gadget connects back to your Frida server',
          icon: Icons.link,
          isSelected: selectedMode == FridaGadgetService.modeConnect,
          onTap: () => onChanged(FridaGadgetService.modeConnect),
        ),
      ],
    );
  }
}

class _ModeOption extends StatelessWidget {
  final String mode;
  final String title;
  final String description;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _ModeOption({
    required this.mode,
    required this.title,
    required this.description,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFF00D084) : Colors.grey.shade700,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
          color: isSelected
              ? const Color(0xFF00D084).withOpacity(0.1)
              : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFF00D084) : Colors.grey,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected ? const Color(0xFF00D084) : null,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(Icons.check_circle, color: Color(0xFF00D084)),
          ],
        ),
      ),
    );
  }
}

/// App picker dialog for Android
class _AppPickerDialog extends StatefulWidget {
  final List<InstalledApp> apps;

  const _AppPickerDialog({required this.apps});

  @override
  State<_AppPickerDialog> createState() => _AppPickerDialogState();
}

class _AppPickerDialogState extends State<_AppPickerDialog> {
  String _search = '';
  bool _showSystem = false;

  List<InstalledApp> get filteredApps {
    return widget.apps.where((app) {
      if (!_showSystem && app.isSystem) return false;
      if (_search.isNotEmpty) {
        return app.appName.toLowerCase().contains(_search.toLowerCase()) ||
            app.packageName.toLowerCase().contains(_search.toLowerCase());
      }
      return true;
    }).toList()
      ..sort((a, b) => a.appName.compareTo(b.appName));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select App'),
      content: SizedBox(
        width: double.maxFinite,
        height: 400,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search...',
                      isDense: true,
                      prefixIcon: Icon(Icons.search, size: 18),
                    ),
                    onChanged: (v) => setState(() => _search = v),
                  ),
                ),
                FilterChip(
                  label: const Text('System'),
                  selected: _showSystem,
                  onSelected: (v) => setState(() => _showSystem = v),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: filteredApps.length,
                itemBuilder: (context, index) {
                  final app = filteredApps[index];
                  return ListTile(
                    dense: true,
                    title: Text(app.appName, overflow: TextOverflow.ellipsis),
                    subtitle: Text(
                      app.packageName,
                      style: const TextStyle(fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () => Navigator.pop(context, app),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}

/// Path input dialog for desktop
class _PathInputDialog extends StatefulWidget {
  final String title;
  final String hint;

  const _PathInputDialog({required this.title, required this.hint});

  @override
  State<_PathInputDialog> createState() => _PathInputDialogState();
}

class _PathInputDialogState extends State<_PathInputDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          border: const OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context, _controller.text),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
