import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/apk_tool_service.dart';
import '../providers/device_provider.dart';

/// Screen for APK decompilation and building
/// Provides full apktool-like functionality
class ApkRepackerScreen extends StatefulWidget {
  const ApkRepackerScreen({super.key});

  @override
  State<ApkRepackerScreen> createState() => _ApkRepackerScreenState();
}

class _ApkRepackerScreenState extends State<ApkRepackerScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ApkToolService _apkToolService = ApkToolService();

  // Decompile state
  String? _selectedApkPath;
  String? _outputDir;
  bool _decodeSources = true;
  bool _decodeResources = true;
  bool _isDecompiling = false;
  String _decompileStatus = '';
  int _decompileProgress = 0;

  // Build state
  String? _selectedSourceDir;
  String? _outputApkPath;
  bool _signApk = true;
  bool _isBuilding = false;
  String _buildStatus = '';
  int _buildProgress = 0;

  // File browser state
  List<DecompiledFile> _decompiledFiles = [];
  String? _currentSourceDir;
  String? _selectedFilePath;
  String? _fileContent;
  bool _isLoadingFiles = false;
  bool _hasUnsavedChanges = false;

  // Subscriptions
  StreamSubscription? _progressSub;
  StreamSubscription? _errorSub;
  StreamSubscription? _completeSub;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _setupListeners();
  }

  void _setupListeners() {
    _progressSub = _apkToolService.progressStream.listen((update) {
      setState(() {
        if (_isDecompiling) {
          _decompileStatus = update.message;
          _decompileProgress = update.progress;
        } else if (_isBuilding) {
          _buildStatus = update.message;
          _buildProgress = update.progress;
        }
      });
    });

    _errorSub = _apkToolService.errorStream.listen((error) {
      _showError(error);
      setState(() {
        _isDecompiling = false;
        _isBuilding = false;
      });
    });

    _completeSub = _apkToolService.completeStream.listen((outputPath) {
      setState(() {
        if (_isDecompiling) {
          _isDecompiling = false;
          _currentSourceDir = outputPath;
          _loadDecompiledFiles(outputPath);
          _showSuccess('APK decompiled successfully!\n\nOutput: $outputPath');
        } else if (_isBuilding) {
          _isBuilding = false;
          _showSuccess('APK built successfully!\n\nOutput: $outputPath');
        }
      });
    });
  }

  @override
  void dispose() {
    _progressSub?.cancel();
    _errorSub?.cancel();
    _completeSub?.cancel();
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _selectApkForDecompile() async {
    // Show dialog to select between installed apps or file picker
    final choice = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Select APK Source', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.android),
              title: const Text('Installed Apps'),
              subtitle: const Text('Select from device apps'),
              onTap: () => Navigator.pop(context, 'installed'),
            ),
            ListTile(
              leading: const Icon(Icons.folder),
              title: const Text('Browse Files'),
              subtitle: const Text('Select APK from storage'),
              onTap: () => Navigator.pop(context, 'browse'),
            ),
          ],
        ),
      ),
    );

    if (choice == 'installed') {
      await _selectFromInstalledApps();
    } else if (choice == 'browse') {
      await _selectFromBrowse();
    }
  }

  Future<void> _selectFromInstalledApps() async {
    final deviceProvider = context.read<DeviceProvider>();
    
    // Show loading indicator while fetching apps
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Loading installed apps...'),
              ],
            ),
          ),
        ),
      ),
    );
    
    // Force refresh apps list
    await deviceProvider.loadInstalledApps(forceRefresh: true);
    
    // Close loading dialog
    if (mounted) Navigator.of(context).pop();
    
    final apps = deviceProvider.installedApps
        .where((app) => !(app['isSystem'] as bool? ?? false))
        .toList();
    
    debugPrint('[APKRepacker] Loaded ${apps.length} user apps');

    if (apps.isEmpty) {
      _showError('No user apps found on device. Make sure you have installed apps.');
      return;
    }

    final selected = await showModalBottomSheet<Map<String, dynamic>>(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Select APK to Decompile',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: apps.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.android, size: 48, color: Colors.grey),
                          SizedBox(height: 16),
                          Text('No user apps found'),
                        ],
                      ),
                    )
                  : ListView.builder(
                      controller: scrollController,
                      itemCount: apps.length,
                      itemBuilder: (context, index) {
                        final app = apps[index];
                        final sourceDir = app['sourceDir'] as String? ?? '';
                        int fileSize = 0;
                        try {
                          fileSize = File(sourceDir).lengthSync();
                        } catch (e) {
                          // File doesn't exist or can't be read
                        }
                        return ListTile(
                          leading: const Icon(Icons.android),
                          title: Text(app['appName'] as String? ?? 'Unknown'),
                          subtitle: Text(app['packageName'] as String? ?? ''),
                          trailing: Text(
                            _formatSize(fileSize),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          onTap: () => Navigator.pop(context, app),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );

    if (selected != null) {
      setState(() {
        _selectedApkPath = selected['sourceDir'] as String?;
        _outputDir = _apkToolService.getDefaultOutputDir(_selectedApkPath!);
      });
    }
  }

  Future<void> _selectFromBrowse() async {
    // Browse multiple common directories for APK files
    final List<String> searchDirs = [
      '/storage/emulated/0/Download',
      '/storage/emulated/0/Documents',
      '/storage/emulated/0/DroidAnalyst',
      '/storage/emulated/0/APK',
      '/sdcard/Download',
    ];
    
    final List<FileSystemEntity> apkFiles = [];

    // Show loading while scanning
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Scanning for APK files...'),
              ],
            ),
          ),
        ),
      ),
    );

    try {
      for (final dirPath in searchDirs) {
        final dir = Directory(dirPath);
        if (await dir.exists()) {
          final files = await dir.list().toList();
          apkFiles.addAll(
            files.where((f) => f.path.toLowerCase().endsWith('.apk')).toList(),
          );
        }
      }
      debugPrint('[APKRepacker] Found ${apkFiles.length} APK files');
    } catch (e) {
      debugPrint('[APKRepacker] Error scanning directories: $e');
    }
    
    // Close loading dialog
    if (mounted) Navigator.of(context).pop();

    if (apkFiles.isEmpty) {
      _showError('No APK files found. Place APK files in Download or Documents folder.');
      return;
    }

    final selected = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Select APK File',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: apkFiles.length,
                itemBuilder: (context, index) {
                  final file = apkFiles[index];
                  final fileName = file.path.split('/').last;
                  int fileSize = 0;
                  try {
                    fileSize = File(file.path).lengthSync();
                  } catch (e) {
                    // Can't read size
                  }
                  return ListTile(
                    leading: const Icon(Icons.file_present),
                    title: Text(fileName),
                    subtitle: Text(file.path),
                    trailing: Text(
                      _formatSize(fileSize),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onTap: () => Navigator.pop(context, file.path),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

    if (selected != null) {
      setState(() {
        _selectedApkPath = selected;
        _outputDir = _apkToolService.getDefaultOutputDir(_selectedApkPath!);
      });
    }
  }

  Future<void> _startDecompile() async {
    if (_selectedApkPath == null || _outputDir == null) {
      _showError('Please select an APK and output directory');
      return;
    }

    debugPrint('[APKRepacker] Starting decompile:');
    debugPrint('[APKRepacker]   APK: $_selectedApkPath');
    debugPrint('[APKRepacker]   Output: $_outputDir');
    debugPrint('[APKRepacker]   Decode sources: $_decodeSources');
    debugPrint('[APKRepacker]   Decode resources: $_decodeResources');

    setState(() {
      _isDecompiling = true;
      _decompileProgress = 0;
      _decompileStatus = 'Starting...';
    });

    final success = await _apkToolService.decodeApk(
      apkPath: _selectedApkPath!,
      outputDir: _outputDir!,
      decodeSources: _decodeSources,
      decodeResources: _decodeResources,
    );
    
    debugPrint('[APKRepacker] Decompile returned: $success');
  }

  Future<void> _selectSourceDir() async {
    // Show directory picker or list available decompiled directories
    final downloadsDir = Directory('/storage/emulated/0/Download');
    final dirs = await downloadsDir
        .list()
        .where((e) => e is Directory && e.path.contains('_decompiled'))
        .map((e) => e.path)
        .toList();

    if (dirs.isEmpty) {
      _showError('No decompiled APK directories found.\nDecompile an APK first.');
      return;
    }

    final selected = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => ListView.builder(
        shrinkWrap: true,
        itemCount: dirs.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.folder),
          title: Text(dirs[index].split('/').last),
          subtitle: Text(dirs[index]),
          onTap: () => Navigator.pop(context, dirs[index]),
        ),
      ),
    );

    if (selected != null) {
      setState(() {
        _selectedSourceDir = selected;
        _outputApkPath = _apkToolService.getDefaultOutputApk(selected);
        _currentSourceDir = selected;
      });
      _loadDecompiledFiles(selected);
    }
  }

  Future<void> _loadDecompiledFiles(String sourceDir) async {
    setState(() => _isLoadingFiles = true);
    
    try {
      final files = await _apkToolService.listDecompiledFiles(sourceDir);
      setState(() {
        _decompiledFiles = files;
        _currentSourceDir = sourceDir;
        _isLoadingFiles = false;
      });
    } catch (e) {
      setState(() => _isLoadingFiles = false);
      _showError('Failed to load files: $e');
    }
  }

  Future<void> _startBuild() async {
    if (_selectedSourceDir == null || _outputApkPath == null) {
      _showError('Please select source directory and output path');
      return;
    }

    setState(() {
      _isBuilding = true;
      _buildProgress = 0;
      _buildStatus = 'Starting...';
    });

    await _apkToolService.buildApk(
      sourceDir: _selectedSourceDir!,
      outputApk: _outputApkPath!,
      signApk: _signApk,
    );
  }

  Future<void> _openFile(DecompiledFile file) async {
    if (_currentSourceDir == null) return;

    setState(() => _selectedFilePath = file.path);

    final content = await _apkToolService.readDecompiledFile(
      _currentSourceDir!,
      file.path,
    );

    setState(() {
      _fileContent = content;
      _hasUnsavedChanges = false;
    });
  }

  Future<void> _saveFile() async {
    if (_currentSourceDir == null ||
        _selectedFilePath == null ||
        _fileContent == null) {
      return;
    }

    final success = await _apkToolService.writeDecompiledFile(
      _currentSourceDir!,
      _selectedFilePath!,
      _fileContent!,
    );

    if (success) {
      setState(() => _hasUnsavedChanges = false);
      _showSuccess('File saved successfully');
    } else {
      _showError('Failed to save file');
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 4),
      ),
    );
  }

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APK Repacker'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.unarchive), text: 'Decompile'),
            Tab(icon: Icon(Icons.build), text: 'Build'),
            Tab(icon: Icon(Icons.edit_note), text: 'Edit'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDecompileTab(),
          _buildBuildTab(),
          _buildEditTab(),
        ],
      ),
    );
  }

  Widget _buildDecompileTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // APK Selection Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select APK',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: const Icon(Icons.android),
                    title: Text(_selectedApkPath?.split('/').last ?? 'No APK selected'),
                    subtitle: _selectedApkPath != null
                        ? Text(_selectedApkPath!, maxLines: 1, overflow: TextOverflow.ellipsis)
                        : null,
                    trailing: const Icon(Icons.folder_open),
                    onTap: _isDecompiling ? null : _selectApkForDecompile,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Output Directory Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Output Directory',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    initialValue: _outputDir,
                    decoration: const InputDecoration(
                      hintText: '/storage/emulated/0/Download/...',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => _outputDir = value,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Options Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Decompile Options',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SwitchListTile(
                    title: const Text('Decode Sources (DEX → Smali)'),
                    subtitle: const Text('Convert bytecode to readable smali'),
                    value: _decodeSources,
                    onChanged: _isDecompiling ? null : (v) => setState(() => _decodeSources = v),
                  ),
                  SwitchListTile(
                    title: const Text('Decode Resources'),
                    subtitle: const Text('Decode binary XML files'),
                    value: _decodeResources,
                    onChanged: _isDecompiling ? null : (v) => setState(() => _decodeResources = v),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Progress
          if (_isDecompiling) ...[
            Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    LinearProgressIndicator(value: _decompileProgress / 100),
                    const SizedBox(height: 8),
                    Text(
                      _decompileStatus,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '$_decompileProgress%',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Decompile Button
          ElevatedButton.icon(
            onPressed: _isDecompiling || _selectedApkPath == null
                ? null
                : _startDecompile,
            icon: _isDecompiling
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.unarchive),
            label: Text(_isDecompiling ? 'Decompiling...' : 'Decompile APK'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBuildTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Source Directory Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Source Directory',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: const Icon(Icons.folder),
                    title: Text(_selectedSourceDir?.split('/').last ?? 'No directory selected'),
                    subtitle: _selectedSourceDir != null
                        ? Text(_selectedSourceDir!, maxLines: 1, overflow: TextOverflow.ellipsis)
                        : null,
                    trailing: const Icon(Icons.folder_open),
                    onTap: _isBuilding ? null : _selectSourceDir,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Output APK Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Output APK',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    initialValue: _outputApkPath,
                    decoration: const InputDecoration(
                      hintText: '/storage/emulated/0/Download/app_rebuilt.apk',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => _outputApkPath = value,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Options Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Build Options',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SwitchListTile(
                    title: const Text('Sign APK'),
                    subtitle: const Text('Sign with debug key (v1+v2+v3)'),
                    value: _signApk,
                    onChanged: _isBuilding ? null : (v) => setState(() => _signApk = v),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Progress
          if (_isBuilding) ...[
            Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    LinearProgressIndicator(value: _buildProgress / 100),
                    const SizedBox(height: 8),
                    Text(
                      _buildStatus,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '$_buildProgress%',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Build Button
          ElevatedButton.icon(
            onPressed: _isBuilding || _selectedSourceDir == null
                ? null
                : _startBuild,
            icon: _isBuilding
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.build),
            label: Text(_isBuilding ? 'Building...' : 'Build APK'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditTab() {
    return Row(
      children: [
        // File browser
        Container(
          width: 250,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Theme.of(context).dividerColor,
              ),
            ),
          ),
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(8),
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: Row(
                  children: [
                    const Icon(Icons.folder, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _currentSourceDir?.split('/').last ?? 'No project',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.folder_open, size: 20),
                      onPressed: _selectSourceDir,
                      tooltip: 'Open project',
                    ),
                  ],
                ),
              ),
              
              // File list
              Expanded(
                child: _isLoadingFiles
                    ? const Center(child: CircularProgressIndicator())
                    : _decompiledFiles.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.folder_open, size: 48, color: Colors.grey),
                                const SizedBox(height: 16),
                                const Text('No project loaded'),
                                const SizedBox(height: 8),
                                TextButton.icon(
                                  onPressed: _selectSourceDir,
                                  icon: const Icon(Icons.folder_open),
                                  label: const Text('Open Project'),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: _decompiledFiles.length,
                            itemBuilder: (context, index) {
                              final file = _decompiledFiles[index];
                              final isSelected = _selectedFilePath == file.path;
                              
                              return ListTile(
                                dense: true,
                                selected: isSelected,
                                leading: Icon(
                                  _getFileIcon(file),
                                  size: 20,
                                  color: _getFileColor(file),
                                ),
                                title: Text(
                                  file.path.split('/').last,
                                  style: const TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                subtitle: Text(
                                  _formatSize(file.size),
                                  style: const TextStyle(fontSize: 10),
                                ),
                                onTap: () => _openFile(file),
                              );
                            },
                          ),
              ),
            ],
          ),
        ),
        
        // Editor
        Expanded(
          child: _fileContent == null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.code,
                        size: 64,
                        color: Theme.of(context).disabledColor,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Select a file to edit',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).disabledColor,
                            ),
                      ),
                    ],
                  ),
                )
              : Column(
                  children: [
                    // Editor toolbar
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              _selectedFilePath ?? '',
                              style: Theme.of(context).textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (_hasUnsavedChanges)
                            const Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle, size: 8, color: Colors.orange),
                            ),
                          IconButton(
                            icon: const Icon(Icons.save, size: 20),
                            onPressed: _hasUnsavedChanges ? _saveFile : null,
                            tooltip: 'Save',
                          ),
                        ],
                      ),
                    ),
                    
                    // Code editor
                    Expanded(
                      child: TextField(
                        controller: TextEditingController(text: _fileContent),
                        maxLines: null,
                        expands: true,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(8),
                        ),
                        onChanged: (value) {
                          _fileContent = value;
                          if (!_hasUnsavedChanges) {
                            setState(() => _hasUnsavedChanges = true);
                          }
                        },
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }

  IconData _getFileIcon(DecompiledFile file) {
    if (file.isSmali) return Icons.code;
    if (file.isXml) return Icons.description;
    if (file.isNative) return Icons.memory;
    if (file.isManifest) return Icons.app_settings_alt;
    return Icons.insert_drive_file;
  }

  Color _getFileColor(DecompiledFile file) {
    if (file.isSmali) return Colors.blue;
    if (file.isXml) return Colors.orange;
    if (file.isNative) return Colors.purple;
    if (file.isManifest) return Colors.green;
    return Colors.grey;
  }
}
