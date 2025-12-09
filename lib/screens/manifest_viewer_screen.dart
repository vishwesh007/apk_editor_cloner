import 'package:flutter/material.dart';
import '../services/decompiled_manifest_parser.dart';
import '../services/manifest_service.dart';
import 'manifest_editor_screen.dart';

class ManifestViewerScreen extends StatefulWidget {
  final String decompiledDir;
  final DecompiledManifestInfo manifestInfo;
  final VoidCallback onRefresh;
  final bool isEmbedded;

  const ManifestViewerScreen({
    super.key,
    required this.decompiledDir,
    required this.manifestInfo,
    required this.onRefresh,
    this.isEmbedded = false,
  });

  @override
  State<ManifestViewerScreen> createState() => _ManifestViewerScreenState();
}

class _ManifestViewerScreenState extends State<ManifestViewerScreen> {
  final ManifestService _manifestService = ManifestService();

  @override
  Widget build(BuildContext context) {
    final manifest = widget.manifestInfo;
    final content = SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.isEmbedded) ...[
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 ElevatedButton.icon(
                   icon: const Icon(Icons.edit),
                   label: const Text('Edit Manifest'),
                   onPressed: () => _navigateToEditor(),
                 ),
                 const SizedBox(width: 8),
                 OutlinedButton.icon(
                   icon: const Icon(Icons.code),
                   label: const Text('View XML'),
                   onPressed: () => _showRawXml(manifest.rawXml),
                 ),
               ],
             ),
             const SizedBox(height: 16),
          ],
          _buildInfoCard(manifest),
          const SizedBox(height: 16),
          _buildPermissionsCard(manifest),
          const SizedBox(height: 16),
          _buildActivitiesCard(manifest),
          const SizedBox(height: 16),
          _buildServicesCard(manifest),
          const SizedBox(height: 16),
          _buildReceiversCard(manifest),
          const SizedBox(height: 16),
          _buildProvidersCard(manifest),
        ],
      ),
    );

    if (widget.isEmbedded) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manifest Viewer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit Manifest',
            onPressed: () => _navigateToEditor(),
          ),
          IconButton(
            icon: const Icon(Icons.code),
            tooltip: 'View Raw XML',
            onPressed: () => _showRawXml(manifest.rawXml),
          ),
        ],
      ),
      body: content,
    );
  }

  Widget _buildInfoCard(DecompiledManifestInfo manifest) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Package Info',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildInfoRow('Package', manifest.packageName),
            _buildInfoRow('Version Name', manifest.versionName ?? 'N/A'),
            _buildInfoRow('Version Code', manifest.versionCode?.toString() ?? 'N/A'),
            _buildInfoRow('Min SDK', manifest.minSdkVersion.toString()),
            _buildInfoRow('Target SDK', manifest.targetSdkVersion.toString()),
            if (manifest.debuggable)
              _buildInfoRow('Debuggable', 'Yes', valueColor: Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionsCard(DecompiledManifestInfo manifest) {
    return Card(
      child: ExpansionTile(
        title: Text('Permissions (${manifest.permissions.length})'),
        leading: const Icon(Icons.security),
        children: [
          if (manifest.permissions.isEmpty)
            const ListTile(title: Text('No permissions'))
          else
            ...manifest.permissions.map((perm) => ListTile(
              leading: Icon(
                perm.isDangerous ? Icons.warning : Icons.check_circle,
                color: perm.isDangerous ? Colors.orange : Colors.green,
                size: 20,
              ),
              title: Text(perm.shortName, style: const TextStyle(fontSize: 13)),
              subtitle: Text(perm.name, style: const TextStyle(fontSize: 11, color: Colors.grey)),
              dense: true,
            )),
        ],
      ),
    );
  }

  Widget _buildActivitiesCard(DecompiledManifestInfo manifest) {
    return Card(
      child: ExpansionTile(
        title: Text('Activities (${manifest.activities.length})'),
        leading: const Icon(Icons.window),
        children: [
          if (manifest.activities.isEmpty)
            const ListTile(title: Text('No activities'))
          else
            ...manifest.activities.map((activity) => ListTile(
              leading: Icon(
                activity.isLauncher ? Icons.home : Icons.window_outlined,
                color: activity.isLauncher ? Colors.blue : null,
                size: 20,
              ),
              title: Text(activity.shortName, style: const TextStyle(fontSize: 13)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(activity.name, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                  if (activity.exported == true)
                    const Text('exported', style: TextStyle(fontSize: 10, color: Colors.orange, fontWeight: FontWeight.bold)),
                ],
              ),
              dense: true,
            )),
        ],
      ),
    );
  }

  Widget _buildServicesCard(DecompiledManifestInfo manifest) {
    return Card(
      child: ExpansionTile(
        title: Text('Services (${manifest.services.length})'),
        leading: const Icon(Icons.miscellaneous_services),
        children: [
          if (manifest.services.isEmpty)
            const ListTile(title: Text('No services'))
          else
            ...manifest.services.map((service) => ListTile(
              leading: const Icon(Icons.settings, size: 20),
              title: Text(service.shortName, style: const TextStyle(fontSize: 13)),
              subtitle: Text(service.name, style: const TextStyle(fontSize: 11, color: Colors.grey)),
              dense: true,
            )),
        ],
      ),
    );
  }

  Widget _buildReceiversCard(DecompiledManifestInfo manifest) {
    return Card(
      child: ExpansionTile(
        title: Text('Receivers (${manifest.receivers.length})'),
        leading: const Icon(Icons.radio),
        children: [
          if (manifest.receivers.isEmpty)
            const ListTile(title: Text('No receivers'))
          else
            ...manifest.receivers.map((receiver) => ListTile(
              leading: const Icon(Icons.broadcast_on_personal, size: 20),
              title: Text(receiver.shortName, style: const TextStyle(fontSize: 13)),
              subtitle: Text(receiver.name, style: const TextStyle(fontSize: 11, color: Colors.grey)),
              dense: true,
            )),
        ],
      ),
    );
  }

  Widget _buildProvidersCard(DecompiledManifestInfo manifest) {
    return Card(
      child: ExpansionTile(
        title: Text('Providers (${manifest.providers.length})'),
        leading: const Icon(Icons.storage),
        children: [
          if (manifest.providers.isEmpty)
            const ListTile(title: Text('No providers'))
          else
            ...manifest.providers.map((provider) => ListTile(
              leading: const Icon(Icons.dns, size: 20),
              title: Text(provider.shortName, style: const TextStyle(fontSize: 13)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(provider.name, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                  Text('authorities: ${provider.authorities}', style: const TextStyle(fontSize: 10, color: Colors.grey)),
                ],
              ),
              dense: true,
            )),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
          ),
          Expanded(
            child: SelectableText(
              value,
              style: TextStyle(fontFamily: 'monospace', color: valueColor),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToEditor() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ManifestEditorScreen(
          decompiledDir: widget.decompiledDir,
          manifestInfo: widget.manifestInfo,
        ),
      ),
    );
    widget.onRefresh();
  }

  void _showRawXml(String xml) {
    showDialog(
      context: context,
      builder: (ctx) => Dialog(
        child: Column(
          children: [
            AppBar(
              title: const Text('AndroidManifest.xml'),
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(ctx),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: SelectableText(
                  xml,
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
