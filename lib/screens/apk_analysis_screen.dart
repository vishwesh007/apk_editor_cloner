import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb, defaultTargetPlatform, TargetPlatform;
import 'package:provider/provider.dart';
import 'dart:io';
import '../providers/analysis_provider.dart';
import '../providers/device_provider.dart';
import '../models/apk_info.dart';
import '../services/android_platform_service.dart';

class ApkAnalysisScreen extends StatefulWidget {
  const ApkAnalysisScreen({super.key});

  @override
  State<ApkAnalysisScreen> createState() => _ApkAnalysisScreenState();
}

class _ApkAnalysisScreenState extends State<ApkAnalysisScreen> {
  Map<String, String>? _hashes;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Consumer<AnalysisProvider>(
      builder: (context, provider, child) {
        if (isMobile) {
          return _buildMobileLayout(provider);
        }
        return Row(
          children: [
            // Analysis History
            SizedBox(
              width: 260,
              child: Card(
                margin: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Text(
                              'Analysis History',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete_outline, size: 18),
                            onPressed: provider.clearHistory,
                            tooltip: 'Clear History',
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    Expanded(
                      child: provider.analyzedApks.isEmpty
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.history,
                                    size: 40,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'No analysis yet',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : ListView.builder(
                              itemCount: provider.analyzedApks.length,
                              itemBuilder: (context, index) {
                                final apk = provider.analyzedApks[index];
                                final isSelected =
                                    apk.filePath == provider.currentApk?.filePath;
                                return ListTile(
                                  dense: true,
                                  selected: isSelected,
                                  selectedTileColor:
                                      const Color(0xFF00D084).withOpacity(0.1),
                                  leading: _RiskBadge(riskLevel: apk.riskLevel),
                                  title: Text(
                                    apk.appName.isNotEmpty
                                        ? apk.appName
                                        : apk.packageName,
                                    style: const TextStyle(fontSize: 12),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    apk.packageName,
                                    style: const TextStyle(fontSize: 10),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  onTap: () => provider.selectApk(apk),
                                );
                              },
                            ),
                    ),
                    const Divider(height: 1),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: provider.isAnalyzing ? null : _pickApk,
                          icon: const Icon(Icons.folder_open, size: 18),
                          label: const Text('Select APK', style: TextStyle(fontSize: 13)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Analysis Results
            Expanded(
              child: provider.isAnalyzing
                  ? _buildLoadingState(provider)
                  : provider.currentApk == null
                      ? _buildEmptyState()
                      : _buildAnalysisResults(provider),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMobileLayout(AnalysisProvider provider) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          // Select APK button and history
          Card(
            child: Column(
              children: [
                ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.android,
                    color: provider.currentApk != null
                        ? const Color(0xFF00D084)
                        : Colors.grey,
                  ),
                  title: Text(
                    provider.currentApk?.appName ?? 'No APK selected',
                    style: const TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: provider.currentApk != null
                      ? Text(
                          provider.currentApk!.packageName,
                          style: const TextStyle(fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        )
                      : null,
                  trailing: ElevatedButton.icon(
                    onPressed: provider.isAnalyzing ? null : _pickApk,
                    icon: const Icon(Icons.folder_open, size: 16),
                    label: const Text('Select', style: TextStyle(fontSize: 12)),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                  ),
                ),
                if (provider.analyzedApks.isNotEmpty)
                  ExpansionTile(
                    dense: true,
                    title: Text(
                      'History (${provider.analyzedApks.length})',
                      style: const TextStyle(fontSize: 12),
                    ),
                    children: provider.analyzedApks.take(5).map((apk) {
                      return ListTile(
                        dense: true,
                        leading: _RiskBadge(riskLevel: apk.riskLevel),
                        title: Text(
                          apk.appName.isNotEmpty ? apk.appName : apk.packageName,
                          style: const TextStyle(fontSize: 11),
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () => provider.selectApk(apk),
                      );
                    }).toList(),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Results
          if (provider.isAnalyzing)
            _buildLoadingState(provider)
          else if (provider.currentApk == null)
            _buildEmptyState()
          else
            _buildMobileAnalysisResults(provider),
        ],
      ),
    );
  }

  Widget _buildMobileAnalysisResults(AnalysisProvider provider) {
    final apk = provider.currentApk!;
    return Column(
      children: [
        // Overview Card - mobile
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.android, size: 24, color: Colors.blue),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            apk.appName.isNotEmpty ? apk.appName : 'Unknown',
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            apk.packageName,
                            style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    _buildCompactRiskIndicator(apk),
                  ],
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _CompactChip(label: 'v${apk.versionName}'),
                    _CompactChip(label: 'Min: API ${apk.minSdkVersion}'),
                    _CompactChip(label: 'Target: API ${apk.targetSdkVersion}'),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Permissions - mobile
        Card(
          child: ExpansionTile(
            dense: true,
            leading: Icon(
              Icons.security,
              size: 20,
              color: _getDangerousPermissionsCount(apk) > 0
                  ? Colors.orange
                  : Colors.grey,
            ),
            title: const Text('Permissions', style: TextStyle(fontSize: 13)),
            subtitle: Text(
              '${apk.permissions.length} total, ${_getDangerousPermissionsCount(apk)} dangerous',
              style: const TextStyle(fontSize: 10),
            ),
            children: apk.permissions.take(10).map((perm) {
              final isDangerous = _isDangerousPermission(perm);
              return ListTile(
                dense: true,
                leading: Icon(
                  isDangerous ? Icons.warning : Icons.check,
                  size: 14,
                  color: isDangerous ? Colors.orange : Colors.green,
                ),
                title: Text(
                  perm.split('.').last,
                  style: const TextStyle(fontSize: 10),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8),
        // Activities - mobile
        Card(
          child: ExpansionTile(
            dense: true,
            leading: const Icon(Icons.widgets, size: 20, color: Colors.blue),
            title: const Text('Activities', style: TextStyle(fontSize: 13)),
            subtitle: Text('${apk.activities.length} found',
                style: const TextStyle(fontSize: 10)),
            children: apk.activities.take(8).map((activity) {
              return ListTile(
                dense: true,
                title: Text(
                  activity.split('.').last,
                  style: const TextStyle(fontSize: 10),
                ),
                subtitle: Text(activity, style: const TextStyle(fontSize: 8)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildCompactRiskIndicator(ApkInfo apk) {
    Color color;
    IconData icon;
    switch (apk.riskLevel) {
      case 'Low':
        color = Colors.green;
        icon = Icons.check_circle;
        break;
      case 'Medium':
        color = Colors.orange;
        icon = Icons.warning;
        break;
      case 'High':
      case 'Critical':
        color = Colors.red;
        icon = Icons.dangerous;
        break;
      default:
        color = Colors.grey;
        icon = Icons.help;
    }
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: color, size: 20),
    );
  }

  int _getDangerousPermissionsCount(ApkInfo apk) {
    return apk.permissions.where((p) => _isDangerousPermission(p)).length;
  }

  bool _isDangerousPermission(String permission) {
    final dangerous = [
      'READ_CONTACTS', 'WRITE_CONTACTS', 'READ_CALL_LOG', 'WRITE_CALL_LOG',
      'READ_CALENDAR', 'WRITE_CALENDAR', 'CAMERA', 'RECORD_AUDIO',
      'READ_EXTERNAL_STORAGE', 'WRITE_EXTERNAL_STORAGE', 'READ_PHONE_STATE',
      'CALL_PHONE', 'READ_SMS', 'SEND_SMS', 'RECEIVE_SMS', 'ACCESS_FINE_LOCATION',
      'ACCESS_COARSE_LOCATION', 'ACCESS_BACKGROUND_LOCATION',
    ];
    return dangerous.any((d) => permission.contains(d));
  }

  Widget _buildLoadingState(AnalysisProvider provider) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 24),
          Text(
            'Analyzing APK... ${(provider.progress * 100).toInt()}%',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 200,
            child: LinearProgressIndicator(value: provider.progress),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 80,
            color: Colors.grey.shade700,
          ),
          const SizedBox(height: 16),
          const Text(
            'Select an APK to analyze',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            'Supports static analysis of Android applications',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisResults(AnalysisProvider provider) {
    final apk = provider.currentApk!;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overview Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.android,
                            size: 40, color: Colors.blue),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              apk.appName.isNotEmpty
                                  ? apk.appName
                                  : 'Unknown App',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              apk.packageName,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),
                      _buildRiskIndicator(apk),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 24,
                    runSpacing: 16,
                    children: [
                      _InfoChip(
                          label: 'Version', value: apk.versionName),
                      _InfoChip(
                          label: 'Version Code',
                          value: apk.versionCode.toString()),
                      _InfoChip(
                          label: 'Min SDK',
                          value: 'API ${apk.minSdkVersion}'),
                      _InfoChip(
                          label: 'Target SDK',
                          value: 'API ${apk.targetSdkVersion}'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () => _loadHashes(provider),
                        icon: const Icon(Icons.fingerprint, size: 18),
                        label: const Text('Get Hashes'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton.icon(
                        onPressed: () => _installOnDevice(apk),
                        icon: const Icon(Icons.install_mobile, size: 18),
                        label: const Text('Install on Device'),
                      ),
                    ],
                  ),
                  if (_hashes != null) ...[
                    const SizedBox(height: 16),
                    _HashDisplay(hashes: _hashes!),
                  ],
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Permissions Section
          _ExpandableSection(
            title: 'Permissions (${apk.permissions.length})',
            icon: Icons.security,
            color: Colors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: apk.permissions.map((perm) {
                final isDangerous = _isDangerousPermission(perm);
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Icon(
                        isDangerous ? Icons.warning : Icons.check,
                        size: 16,
                        color: isDangerous ? Colors.red : Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          perm.replaceFirst('android.permission.', ''),
                          style: TextStyle(
                            fontSize: 13,
                            color: isDangerous ? Colors.red.shade300 : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 12),

          // Suspicious Indicators
          if (apk.suspiciousIndicators.isNotEmpty)
            _ExpandableSection(
              title:
                  'Suspicious Indicators (${apk.suspiciousIndicators.length})',
              icon: Icons.warning_amber,
              color: Colors.red,
              initiallyExpanded: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: apk.suspiciousIndicators.map((indicator) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: _getSeverityColor(indicator.severity)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: _getSeverityColor(indicator.severity)
                            .withOpacity(0.3),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.bug_report,
                          size: 18,
                          color: _getSeverityColor(indicator.severity),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    indicator.type,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: _getSeverityColor(indicator.severity),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      indicator.severity.name.toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                indicator.description,
                                style: const TextStyle(fontSize: 13),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                indicator.location,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),

          const SizedBox(height: 12),

          // Components
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _ExpandableSection(
                  title: 'Activities (${apk.activities.length})',
                  icon: Icons.window,
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: apk.activities
                        .map((a) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                a.split('.').last,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _ExpandableSection(
                  title: 'Services (${apk.services.length})',
                  icon: Icons.miscellaneous_services,
                  color: Colors.purple,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: apk.services
                        .map((s) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                s.split('.').last,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Native Libraries
          if (apk.nativeLibraries.isNotEmpty)
            _ExpandableSection(
              title: 'Native Libraries (${apk.nativeLibraries.length})',
              icon: Icons.memory,
              color: Colors.teal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: apk.nativeLibraries
                    .map((lib) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            lib,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildRiskIndicator(ApkInfo apk) {
    final color = _getRiskColor(apk.riskLevel);
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.2),
            border: Border.all(color: color, width: 3),
          ),
          child: Center(
            child: Text(
              '${apk.riskScore}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          apk.riskLevel,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Color _getRiskColor(String level) {
    switch (level) {
      case 'Low':
        return Colors.green;
      case 'Medium':
        return Colors.orange;
      case 'High':
        return Colors.deepOrange;
      case 'Critical':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Color _getSeverityColor(SeverityLevel severity) {
    switch (severity) {
      case SeverityLevel.info:
        return Colors.blue;
      case SeverityLevel.low:
        return Colors.green;
      case SeverityLevel.medium:
        return Colors.orange;
      case SeverityLevel.high:
        return Colors.deepOrange;
      case SeverityLevel.critical:
        return Colors.red;
    }
  }

  Future<void> _pickApk() async {
    final bool isAndroid = !kIsWeb && defaultTargetPlatform == TargetPlatform.android;
    final TextEditingController pathController = TextEditingController();
    
    // Default paths based on platform
    final List<String> suggestedPaths = isAndroid
        ? [
            '/storage/emulated/0/Download/',
            '/sdcard/Download/',
            '/data/local/tmp/',
          ]
        : [
            'C:\\path\\to\\app.apk',
            '~/Downloads/app.apk',
          ];
    
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select APK to Analyze'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isAndroid) ...[
                const Text(
                  'Choose an installed app or enter APK path:',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: () async {
                    final platformService = AndroidPlatformService();
                    final apps = await platformService.getInstalledPackages();
                    if (!context.mounted) return;
                    
                    final selected = await showDialog<InstalledApp>(
                      context: context,
                      builder: (ctx) => _InstalledAppPicker(apps: apps),
                    );
                    
                    if (selected != null && context.mounted) {
                      Navigator.pop(context, selected.sourceDir);
                    }
                  },
                  icon: const Icon(Icons.apps, size: 18),
                  label: const Text('Pick from installed apps'),
                ),
                const SizedBox(height: 12),
                const Divider(),
                const SizedBox(height: 8),
              ],
              const Text('Or enter the full path to the APK file:'),
              const SizedBox(height: 12),
              TextField(
                controller: pathController,
                decoration: InputDecoration(
                  hintText: suggestedPaths.first,
                  hintStyle: const TextStyle(fontSize: 12),
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                ),
                style: const TextStyle(fontSize: 13),
              ),
              if (isAndroid) ...[
                const SizedBox(height: 12),
                const Text(
                  'Common paths:',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: suggestedPaths.map((path) => ActionChip(
                    label: Text(
                      path,
                      style: const TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      pathController.text = path;
                    },
                  )).toList(),
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, pathController.text),
            child: const Text('Analyze'),
          ),
        ],
      ),
    );

    if (result != null && result.isNotEmpty) {
      final file = File(result);
      if (await file.exists() && result.toLowerCase().endsWith('.apk')) {
        if (mounted) {
          final provider = context.read<AnalysisProvider>();
          await provider.analyzeApk(result);
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Invalid APK file path')),
          );
        }
      }
    }
  }

  Future<void> _loadHashes(AnalysisProvider provider) async {
    if (provider.currentApk == null) return;
    final hashes = await provider.getHashes(provider.currentApk!.filePath);
    setState(() => _hashes = hashes);
  }

  Future<void> _installOnDevice(ApkInfo apk) async {
    final deviceProvider = context.read<DeviceProvider>();
    if (!deviceProvider.hasConnectedDevice) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No device connected')),
      );
      return;
    }

    final success = await deviceProvider.installApk(apk.filePath);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success ? 'APK installed successfully' : 'Failed to install APK',
          ),
        ),
      );
    }
  }
}

class _RiskBadge extends StatelessWidget {
  final String riskLevel;

  const _RiskBadge({required this.riskLevel});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (riskLevel) {
      case 'Low':
        color = Colors.green;
        break;
      case 'Medium':
        color = Colors.orange;
        break;
      case 'High':
        color = Colors.deepOrange;
        break;
      case 'Critical':
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          riskLevel[0],
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final String value;

  const _InfoChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey.shade500,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _HashDisplay extends StatelessWidget {
  final Map<String, String> hashes;

  const _HashDisplay({required this.hashes});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: hashes.entries
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      child: Text(
                        '${e.key.toUpperCase()}:',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SelectableText(
                        e.value,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 11,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _ExpandableSection extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Widget child;
  final bool initiallyExpanded;

  const _ExpandableSection({
    required this.title,
    required this.icon,
    required this.color,
    required this.child,
    this.initiallyExpanded = false,
  });

  @override
  State<_ExpandableSection> createState() => _ExpandableSectionState();
}

class _ExpandableSectionState extends State<_ExpandableSection> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() => _isExpanded = !_isExpanded),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(widget.icon, color: widget.color),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded) ...[
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: widget.child,
            ),
          ],
        ],
      ),
    );
  }
}

/// Dialog to pick from installed apps
class _InstalledAppPicker extends StatefulWidget {
  final List<InstalledApp> apps;

  const _InstalledAppPicker({required this.apps});

  @override
  State<_InstalledAppPicker> createState() => _InstalledAppPickerState();
}

class _InstalledAppPickerState extends State<_InstalledAppPicker> {
  String _searchQuery = '';
  bool _showSystemApps = false;
  List<InstalledApp> _filteredApps = [];

  @override
  void initState() {
    super.initState();
    _applyFilters();
  }

  void _applyFilters() {
    _filteredApps = widget.apps.where((app) {
      if (!_showSystemApps && app.isSystem) return false;
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        return app.appName.toLowerCase().contains(query) ||
            app.packageName.toLowerCase().contains(query);
      }
      return true;
    }).toList()
      ..sort((a, b) => a.appName.toLowerCase().compareTo(b.appName.toLowerCase()));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Installed App'),
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
                      hintText: 'Search apps...',
                      prefixIcon: Icon(Icons.search, size: 18),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                    onChanged: (value) {
                      _searchQuery = value;
                      _applyFilters();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('System', style: TextStyle(fontSize: 11)),
                  selected: _showSystemApps,
                  onSelected: (value) {
                    _showSystemApps = value;
                    _applyFilters();
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredApps.length,
                itemBuilder: (context, index) {
                  final app = _filteredApps[index];
                  return ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      radius: 14,
                      backgroundColor: app.isSystem
                          ? Colors.grey.shade700
                          : const Color(0xFF00D084).withOpacity(0.2),
                      child: Text(
                        app.appName.isNotEmpty ? app.appName[0].toUpperCase() : '?',
                        style: TextStyle(
                          fontSize: 10,
                          color: app.isSystem ? Colors.grey : const Color(0xFF00D084),
                        ),
                      ),
                    ),
                    title: Text(
                      app.appName,
                      style: const TextStyle(fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      app.packageName,
                      style: const TextStyle(fontSize: 9),
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

class _CompactChip extends StatelessWidget {
  final String label;

  const _CompactChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 10),
      ),
    );
  }
}
