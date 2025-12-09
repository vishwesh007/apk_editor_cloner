import 'package:flutter/material.dart';
import '../services/decompiled_manifest_parser.dart';
import '../services/manifest_service.dart';

class ManifestEditorScreen extends StatefulWidget {
  final String decompiledDir;
  final DecompiledManifestInfo manifestInfo;

  const ManifestEditorScreen({
    super.key,
    required this.decompiledDir,
    required this.manifestInfo,
  });

  @override
  State<ManifestEditorScreen> createState() => _ManifestEditorScreenState();
}

class _ManifestEditorScreenState extends State<ManifestEditorScreen> {
  final ManifestService _manifestService = ManifestService();
  late DecompiledManifestInfo _manifest;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _manifest = widget.manifestInfo;
  }

  Future<void> _refreshManifest() async {
    setState(() => _isLoading = true);
    try {
      final info = await _manifestService.getManifestInfo(widget.decompiledDir);
      if (info != null) {
        setState(() => _manifest = info);
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Manifest'),
        actions: [
          if (_isLoading)
            const Center(child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)),
            )),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildQuickActionsCard(),
          const SizedBox(height: 16),
          _buildVersionEditorCard(),
          const SizedBox(height: 16),
          _buildPermissionsEditorCard(),
        ],
      ),
    );
  }

  Widget _buildQuickActionsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Quick Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton.icon(
                  onPressed: _showCloneAppDialog,
                  icon: const Icon(Icons.copy),
                  label: const Text('Clone App (Rename Package)'),
                ),
                if (_manifest.debuggable)
                  OutlinedButton.icon(
                    onPressed: _removeDebuggable,
                    icon: const Icon(Icons.bug_report_outlined),
                    label: const Text('Remove Debuggable'),
                  )
                else
                  OutlinedButton.icon(
                    onPressed: _makeDebuggable,
                    icon: const Icon(Icons.bug_report),
                    label: const Text('Make Debuggable'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVersionEditorCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Version Info', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Version Name'),
              subtitle: Text(_manifest.versionName ?? 'N/A'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: _showEditVersionDialog,
              ),
            ),
            ListTile(
              title: const Text('Version Code'),
              subtitle: Text(_manifest.versionCode?.toString() ?? 'N/A'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: _showEditVersionDialog,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionsEditorCard() {
    return Card(
      child: ExpansionTile(
        title: Text('Permissions (${_manifest.permissions.length})'),
        leading: const Icon(Icons.security),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: _showAddPermissionDialog,
              icon: const Icon(Icons.add),
              label: const Text('Add Permission'),
            ),
          ),
          if (_manifest.permissions.isEmpty)
            const ListTile(title: Text('No permissions'))
          else
            ..._manifest.permissions.map((perm) => ListTile(
              leading: Icon(
                perm.isDangerous ? Icons.warning : Icons.check_circle,
                color: perm.isDangerous ? Colors.orange : Colors.green,
                size: 20,
              ),
              title: Text(perm.shortName, style: const TextStyle(fontSize: 13)),
              subtitle: Text(perm.name, style: const TextStyle(fontSize: 11, color: Colors.grey)),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline, color: Colors.red),
                onPressed: () => _removePermission(perm.name),
              ),
              dense: true,
            )),
        ],
      ),
    );
  }

  Future<void> _showCloneAppDialog() async {
    final packageController = TextEditingController(text: '${_manifest.packageName}.clone');
    final versionNameController = TextEditingController(text: _manifest.versionName ?? '1.0');
    final versionCodeController = TextEditingController(text: ((_manifest.versionCode ?? 1) + 1).toString());

    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Clone App'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Create a copy with a new package name.'),
              const SizedBox(height: 16),
              TextField(
                controller: packageController,
                decoration: const InputDecoration(labelText: 'New Package Name', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: versionNameController,
                decoration: const InputDecoration(labelText: 'Version Name', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: versionCodeController,
                decoration: const InputDecoration(labelText: 'Version Code', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
          ElevatedButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Clone')),
        ],
      ),
    );

    if (result == true) {
      setState(() => _isLoading = true);
      final success = await _manifestService.cloneApp(
        decompiledDir: widget.decompiledDir,
        newPackage: packageController.text.trim(),
        newVersionName: versionNameController.text.trim(),
        newVersionCode: int.tryParse(versionCodeController.text.trim()),
      );
      if (success) {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('App cloned successfully!')));
        await _refreshManifest();
      } else {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to clone app'), backgroundColor: Colors.red));
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _showEditVersionDialog() async {
    final versionNameController = TextEditingController(text: _manifest.versionName ?? '');
    final versionCodeController = TextEditingController(text: _manifest.versionCode?.toString() ?? '');

    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Edit Version'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: versionNameController,
              decoration: const InputDecoration(labelText: 'Version Name', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: versionCodeController,
              decoration: const InputDecoration(labelText: 'Version Code', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
          ElevatedButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Save')),
        ],
      ),
    );

    if (result == true) {
      setState(() => _isLoading = true);
      final success = await _manifestService.updateVersion(
        decompiledDir: widget.decompiledDir,
        versionName: versionNameController.text.trim(),
        versionCode: int.tryParse(versionCodeController.text.trim()),
      );
      if (success) {
        await _refreshManifest();
      } else {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to update version'), backgroundColor: Colors.red));
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _makeDebuggable() async {
    setState(() => _isLoading = true);
    final success = await _manifestService.makeDebuggable(widget.decompiledDir);
    if (success) {
      await _refreshManifest();
    } else {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to make debuggable'), backgroundColor: Colors.red));
      setState(() => _isLoading = false);
    }
  }

  Future<void> _removeDebuggable() async {
    setState(() => _isLoading = true);
    final success = await _manifestService.removeDebuggable(widget.decompiledDir);
    if (success) {
      await _refreshManifest();
    } else {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to remove debuggable'), backgroundColor: Colors.red));
      setState(() => _isLoading = false);
    }
  }

  Future<void> _showAddPermissionDialog() async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Permission'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Permission Name',
            hintText: 'android.permission.INTERNET',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          ElevatedButton(onPressed: () => Navigator.pop(ctx, controller.text), child: const Text('Add')),
        ],
      ),
    );

    if (result != null && result.isNotEmpty) {
      setState(() => _isLoading = true);
      final success = await _manifestService.addPermission(widget.decompiledDir, result.trim());
      if (success) {
        await _refreshManifest();
      } else {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to add permission'), backgroundColor: Colors.red));
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _removePermission(String permission) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Remove Permission'),
        content: Text('Are you sure you want to remove $permission?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
          ElevatedButton(onPressed: () => Navigator.pop(ctx, true), style: ElevatedButton.styleFrom(backgroundColor: Colors.red), child: const Text('Remove')),
        ],
      ),
    );

    if (confirm == true) {
      setState(() => _isLoading = true);
      final success = await _manifestService.removePermission(widget.decompiledDir, permission);
      if (success) {
        await _refreshManifest();
      } else {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to remove permission'), backgroundColor: Colors.red));
        setState(() => _isLoading = false);
      }
    }
  }
}
