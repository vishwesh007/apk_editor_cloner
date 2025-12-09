import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import '../services/apk_tool_service.dart';
import '../services/manifest_service.dart';
import '../services/decompiled_manifest_parser.dart';
import 'manifest_viewer_screen.dart';

class ApkRepackerScreen extends StatefulWidget {
  const ApkRepackerScreen({super.key});

  @override
  State<ApkRepackerScreen> createState() => _ApkRepackerScreenState();
}

class _ApkRepackerScreenState extends State<ApkRepackerScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ApkToolService _apkToolService = ApkToolService();
  final ManifestService _manifestService = ManifestService();

  // APK Info
  String? _selectedApkPath;
  String? _decompiledPath;
  bool _isDecompiling = false;
  bool _isBuilding = false;
  bool _isSigning = false;
  String _statusMessage = '';
  double _progress = 0.0;

  // File browser state
  String? _currentDirectory;
  List<FileSystemEntity> _currentFiles = [];
  String? _selectedFilePath;
  String? _selectedFileContent;
  bool _isLoadingFile = false;
  bool _hasUnsavedChanges = false;

  // Search state
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _replaceController = TextEditingController();
  bool _useRegex = false;
  bool _caseSensitive = false;
  String _searchFilter = 'smali';
  List<SearchResult> _searchResults = [];
  bool _isSearching = false;

  // Strings editor state
  Map<String, String> _stringResources = {};
  List<MapEntry<String, String>> _filteredStrings = [];
  bool _isLoadingStrings = false;
  String _currentStringsLang = 'default';
  final TextEditingController _stringSearchController = TextEditingController();

  // Code editor
  final TextEditingController _codeController = TextEditingController();
  final ScrollController _editorScrollController = ScrollController();

  // Manifest editor state
  DecompiledManifestInfo? _manifestInfo;
  bool _isLoadingManifest = false;
  String? _manifestError;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    
    // Listen to progress updates
    _apkToolService.progressStream.listen((update) {
      if (mounted) {
        setState(() {
          _statusMessage = update.message;
          _progress = update.progress / 100.0;
        });
      }
    });
    
    _apkToolService.errorStream.listen((error) {
      if (mounted) {
        _showError(error);
      }
    });
    
    _apkToolService.completeStream.listen((outputPath) {
      if (mounted) {
        setState(() {
          _statusMessage = 'Complete: $outputPath';
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    _replaceController.dispose();
    _codeController.dispose();
    _editorScrollController.dispose();
    _stringSearchController.dispose();
    super.dispose();
  }

  /// Request storage permissions required for Android 11+
  Future<bool> _requestStoragePermission() async {
    if (Platform.isAndroid) {
      // For Android 11+ (SDK 30+), need MANAGE_EXTERNAL_STORAGE
      if (await Permission.manageExternalStorage.isGranted) {
        return true;
      }
      
      // Try requesting storage permission first
      final status = await Permission.storage.request();
      if (status.isGranted) {
        return true;
      }
      
      // If not granted, request MANAGE_EXTERNAL_STORAGE
      final manageStatus = await Permission.manageExternalStorage.request();
      if (manageStatus.isGranted) {
        return true;
      }
      
      // Show a dialog explaining why we need the permission
      if (mounted) {
        final shouldOpenSettings = await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Storage Permission Required'),
            content: const Text(
              'This app needs "All Files Access" permission to read and modify APK files.\n\n'
              'Please enable "Allow access to manage all files" in the app settings.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                child: const Text('Open Settings'),
              ),
            ],
          ),
        );
        
        if (shouldOpenSettings == true) {
          await openAppSettings();
        }
      }
      return false;
    }
    return true;
  }

  Future<void> _selectApk() async {
    final pathController = TextEditingController(
      text: _selectedApkPath ?? '/storage/emulated/0/Download/',
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
              'Enter the full path to the APK file:',
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
            const SizedBox(height: 8),
            const Text(
              'Example: /storage/emulated/0/Download/myapp.apk',
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
              if (path.isNotEmpty && path.toLowerCase().endsWith('.apk')) {
                Navigator.pop(ctx, path);
              } else {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(
                    content: Text('Please enter a valid APK path ending in .apk'),
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
      // Verify file exists
      final file = File(result);
      if (await file.exists()) {
        setState(() {
          _selectedApkPath = result;
          _decompiledPath = null;
          _statusMessage = 'APK selected: ${result.split('/').last}';
        });
      } else {
        _showError('File not found: $result');
      }
    }
  }

  Future<void> _decompileApk() async {
    if (_selectedApkPath == null) {
      _showError('Please select an APK first');
      return;
    }

    // Request storage permission before decompiling
    final hasPermission = await _requestStoragePermission();
    if (!hasPermission) {
      _showError('Storage permission required to read APK files');
      return;
    }

    setState(() {
      _isDecompiling = true;
      _progress = 0.0;
      _statusMessage = 'Starting decompilation...';
    });

    try {
      final outputDir = _apkToolService.getDefaultOutputDir(_selectedApkPath!);
      
      final success = await _apkToolService.decodeApk(
        apkPath: _selectedApkPath!,
        outputDir: outputDir,
        decodeSources: true,
        decodeResources: true,
      );

      if (success) {
        setState(() {
          _decompiledPath = outputDir;
          _currentDirectory = outputDir;
          _statusMessage = 'Decompilation complete!';
        });
        await _loadDirectory(outputDir);
      } else {
        _showError('Decompilation failed');
      }
    } catch (e) {
      _showError('Decompilation failed: $e');
    } finally {
      setState(() {
        _isDecompiling = false;
        _progress = 0.0;
      });
    }
  }

  Future<void> _buildApk() async {
    if (_decompiledPath == null) {
      _showError('Please decompile an APK first');
      return;
    }

    setState(() {
      _isBuilding = true;
      _progress = 0.0;
      _statusMessage = 'Starting build...';
    });

    try {
      final outputApk = _apkToolService.getDefaultOutputApk(_decompiledPath!);
      
      final success = await _apkToolService.buildApk(
        sourceDir: _decompiledPath!,
        outputApk: outputApk,
        signApk: false,
      );

      if (success) {
        setState(() {
          _statusMessage = 'Build complete! Output: $outputApk';
        });

        // Prompt to sign
        final shouldSign = await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Build Complete'),
            content: Text('APK built successfully.\n\nOutput: $outputApk\n\nWould you like to sign it?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: const Text('No'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: const Text('Sign APK'),
              ),
            ],
          ),
        );

        if (shouldSign == true) {
          await _signApk(outputApk);
        }
      } else {
        _showError('Build failed');
      }
    } catch (e) {
      _showError('Build failed: $e');
    } finally {
      setState(() {
        _isBuilding = false;
        _progress = 0.0;
      });
    }
  }

  Future<void> _signApk(String apkPath) async {
    setState(() {
      _isSigning = true;
      _statusMessage = 'Signing APK...';
    });

    try {
      final signedPath = apkPath.replaceAll('.apk', '_signed.apk');
      
      final success = await _apkToolService.signApk(
        inputApk: apkPath,
        outputApk: signedPath,
        minSdkVersion: 21,
        enableV1: true,
        enableV2: true,
        enableV3: false,
      );

      if (success) {
        setState(() {
          _statusMessage = 'APK signed successfully! Output: $signedPath';
        });
        
        // Prompt to install
        if (mounted) {
          final shouldInstall = await showDialog<bool>(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green),
                  SizedBox(width: 8),
                  Text('APK Signed'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('APK signed successfully!'),
                  const SizedBox(height: 8),
                  SelectableText(
                    signedPath,
                    style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  const Text('Would you like to install it?'),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx, false),
                  child: const Text('Later'),
                ),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pop(ctx, true),
                  icon: const Icon(Icons.install_mobile),
                  label: const Text('Install'),
                ),
              ],
            ),
          );
          
          if (shouldInstall == true) {
            await _installApk(signedPath);
          }
        }
      } else {
        _showError('Signing failed');
      }
    } catch (e) {
      _showError('Signing failed: $e');
    } finally {
      setState(() {
        _isSigning = false;
        _progress = 0.0;
      });
    }
  }
  
  /// Install APK using system installer
  Future<void> _installApk(String apkPath) async {
    try {
      const platform = MethodChannel('com.example.droid_analyst/android');
      await platform.invokeMethod('installApk', {'apkPath': apkPath});
      _showSuccess('Installation initiated');
    } catch (e) {
      _showError('Failed to install: $e');
    }
  }

  Future<void> _loadDirectory(String path) async {
    try {
      final dir = Directory(path);
      if (await dir.exists()) {
        final entities = await dir.list().toList();
        entities.sort((a, b) {
          // Directories first
          if (a is Directory && b is File) return -1;
          if (a is File && b is Directory) return 1;
          return a.path.toLowerCase().compareTo(b.path.toLowerCase());
        });

        setState(() {
          _currentDirectory = path;
          _currentFiles = entities;
        });
      }
    } catch (e) {
      _showError('Failed to load directory: $e');
    }
  }

  Future<void> _loadFile(String path) async {
    if (_hasUnsavedChanges) {
      final shouldDiscard = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Unsaved Changes'),
          content: const Text('You have unsaved changes. Discard them?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Discard'),
            ),
          ],
        ),
      );
      if (shouldDiscard != true) return;
    }

    setState(() {
      _isLoadingFile = true;
      _selectedFilePath = path;
    });

    try {
      final content = await _apkToolService.readDecompiledFile(_decompiledPath!, path);
      setState(() {
        _selectedFileContent = content;
        _codeController.text = content ?? '';
        _hasUnsavedChanges = false;
      });
    } catch (e) {
      _showError('Failed to load file: $e');
    } finally {
      setState(() {
        _isLoadingFile = false;
      });
    }
  }

  Future<void> _saveFile() async {
    if (_selectedFilePath == null || _decompiledPath == null) return;

    try {
      final success = await _apkToolService.writeDecompiledFile(
        _decompiledPath!,
        _selectedFilePath!,
        _codeController.text,
      );

      if (success) {
        setState(() {
          _hasUnsavedChanges = false;
          _selectedFileContent = _codeController.text;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('File saved successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      _showError('Failed to save file: $e');
    }
  }

  Future<void> _performSearch() async {
    if (_decompiledPath == null) {
      _showError('Please decompile an APK first');
      return;
    }

    final query = _searchController.text;
    if (query.isEmpty) {
      _showError('Please enter a search query');
      return;
    }

    setState(() {
      _isSearching = true;
      _searchResults = [];
    });

    try {
      final results = await _apkToolService.searchInFiles(
        sourceDir: _decompiledPath!,
        query: query,
        useRegex: _useRegex,
        ignoreCase: !_caseSensitive,
        fileExtensions: [_searchFilter],
      );

      setState(() {
        _searchResults = results;
        _statusMessage = 'Found ${results.length} matches';
      });
    } catch (e) {
      _showError('Search failed: $e');
    } finally {
      setState(() {
        _isSearching = false;
      });
    }
  }

  Future<void> _performReplace() async {
    if (_decompiledPath == null || _searchResults.isEmpty) {
      _showError('Please perform a search first');
      return;
    }

    final replacement = _replaceController.text;
    final query = _searchController.text;

    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Confirm Replace'),
        content: Text('Replace ${_searchResults.length} occurrences of "$query" with "$replacement"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            child: const Text('Replace All'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    try {
      int totalReplaced = 0;
      // Group by file
      final fileGroups = <String, List<SearchResult>>{};
      for (final result in _searchResults) {
        fileGroups.putIfAbsent(result.file, () => []).add(result);
      }
      
      for (final filePath in fileGroups.keys) {
        final count = await _apkToolService.replaceInFile(
          sourceDir: _decompiledPath!,
          filePath: filePath,
          search: query,
          replace: replacement,
          useRegex: _useRegex,
          ignoreCase: !_caseSensitive,
        );
        totalReplaced += count;
      }

      setState(() {
        _statusMessage = 'Replaced $totalReplaced occurrences';
        _searchResults = [];
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Replaced $totalReplaced occurrences'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      _showError('Replace failed: $e');
    }
  }

  Future<void> _loadStringResources() async {
    if (_decompiledPath == null) {
      _showError('Please decompile an APK first');
      return;
    }

    setState(() {
      _isLoadingStrings = true;
    });

    try {
      final resources = await _apkToolService.getStringResources(
        _decompiledPath!,
        language: _currentStringsLang,
      );

      setState(() {
        _stringResources = resources;
        _filterStrings();
        _statusMessage = 'Loaded ${resources.length} string resources';
      });
    } catch (e) {
      _showError('Failed to load strings: $e');
    } finally {
      setState(() {
        _isLoadingStrings = false;
      });
    }
  }

  void _filterStrings() {
    final query = _stringSearchController.text.toLowerCase();
    if (query.isEmpty) {
      _filteredStrings = _stringResources.entries.toList();
    } else {
      _filteredStrings = _stringResources.entries
          .where((e) => 
              e.key.toLowerCase().contains(query) ||
              e.value.toLowerCase().contains(query))
          .toList();
    }
  }

  Future<void> _updateStringValue(String name, String newValue) async {
    if (_decompiledPath == null) return;

    try {
      final success = await _apkToolService.updateStringResource(
        sourceDir: _decompiledPath!,
        stringName: name,
        newValue: newValue,
        language: _currentStringsLang,
      );

      if (success) {
        setState(() {
          _stringResources[name] = newValue;
          _filterStrings();
        });
      }
    } catch (e) {
      _showError('Failed to update string: $e');
    }
  }

  void _showError(String message) {
    if (!mounted) return;
    setState(() {
      _statusMessage = message;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
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
            Tab(icon: Icon(Icons.edit), text: 'Edit'),
            Tab(icon: Icon(Icons.search), text: 'Search'),
            Tab(icon: Icon(Icons.text_fields), text: 'Strings'),
            Tab(icon: Icon(Icons.description), text: 'Manifest'),
          ],
        ),
        actions: [
          if (_decompiledPath != null)
            IconButton(
              icon: const Icon(Icons.build),
              tooltip: 'Build APK',
              onPressed: _isBuilding || _isDecompiling ? null : _buildApk,
            ),
        ],
      ),
      body: Column(
        children: [
          // Status bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _statusMessage.isEmpty ? 'Ready' : _statusMessage,
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (_progress > 0)
                  SizedBox(
                    width: 100,
                    child: LinearProgressIndicator(value: _progress),
                  ),
              ],
            ),
          ),

          // Tab content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildDecompileTab(),
                _buildEditTab(),
                _buildSearchTab(),
                _buildStringsTab(),
                _buildManifestTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDecompileTab() {
    return Padding(
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
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          _selectedApkPath ?? 'No APK selected',
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton.icon(
                        onPressed: _isDecompiling ? null : _selectApk,
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

          // Decompile Button
          ElevatedButton.icon(
            onPressed: _selectedApkPath != null && !_isDecompiling
                ? _decompileApk
                : null,
            icon: _isDecompiling
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.unarchive),
            label: Text(_isDecompiling ? 'Decompiling...' : 'Decompile APK'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),

          if (_isDecompiling) ...[
            const SizedBox(height: 16),
            LinearProgressIndicator(value: _progress),
            const SizedBox(height: 8),
            Text(
              _statusMessage,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],

          const SizedBox(height: 16),

          // Decompiled Path Info
          if (_decompiledPath != null)
            Card(
              color: Colors.green.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.check_circle, color: Colors.green),
                        const SizedBox(width: 8),
                        Text(
                          'Decompiled Successfully',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Colors.green.shade800,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Output: $_decompiledPath',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            _tabController.animateTo(1);
                          },
                          icon: const Icon(Icons.edit),
                          label: const Text('Edit Files'),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton.icon(
                          onPressed: _buildApk,
                          icon: const Icon(Icons.build),
                          label: const Text('Build APK'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildEditTab() {
    if (_decompiledPath == null) {
      return const Center(
        child: Text('Please decompile an APK first'),
      );
    }

    return Row(
      children: [
        // File tree
        SizedBox(
          width: 280,
          child: Card(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Directory header
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_upward, size: 20),
                        onPressed: _currentDirectory != _decompiledPath
                            ? () {
                                final parent = Directory(_currentDirectory!).parent;
                                if (parent.path.startsWith(_decompiledPath!)) {
                                  _loadDirectory(parent.path);
                                }
                              }
                            : null,
                        tooltip: 'Go up',
                      ),
                      Expanded(
                        child: Text(
                          _currentDirectory?.replaceFirst(_decompiledPath!, '') ?? '/',
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.refresh, size: 20),
                        onPressed: () => _loadDirectory(_currentDirectory!),
                        tooltip: 'Refresh',
                      ),
                    ],
                  ),
                ),

                // File list
                Expanded(
                  child: ListView.builder(
                    itemCount: _currentFiles.length,
                    itemBuilder: (context, index) {
                      final entity = _currentFiles[index];
                      final isDir = entity is Directory;
                      final name = entity.path.split(Platform.pathSeparator).last;
                      final isSelected = entity.path == _selectedFilePath;

                      return ListTile(
                        dense: true,
                        leading: Icon(
                          isDir
                              ? Icons.folder
                              : _getFileIcon(name),
                          color: isDir ? Colors.amber : null,
                          size: 20,
                        ),
                        title: Text(
                          name,
                          style: TextStyle(
                            fontWeight: isSelected ? FontWeight.bold : null,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        selected: isSelected,
                        onTap: () {
                          if (isDir) {
                            _loadDirectory(entity.path);
                          } else {
                            _loadFile(entity.path);
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        // Code editor
        Expanded(
          child: Card(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Editor header
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _selectedFilePath?.split(Platform.pathSeparator).last ?? 'No file selected',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      if (_hasUnsavedChanges)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'Modified',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.save),
                        onPressed: _hasUnsavedChanges ? _saveFile : null,
                        tooltip: 'Save (Ctrl+S)',
                      ),
                    ],
                  ),
                ),

                // Editor content
                Expanded(
                  child: _isLoadingFile
                      ? const Center(child: CircularProgressIndicator())
                      : _selectedFilePath == null
                          ? const Center(
                              child: Text('Select a file to edit'),
                            )
                          : SingleChildScrollView(
                              controller: _editorScrollController,
                              child: TextField(
                                controller: _codeController,
                                maxLines: null,
                                style: const TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 13,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                onChanged: (value) {
                                  if (!_hasUnsavedChanges) {
                                    setState(() {
                                      _hasUnsavedChanges = true;
                                    });
                                  }
                                },
                              ),
                            ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchTab() {
    if (_decompiledPath == null) {
      return const Center(
        child: Text('Please decompile an APK first'),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Search input card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search in Files',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),

                  // Search field
                  TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Search pattern',
                      hintText: 'Enter text or regex pattern',
                      prefixIcon: const Icon(Icons.search),
                      border: const OutlineInputBorder(),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                setState(() {});
                              },
                            )
                          : null,
                    ),
                    onSubmitted: (_) => _performSearch(),
                  ),

                  const SizedBox(height: 12),

                  // Replace field
                  TextField(
                    controller: _replaceController,
                    decoration: const InputDecoration(
                      labelText: 'Replace with',
                      hintText: 'Replacement text',
                      prefixIcon: Icon(Icons.find_replace),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Options row
                  Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      FilterChip(
                        label: const Text('Regex'),
                        selected: _useRegex,
                        onSelected: (v) => setState(() => _useRegex = v),
                      ),
                      FilterChip(
                        label: const Text('Case Sensitive'),
                        selected: _caseSensitive,
                        onSelected: (v) => setState(() => _caseSensitive = v),
                      ),
                      SizedBox(
                        width: 150,
                        child: DropdownButtonFormField<String>(
                          value: _searchFilter,
                          decoration: const InputDecoration(
                            labelText: 'File type',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                          items: const [
                            DropdownMenuItem(value: 'smali', child: Text('Smali')),
                            DropdownMenuItem(value: 'xml', child: Text('XML')),
                            DropdownMenuItem(value: 'java', child: Text('Java')),
                            DropdownMenuItem(value: 'kt', child: Text('Kotlin')),
                            DropdownMenuItem(value: 'txt', child: Text('Text')),
                          ],
                          onChanged: (v) => setState(() => _searchFilter = v!),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Action buttons
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: _isSearching ? null : _performSearch,
                        icon: _isSearching
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.search),
                        label: Text(_isSearching ? 'Searching...' : 'Search'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: _searchResults.isNotEmpty ? _performReplace : null,
                        icon: const Icon(Icons.find_replace),
                        label: const Text('Replace All'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Results header
          Row(
            children: [
              Text(
                'Results (${_searchResults.length})',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              if (_searchResults.isNotEmpty)
                TextButton.icon(
                  onPressed: () => setState(() => _searchResults = []),
                  icon: const Icon(Icons.clear_all),
                  label: const Text('Clear'),
                ),
            ],
          ),

          const SizedBox(height: 8),

          // Results list
          Expanded(
            child: _searchResults.isEmpty
                ? Center(
                    child: Text(
                      _isSearching
                          ? 'Searching...'
                          : 'Enter a search pattern and click Search',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                    ),
                  )
                : ListView.builder(
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      final result = _searchResults[index];
                      final relativePath = result.file.replaceFirst('$_decompiledPath/', '');

                      return Card(
                        child: ListTile(
                          leading: Icon(
                            _getFileIcon(result.file.split('/').last),
                            size: 20,
                          ),
                          title: Text(
                            relativePath,
                            style: const TextStyle(fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Line ${result.lineNumber}',
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Text(
                                  result.line.trim(),
                                  style: const TextStyle(
                                    fontFamily: 'monospace',
                                    fontSize: 11,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            _loadFile(result.file);
                            _tabController.animateTo(1);
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildStringsTab() {
    if (_decompiledPath == null) {
      return const Center(
        child: Text('Please decompile an APK first'),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Controls
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'String Resources',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        width: 120,
                        child: DropdownButtonFormField<String>(
                          value: _currentStringsLang,
                          decoration: const InputDecoration(
                            labelText: 'Language',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                          items: const [
                            DropdownMenuItem(value: 'default', child: Text('Default')),
                            DropdownMenuItem(value: 'en', child: Text('English')),
                            DropdownMenuItem(value: 'es', child: Text('Spanish')),
                            DropdownMenuItem(value: 'de', child: Text('German')),
                            DropdownMenuItem(value: 'fr', child: Text('French')),
                            DropdownMenuItem(value: 'zh', child: Text('Chinese')),
                          ],
                          onChanged: (v) {
                            setState(() => _currentStringsLang = v!);
                          },
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton.icon(
                        onPressed: _isLoadingStrings ? null : _loadStringResources,
                        icon: _isLoadingStrings
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.refresh),
                        label: const Text('Load'),
                      ),
                    ],
                  ),
                  if (_stringResources.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    TextField(
                      controller: _stringSearchController,
                      decoration: InputDecoration(
                        labelText: 'Filter strings',
                        hintText: 'Search by name or value',
                        prefixIcon: const Icon(Icons.filter_list),
                        border: const OutlineInputBorder(),
                        suffixIcon: _stringSearchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  _stringSearchController.clear();
                                  _filterStrings();
                                  setState(() {});
                                },
                              )
                            : null,
                      ),
                      onChanged: (v) {
                        _filterStrings();
                        setState(() {});
                      },
                    ),
                  ],
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Info bar
          if (_stringResources.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                'Showing ${_filteredStrings.length} of ${_stringResources.length} strings',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),

          const SizedBox(height: 8),

          // Strings list
          Expanded(
            child: _stringResources.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.text_fields,
                          size: 64,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _isLoadingStrings
                              ? 'Loading strings...'
                              : 'Click "Load" to load string resources',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: _filteredStrings.length,
                    itemBuilder: (context, index) {
                      final entry = _filteredStrings[index];

                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.label, size: 16),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: SelectableText(
                                      entry.key,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'monospace',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                initialValue: entry.value,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                ),
                                style: const TextStyle(fontSize: 13),
                                maxLines: null,
                                onFieldSubmitted: (v) {
                                  _updateStringValue(entry.key, v);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  IconData _getFileIcon(String filename) {
    final ext = filename.split('.').last.toLowerCase();
    switch (ext) {
      case 'smali':
        return Icons.code;
      case 'xml':
        return Icons.description;
      case 'java':
      case 'kt':
        return Icons.integration_instructions;
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'webp':
        return Icons.image;
      case 'dex':
        return Icons.memory;
      default:
        return Icons.insert_drive_file;
    }
  }

  // ============================================================================
  // MANIFEST TAB
  // ============================================================================

  Future<void> _loadManifest() async {
    if (_decompiledPath == null) return;

    setState(() {
      _isLoadingManifest = true;
      _manifestError = null;
    });

    try {
      final info = await _manifestService.getManifestInfo(_decompiledPath!);
      setState(() {
        _manifestInfo = info;
        _manifestError = info == null ? 'Could not load manifest' : null;
      });
    } catch (e) {
      setState(() {
        _manifestError = 'Error loading manifest: $e';
      });
    } finally {
      setState(() {
        _isLoadingManifest = false;
      });
    }
  }

  Widget _buildManifestTab() {
    if (_decompiledPath == null) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.description_outlined, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('Decompile an APK first to view its manifest'),
          ],
        ),
      );
    }

    if (_manifestInfo == null && !_isLoadingManifest) {
      _loadManifest();
    }

    if (_isLoadingManifest) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_manifestError != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(_manifestError!, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _loadManifest,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    final manifest = _manifestInfo!;
    return ManifestViewerScreen(
      decompiledDir: _decompiledPath!,
      manifestInfo: manifest,
      onRefresh: _loadManifest,
      isEmbedded: true,
    );
  }

  // Legacy methods removed as they are now in ManifestViewerScreen/ManifestEditorScreen
  // Widget _buildInfoRow...
  // Future<void> _showCloneAppDialog...
  // etc.




  void _showSuccess(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }
}
