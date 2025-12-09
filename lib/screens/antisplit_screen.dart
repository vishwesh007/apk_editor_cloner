import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../services/antisplit_service.dart';

/// Screen for AntiSplit-M APK splitting and merging operations
/// Based on https://github.com/AbdurazaaqMohammed/AntiSplit-M
class AntiSplitScreen extends StatefulWidget {
  const AntiSplitScreen({super.key});

  @override
  State<AntiSplitScreen> createState() => _AntiSplitScreenState();
}

class _AntiSplitScreenState extends State<AntiSplitScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final AntiSplitService _antiSplitService = AntiSplitService();

  // Merge state
  String? _mergeInputPath;
  String? _mergeOutputPath;
  SplitApkInfo? _splitApkInfo;
  bool _isMerging = false;
  bool _isLoadingInfo = false;
  bool _signAfterMerge = true;
  MergeResult? _mergeResult;
  double _mergeProgress = 0.0;
  String _mergeStatus = '';

  // Split state
  String? _splitInputPath;
  String? _splitOutputDir;
  bool _isSplitting = false;
  bool _splitByDensity = true;
  bool _splitByAbi = true;
  bool _splitByLanguage = true;
  SplitResult? _splitResult;

  // History
  final List<_OperationHistory> _history = [];

  StreamSubscription<AntiSplitProgress>? _progressSub;
  StreamSubscription<String>? _errorSub;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _progressSub = _antiSplitService.progressStream.listen((progress) {
      if (mounted) {
        setState(() {
          _mergeProgress = progress.progress;
          _mergeStatus = progress.message;
        });
      }
    });

    _errorSub = _antiSplitService.errorStream.listen((error) {
      if (mounted) {
        _showError(error);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _progressSub?.cancel();
    _errorSub?.cancel();
    super.dispose();
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }

  Future<void> _selectMergeInput() async {
    final pathController = TextEditingController(
      text: _mergeInputPath ?? '/storage/emulated/0/Download/',
    );

    final result = await showDialog<String?>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.folder_open, color: Colors.deepPurple),
            SizedBox(width: 8),
            Text('Select Split APK'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter the path to an APKS, XAPK, or APKM file:',
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: pathController,
              decoration: const InputDecoration(
                labelText: 'Split APK Path',
                hintText: '/storage/emulated/0/Download/app.apks',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
            const SizedBox(height: 8),
            const Text(
              'Supported formats: .apks, .xapk, .apkm',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final path = pathController.text.trim();
              if (path.isNotEmpty) {
                Navigator.pop(ctx, path);
              }
            },
            child: const Text('Select'),
          ),
        ],
      ),
    );

    if (result != null && result.isNotEmpty) {
      final file = File(result);
      if (await file.exists()) {
        setState(() {
          _mergeInputPath = result;
          _splitApkInfo = null;
          _mergeResult = null;
          _mergeOutputPath = result.replaceAll(RegExp(r'\.(apks|xapk|apkm)$', caseSensitive: false), '_merged.apk');
        });
        await _loadSplitApkInfo();
      } else {
        _showError('File not found: $result');
      }
    }
  }

  Future<void> _loadSplitApkInfo() async {
    if (_mergeInputPath == null) return;

    setState(() {
      _isLoadingInfo = true;
    });

    try {
      final info = await _antiSplitService.getSplitApkInfo(_mergeInputPath!);
      setState(() {
        _splitApkInfo = info;
      });
    } catch (e) {
      _showError('Failed to load split APK info: $e');
    } finally {
      setState(() {
        _isLoadingInfo = false;
      });
    }
  }

  Future<void> _performMerge() async {
    if (_mergeInputPath == null) {
      _showError('Please select a split APK file');
      return;
    }

    setState(() {
      _isMerging = true;
      _mergeProgress = 0.0;
      _mergeStatus = 'Starting merge...';
      _mergeResult = null;
    });

    try {
      final result = await _antiSplitService.mergeSplitApk(
        inputPath: _mergeInputPath!,
        outputPath: _mergeOutputPath ?? _mergeInputPath!.replaceAll(RegExp(r'\.(apks|xapk|apkm)$'), '_merged.apk'),
        signAfterMerge: _signAfterMerge,
      );

      setState(() {
        _mergeResult = result;
      });

      if (result.success) {
        _history.add(_OperationHistory(
          type: _OperationType.merge,
          inputPath: _mergeInputPath!,
          outputPath: result.outputPath ?? '',
          timestamp: DateTime.now(),
          success: true,
        ));
        _showSuccess('APK merged successfully!');
      } else {
        _showError(result.error ?? 'Merge failed');
      }
    } catch (e) {
      _showError('Merge failed: $e');
    } finally {
      setState(() {
        _isMerging = false;
      });
    }
  }

  Future<void> _selectSplitInput() async {
    final pathController = TextEditingController(
      text: _splitInputPath ?? '/storage/emulated/0/Download/',
    );

    final result = await showDialog<String?>(
      context: context,
      builder: (ctx) => AlertDialog(
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
              'Enter the path to an APK file to split:',
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
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final path = pathController.text.trim();
              if (path.isNotEmpty && path.toLowerCase().endsWith('.apk')) {
                Navigator.pop(ctx, path);
              } else {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(
                    content: Text('Please select a .apk file'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: const Text('Select'),
          ),
        ],
      ),
    );

    if (result != null && result.isNotEmpty) {
      final file = File(result);
      if (await file.exists()) {
        setState(() {
          _splitInputPath = result;
          _splitOutputDir = result.replaceAll('.apk', '_split');
          _splitResult = null;
        });
      } else {
        _showError('File not found: $result');
      }
    }
  }

  Future<void> _performSplit() async {
    if (_splitInputPath == null) {
      _showError('Please select an APK file');
      return;
    }

    setState(() {
      _isSplitting = true;
      _splitResult = null;
    });

    try {
      final result = await _antiSplitService.splitApk(
        inputPath: _splitInputPath!,
        outputDir: _splitOutputDir ?? _splitInputPath!.replaceAll('.apk', '_split'),
        splitByDensity: _splitByDensity,
        splitByAbi: _splitByAbi,
        splitByLanguage: _splitByLanguage,
      );

      setState(() {
        _splitResult = result;
      });

      if (result.success) {
        _history.add(_OperationHistory(
          type: _OperationType.split,
          inputPath: _splitInputPath!,
          outputPath: result.outputDir ?? '',
          timestamp: DateTime.now(),
          success: true,
        ));
        _showSuccess('APK split successfully!');
      } else {
        _showError(result.error ?? 'Split failed');
      }
    } catch (e) {
      _showError('Split failed: $e');
    } finally {
      setState(() {
        _isSplitting = false;
      });
    }
  }

  Future<void> _installMergedApk() async {
    if (_mergeResult?.outputPath == null) return;

    try {
      const platform = MethodChannel('com.example.droid_analyst/android');
      await platform.invokeMethod('installApk', {
        'apkPath': _mergeResult!.outputPath,
      });
      _showSuccess('Installation initiated');
    } catch (e) {
      _showError('Failed to install: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AntiSplit-M'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.merge), text: 'Merge'),
            Tab(icon: Icon(Icons.call_split), text: 'Split'),
            Tab(icon: Icon(Icons.history), text: 'History'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildMergeTab(),
          _buildSplitTab(),
          _buildHistoryTab(),
        ],
      ),
    );
  }

  Widget _buildMergeTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Info Card
          Card(
            color: Colors.blue.shade50,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Merge Split APKs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Merge APKS, XAPK, or APKM split APK bundles into a single installable APK file.',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Input Selection
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Input File',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _mergeInputPath ?? 'No file selected',
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 12,
                              color: _mergeInputPath == null ? Colors.grey : null,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton.icon(
                        onPressed: _isMerging ? null : _selectMergeInput,
                        icon: const Icon(Icons.folder_open),
                        label: const Text('Browse'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Split APK Info
          if (_isLoadingInfo)
            const Card(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Center(child: CircularProgressIndicator()),
              ),
            )
          else if (_splitApkInfo != null)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Split APK Information',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoRow('Package', _splitApkInfo!.packageName ?? 'Unknown'),
                    _buildInfoRow('Version', '${_splitApkInfo!.versionName ?? 'N/A'} (${_splitApkInfo!.versionCode ?? 0})'),
                    _buildInfoRow('Format', _splitApkInfo!.splitType.name.toUpperCase()),
                    _buildInfoRow('Total Size', _splitApkInfo!.totalSizeFormatted),
                    _buildInfoRow('Split Count', _splitApkInfo!.splitCount.toString()),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        if (_splitApkInfo!.hasDensitySplits)
                          _buildChip('Density Splits', Colors.blue),
                        if (_splitApkInfo!.hasAbiSplits)
                          _buildChip('ABI Splits', Colors.green),
                        if (_splitApkInfo!.hasLanguageSplits)
                          _buildChip('Language Splits', Colors.orange),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ExpansionTile(
                      title: const Text('Split Components'),
                      tilePadding: EdgeInsets.zero,
                      children: [
                        ...(_splitApkInfo!.splitApks.map((apk) => ListTile(
                              dense: true,
                              leading: const Icon(Icons.android, size: 20),
                              title: Text(apk, style: const TextStyle(fontSize: 12)),
                            ))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 16),

          // Options
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Options',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    title: const Text('Sign after merge'),
                    subtitle: const Text('Sign the merged APK with a debug key'),
                    value: _signAfterMerge,
                    onChanged: _isMerging
                        ? null
                        : (v) => setState(() => _signAfterMerge = v),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Progress
          if (_isMerging) ...[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            _mergeStatus,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(value: _mergeProgress),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Merge Button
          ElevatedButton.icon(
            onPressed: _mergeInputPath != null && !_isMerging ? _performMerge : null,
            icon: _isMerging
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.merge),
            label: Text(_isMerging ? 'Merging...' : 'Merge APK'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),

          // Result
          if (_mergeResult != null) ...[
            const SizedBox(height: 16),
            Card(
              color: _mergeResult!.success ? Colors.green.shade50 : Colors.red.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          _mergeResult!.success ? Icons.check_circle : Icons.error,
                          color: _mergeResult!.success ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _mergeResult!.success ? 'Merge Successful!' : 'Merge Failed',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _mergeResult!.success ? Colors.green.shade800 : Colors.red.shade800,
                          ),
                        ),
                      ],
                    ),
                    if (_mergeResult!.success && _mergeResult!.outputPath != null) ...[
                      const SizedBox(height: 12),
                      SelectableText(
                        'Output: ${_mergeResult!.outputPath}',
                        style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: _installMergedApk,
                            icon: const Icon(Icons.install_mobile),
                            label: const Text('Install'),
                          ),
                          const SizedBox(width: 8),
                          OutlinedButton.icon(
                            onPressed: () {
                              if (_mergeResult!.outputPath != null) {
                                Clipboard.setData(ClipboardData(text: _mergeResult!.outputPath!));
                                _showSuccess('Path copied to clipboard');
                              }
                            },
                            icon: const Icon(Icons.copy),
                            label: const Text('Copy Path'),
                          ),
                        ],
                      ),
                    ],
                    if (!_mergeResult!.success && _mergeResult!.error != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          _mergeResult!.error!,
                          style: TextStyle(color: Colors.red.shade800),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSplitTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Info Card
          Card(
            color: Colors.orange.shade50,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.orange),
                      SizedBox(width: 8),
                      Text(
                        'Split APK',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Split an APK into components based on screen density, CPU architecture, and language.',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Input Selection
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Input APK',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _splitInputPath ?? 'No file selected',
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 12,
                              color: _splitInputPath == null ? Colors.grey : null,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton.icon(
                        onPressed: _isSplitting ? null : _selectSplitInput,
                        icon: const Icon(Icons.folder_open),
                        label: const Text('Browse'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Split Options
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Split Options',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    title: const Text('Split by Density'),
                    subtitle: const Text('Create separate APKs for different screen densities'),
                    value: _splitByDensity,
                    onChanged: _isSplitting
                        ? null
                        : (v) => setState(() => _splitByDensity = v),
                  ),
                  SwitchListTile(
                    title: const Text('Split by ABI'),
                    subtitle: const Text('Create separate APKs for different CPU architectures'),
                    value: _splitByAbi,
                    onChanged: _isSplitting
                        ? null
                        : (v) => setState(() => _splitByAbi = v),
                  ),
                  SwitchListTile(
                    title: const Text('Split by Language'),
                    subtitle: const Text('Create separate APKs for different languages'),
                    value: _splitByLanguage,
                    onChanged: _isSplitting
                        ? null
                        : (v) => setState(() => _splitByLanguage = v),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Split Button
          ElevatedButton.icon(
            onPressed: _splitInputPath != null && !_isSplitting ? _performSplit : null,
            icon: _isSplitting
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.call_split),
            label: Text(_isSplitting ? 'Splitting...' : 'Split APK'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),

          // Split Result
          if (_splitResult != null) ...[
            const SizedBox(height: 16),
            Card(
              color: _splitResult!.success ? Colors.green.shade50 : Colors.red.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          _splitResult!.success ? Icons.check_circle : Icons.error,
                          color: _splitResult!.success ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _splitResult!.success ? 'Split Successful!' : 'Split Failed',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _splitResult!.success ? Colors.green.shade800 : Colors.red.shade800,
                          ),
                        ),
                      ],
                    ),
                    if (_splitResult!.success) ...[
                      const SizedBox(height: 12),
                      SelectableText(
                        'Output: ${_splitResult!.outputDir}',
                        style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                      ),
                      const SizedBox(height: 12),
                      const Text('Components:', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      ...(_splitResult!.components.map((c) => ListTile(
                            dense: true,
                            leading: _getComponentIcon(c.type),
                            title: Text(c.name),
                            subtitle: Text(c.sizeFormatted),
                          ))),
                    ],
                    if (!_splitResult!.success && _splitResult!.error != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          _splitResult!.error!,
                          style: TextStyle(color: Colors.red.shade800),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildHistoryTab() {
    if (_history.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.history, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No operations yet',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _history.length,
      itemBuilder: (context, index) {
        final item = _history[_history.length - 1 - index];
        return Card(
          child: ListTile(
            leading: Icon(
              item.type == _OperationType.merge ? Icons.merge : Icons.call_split,
              color: item.success ? Colors.green : Colors.red,
            ),
            title: Text(item.type == _OperationType.merge ? 'Merge' : 'Split'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.inputPath.split('/').last,
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${item.timestamp.hour}:${item.timestamp.minute.toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
            trailing: Icon(
              item.success ? Icons.check_circle : Icons.error,
              color: item.success ? Colors.green : Colors.red,
            ),
          ),
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: SelectableText(
              value,
              style: const TextStyle(fontFamily: 'monospace'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          color: color.shade700,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Icon _getComponentIcon(SplitComponentType type) {
    switch (type) {
      case SplitComponentType.base:
        return const Icon(Icons.android, size: 20, color: Colors.green);
      case SplitComponentType.density:
        return const Icon(Icons.aspect_ratio, size: 20, color: Colors.blue);
      case SplitComponentType.abi:
        return const Icon(Icons.memory, size: 20, color: Colors.orange);
      case SplitComponentType.language:
        return const Icon(Icons.language, size: 20, color: Colors.purple);
      case SplitComponentType.feature:
        return const Icon(Icons.extension, size: 20, color: Colors.teal);
      default:
        return const Icon(Icons.insert_drive_file, size: 20);
    }
  }
}

enum _OperationType { merge, split }

class _OperationHistory {
  final _OperationType type;
  final String inputPath;
  final String outputPath;
  final DateTime timestamp;
  final bool success;

  _OperationHistory({
    required this.type,
    required this.inputPath,
    required this.outputPath,
    required this.timestamp,
    required this.success,
  });
}

extension on Color {
  Color get shade700 {
    final hsl = HSLColor.fromColor(this);
    return hsl.withLightness((hsl.lightness - 0.2).clamp(0.0, 1.0)).toColor();
  }
}
