import 'package:flutter/material.dart' hide ScriptCategory;
import 'package:flutter/foundation.dart' show kIsWeb, defaultTargetPlatform, TargetPlatform;
import 'package:provider/provider.dart';
import '../providers/frida_provider.dart';
import '../providers/device_provider.dart';
import '../models/frida_script.dart';
import '../widgets/code_editor.dart';
import 'gadget_injection_screen.dart';
import 'gadget_console_screen.dart';
import 'local_gadget_screen.dart';

class FridaScreen extends StatefulWidget {
  const FridaScreen({super.key});

  @override
  State<FridaScreen> createState() => _FridaScreenState();
}

class _FridaScreenState extends State<FridaScreen> {
  final _codeController = TextEditingController();
  String? _selectedPackage;
  List<Map<String, dynamic>> _processes = [];
  bool _loadingProcesses = false;
  
  // Check if running on Android device
  bool get _isAndroidDevice => !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // On Android device, show gadget injection focused UI
    if (_isAndroidDevice) {
      return _buildAndroidLayout();
    }
    
    return Consumer2<FridaProvider, DeviceProvider>(
      builder: (context, fridaProvider, deviceProvider, child) {
        return Row(
          children: [
            // Scripts Panel
            SizedBox(
              width: 280,
              child: Card(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const Icon(Icons.code, size: 20),
                          const SizedBox(width: 8),
                          const Text(
                            'Frida Scripts',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          if (!fridaProvider.isFridaInstalled)
                            const Tooltip(
                              message: 'Frida not installed',
                              child: Icon(
                                Icons.warning,
                                color: Colors.orange,
                                size: 18,
                              ),
                            )
                          else
                            Tooltip(
                              message:
                                  'Frida ${fridaProvider.fridaVersion ?? ""}',
                              child: const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 18,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    Expanded(
                      child: ListView.builder(
                        itemCount: fridaProvider.scripts.length,
                        itemBuilder: (context, index) {
                          final script = fridaProvider.scripts[index];
                          final isSelected =
                              script.id == fridaProvider.selectedScript?.id;
                          return _ScriptListTile(
                            script: script,
                            isSelected: isSelected,
                            onTap: () {
                              fridaProvider.selectScript(script);
                              _codeController.text = script.code;
                            },
                          );
                        },
                      ),
                    ),
                    const Divider(height: 1),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () => _showNewScriptDialog(fridaProvider),
                              icon: const Icon(Icons.add),
                              label: const Text('New Script'),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const GadgetInjectionScreen(),
                                ),
                              ),
                              icon: const Icon(Icons.build, size: 18),
                              label: const Text('Inject Gadget'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.orange,
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

            // Editor and Controls
            Expanded(
              child: Column(
                children: [
                  // Controls Bar
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        // Target Selection
                        Expanded(
                          child: Row(
                            children: [
                              const Text('Target: '),
                              const SizedBox(width: 8),
                              Expanded(
                                child: DropdownButtonFormField<String>(
                                  value: _selectedPackage,
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                  ),
                                  hint: const Text('Select process'),
                                  items: _processes
                                      .map(
                                        (p) => DropdownMenuItem(
                                          value: p['name'] as String,
                                          child: Text(
                                            p['name'] as String,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() => _selectedPackage = value);
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                icon: _loadingProcesses
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : const Icon(Icons.refresh),
                                onPressed: () =>
                                    _loadProcesses(fridaProvider, deviceProvider),
                                tooltip: 'Refresh processes',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Action Buttons
                        if (fridaProvider.isAttached)
                          ElevatedButton.icon(
                            onPressed: fridaProvider.detach,
                            icon: const Icon(Icons.stop),
                            label: const Text('Detach'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                          )
                        else ...[
                          ElevatedButton.icon(
                            onPressed: _selectedPackage == null ||
                                    fridaProvider.selectedScript == null
                                ? null
                                : () => _attach(fridaProvider, deviceProvider),
                            icon: const Icon(Icons.play_arrow),
                            label: const Text('Attach'),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton.icon(
                            onPressed: _selectedPackage == null ||
                                    fridaProvider.selectedScript == null
                                ? null
                                : () =>
                                    _spawnAndAttach(fridaProvider, deviceProvider),
                            icon: const Icon(Icons.rocket_launch),
                            label: const Text('Spawn'),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  // Status Bar
                  if (fridaProvider.isAttached)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      color: Colors.green.withOpacity(0.2),
                      child: Row(
                        children: [
                          const Icon(Icons.circle,
                              color: Colors.green, size: 12),
                          const SizedBox(width: 8),
                          Text(
                            'Attached to ${fridaProvider.attachedPackage}',
                            style: const TextStyle(color: Colors.green),
                          ),
                          const Spacer(),
                          Text(
                            '${fridaProvider.events.length} events captured',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                  // Code Editor
                  Expanded(
                    flex: 2,
                    child: Card(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                const Icon(Icons.edit, size: 18),
                                const SizedBox(width: 8),
                                Text(
                                  fridaProvider.selectedScript?.name ??
                                      'No script selected',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                if (fridaProvider.selectedScript != null &&
                                    !fridaProvider.selectedScript!.isBuiltIn)
                                  TextButton.icon(
                                    onPressed: () =>
                                        _saveScript(fridaProvider),
                                    icon: const Icon(Icons.save, size: 16),
                                    label: const Text('Save'),
                                  ),
                              ],
                            ),
                          ),
                          const Divider(height: 1),
                          Expanded(
                            child: fridaProvider.selectedScript == null
                                ? const Center(
                                    child: Text('Select a script to edit'),
                                  )
                                : CodeEditor(
                                    controller: _codeController,
                                    readOnly:
                                        fridaProvider.selectedScript!.isBuiltIn,
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Logs Panel
                  Expanded(
                    flex: 1,
                    child: Card(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
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
                                  'Console Output',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                TextButton.icon(
                                  onPressed: fridaProvider.clearLogs,
                                  icon: const Icon(Icons.clear_all, size: 16),
                                  label: const Text('Clear'),
                                ),
                              ],
                            ),
                          ),
                          const Divider(height: 1),
                          Expanded(
                            child: Container(
                              color: Colors.black,
                              child: ListView.builder(
                                padding: const EdgeInsets.all(12),
                                itemCount: fridaProvider.logs.length,
                                itemBuilder: (context, index) {
                                  final log = fridaProvider.logs[index];
                                  return Text(
                                    log,
                                    style: TextStyle(
                                      fontFamily: 'monospace',
                                      fontSize: 12,
                                      color: log.contains('[ERROR]')
                                          ? Colors.red
                                          : log.contains('[*]')
                                              ? Colors.cyan
                                              : Colors.green,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  /// Android-specific layout focused on Gadget Injection
  Widget _buildAndroidLayout() {
    return Consumer<FridaProvider>(
      builder: (context, fridaProvider, child) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Action Card - Local Gadget (NO DESKTOP NEEDED)
              Card(
                color: const Color(0xFF00D084).withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF00D084),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(Icons.phone_android, color: Colors.white, size: 20),
                          ),
                          const SizedBox(width: 12),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Local Analysis',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'No desktop connection required!',
                                  style: TextStyle(color: Colors.green, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Inject Frida Gadget into apps and analyze them directly from this device. '
                        'Works completely offline without any computer connection.',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const GadgetInjectionScreen(),
                                ),
                              ),
                              icon: const Icon(Icons.build, size: 18),
                              label: const Text('Inject Gadget'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF00D084),
                                padding: const EdgeInsets.symmetric(vertical: 14),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LocalGadgetScreen(),
                                ),
                              ),
                              icon: const Icon(Icons.bug_report, size: 18),
                              label: const Text('Connect'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              
              // Remote/Desktop option (secondary)
              Card(
                child: ListTile(
                  leading: const Icon(Icons.wifi, color: Colors.orange),
                  title: const Text('Network Console'),
                  subtitle: const Text('Connect via ADB port forwarding', style: TextStyle(fontSize: 11)),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const GadgetConsoleScreen()),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // Scripts Panel
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const Icon(Icons.code, size: 20),
                          const SizedBox(width: 8),
                          const Text(
                            'Frida Scripts Library',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: fridaProvider.scripts.length,
                      itemBuilder: (context, index) {
                        final script = fridaProvider.scripts[index];
                        return ListTile(
                          leading: Text(
                            script.category.icon,
                            style: const TextStyle(fontSize: 20),
                          ),
                          title: Text(script.name),
                          subtitle: Text(
                            script.description,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 11),
                          ),
                          trailing: script.isBuiltIn
                              ? const Chip(
                                  label: Text('Built-in', style: TextStyle(fontSize: 10)),
                                  padding: EdgeInsets.zero,
                                  visualDensity: VisualDensity.compact,
                                )
                              : null,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(script.name),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(script.description),
                                      const SizedBox(height: 16),
                                      Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        constraints: const BoxConstraints(maxHeight: 300),
                                        child: SingleChildScrollView(
                                          child: SelectableText(
                                            script.code,
                                            style: const TextStyle(
                                              fontFamily: 'monospace',
                                              fontSize: 11,
                                            ),
                                          ),
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
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _loadProcesses(
    FridaProvider fridaProvider,
    DeviceProvider deviceProvider,
  ) async {
    if (deviceProvider.selectedDevice == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No device selected')),
      );
      return;
    }

    setState(() => _loadingProcesses = true);
    final processes = await fridaProvider
        .getAttachableProcesses(deviceProvider.selectedDevice!.id);
    setState(() {
      _processes = processes;
      _loadingProcesses = false;
    });
  }

  Future<void> _attach(
    FridaProvider fridaProvider,
    DeviceProvider deviceProvider,
  ) async {
    if (_selectedPackage == null || deviceProvider.selectedDevice == null) {
      return;
    }

    final success = await fridaProvider.attachToProcess(
      deviceProvider.selectedDevice!.id,
      _selectedPackage!,
    );

    if (!success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(fridaProvider.error ?? 'Failed to attach'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _spawnAndAttach(
    FridaProvider fridaProvider,
    DeviceProvider deviceProvider,
  ) async {
    if (_selectedPackage == null || deviceProvider.selectedDevice == null) {
      return;
    }

    final success = await fridaProvider.spawnAndAttach(
      deviceProvider.selectedDevice!.id,
      _selectedPackage!,
    );

    if (!success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(fridaProvider.error ?? 'Failed to spawn'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _saveScript(FridaProvider fridaProvider) {
    if (fridaProvider.selectedScript == null) return;

    final updatedScript = fridaProvider.selectedScript!.copyWith(
      code: _codeController.text,
    );
    fridaProvider.updateScript(updatedScript);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Script saved')),
    );
  }

  void _showNewScriptDialog(FridaProvider fridaProvider) {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    ScriptCategory selectedCategory = ScriptCategory.custom;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('New Script'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descController,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<ScriptCategory>(
              value: selectedCategory,
              decoration: const InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
              items: ScriptCategory.values
                  .map(
                    (c) => DropdownMenuItem(
                      value: c,
                      child: Text(c.displayName),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value != null) selectedCategory = value;
              },
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
              if (nameController.text.isEmpty) return;

              final script = FridaScript(
                id: DateTime.now().millisecondsSinceEpoch.toString(),
                name: nameController.text,
                description: descController.text,
                code: _getTemplateCode(selectedCategory),
                category: selectedCategory,
                createdAt: DateTime.now(),
              );

              fridaProvider.addScript(script);
              fridaProvider.selectScript(script);
              _codeController.text = script.code;
              Navigator.pop(context);
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  String _getTemplateCode(ScriptCategory category) {
    return '''
Java.perform(function() {
    console.log('[*] Script loaded');
    
    // Your hooks here
    
});
''';
  }
}

class _ScriptListTile extends StatelessWidget {
  final FridaScript script;
  final bool isSelected;
  final VoidCallback onTap;

  const _ScriptListTile({
    required this.script,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: const Color(0xFF00D084).withOpacity(0.1),
      leading: Text(
        script.category.icon,
        style: const TextStyle(fontSize: 20),
      ),
      title: Text(
        script.name,
        style: const TextStyle(fontSize: 13),
      ),
      subtitle: Text(
        script.category.displayName,
        style: const TextStyle(fontSize: 10),
      ),
      trailing: script.isBuiltIn
          ? const Icon(Icons.lock, size: 14, color: Colors.grey)
          : null,
      onTap: onTap,
    );
  }
}
