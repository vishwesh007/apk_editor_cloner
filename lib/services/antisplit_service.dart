import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;

/// Service for APK splitting and merging operations
/// Based on AntiSplit-M (https://github.com/AbdurazaaqMohammed/AntiSplit-M)
class AntiSplitService {
  static final AntiSplitService _instance = AntiSplitService._internal();
  factory AntiSplitService() => _instance;
  AntiSplitService._internal();

  static const platform = MethodChannel('com.droidanalyst/antisplit');

  final _progressController = StreamController<AntiSplitProgress>.broadcast();
  Stream<AntiSplitProgress> get progressStream => _progressController.stream;

  final _errorController = StreamController<String>.broadcast();
  Stream<String> get errorStream => _errorController.stream;

  /// Merge split APKs (APKS/XAPK/APKM) into a single APK
  Future<MergeResult> mergeSplitApk({
    required String inputPath,
    required String outputPath,
    bool signAfterMerge = true,
  }) async {
    try {
      _progressController.add(AntiSplitProgress(
        stage: 'Initializing',
        progress: 0.0,
        message: 'Preparing to merge split APK...',
      ));

      // Determine split type
      final splitType = _detectSplitType(inputPath);
      if (splitType == SplitType.unknown) {
        return MergeResult(
          success: false,
          error: 'Unknown or unsupported split APK format',
        );
      }

      _progressController.add(AntiSplitProgress(
        stage: 'Extracting',
        progress: 0.1,
        message: 'Detected format: ${splitType.name}',
      ));

      // Call native implementation
      final result = await platform.invokeMethod('mergeSplitApk', {
        'inputPath': inputPath,
        'outputPath': outputPath,
        'signAfterMerge': signAfterMerge,
        'splitType': splitType.name,
      });

      if (result['success'] == true) {
        _progressController.add(AntiSplitProgress(
          stage: 'Complete',
          progress: 1.0,
          message: 'Merge completed successfully',
        ));

        return MergeResult(
          success: true,
          outputPath: result['outputPath'] as String?,
          baseApkName: result['baseApkName'] as String?,
          mergedComponents: List<String>.from(result['mergedComponents'] ?? []),
        );
      } else {
        return MergeResult(
          success: false,
          error: result['error'] as String?,
        );
      }
    } catch (e) {
      _errorController.add('Merge failed: $e');
      return MergeResult(
        success: false,
        error: 'Merge failed: $e',
      );
    }
  }

  /// Split an APK into components
  Future<SplitResult> splitApk({
    required String inputPath,
    required String outputDir,
    bool splitByDensity = true,
    bool splitByAbi = true,
    bool splitByLanguage = true,
  }) async {
    try {
      _progressController.add(AntiSplitProgress(
        stage: 'Analyzing',
        progress: 0.0,
        message: 'Analyzing APK structure...',
      ));

      final result = await platform.invokeMethod('splitApk', {
        'inputPath': inputPath,
        'outputDir': outputDir,
        'splitByDensity': splitByDensity,
        'splitByAbi': splitByAbi,
        'splitByLanguage': splitByLanguage,
      });

      if (result['success'] == true) {
        _progressController.add(AntiSplitProgress(
          stage: 'Complete',
          progress: 1.0,
          message: 'Split completed successfully',
        ));

        return SplitResult(
          success: true,
          outputDir: result['outputDir'] as String?,
          components: List<SplitComponent>.from(
            (result['components'] as List? ?? []).map((c) => SplitComponent(
              name: c['name'] as String,
              path: c['path'] as String,
              type: SplitComponentType.values.firstWhere(
                (t) => t.name == c['type'],
                orElse: () => SplitComponentType.unknown,
              ),
              size: c['size'] as int? ?? 0,
            )),
          ),
        );
      } else {
        return SplitResult(
          success: false,
          error: result['error'] as String?,
        );
      }
    } catch (e) {
      _errorController.add('Split failed: $e');
      return SplitResult(
        success: false,
        error: 'Split failed: $e',
      );
    }
  }

  /// Get information about a split APK package
  Future<SplitApkInfo?> getSplitApkInfo(String path) async {
    try {
      final splitType = _detectSplitType(path);
      if (splitType == SplitType.unknown) {
        return null;
      }

      final result = await platform.invokeMethod('getSplitApkInfo', {
        'path': path,
        'splitType': splitType.name,
      });

      if (result == null) return null;

      return SplitApkInfo(
        path: path,
        splitType: splitType,
        packageName: result['packageName'] as String?,
        versionName: result['versionName'] as String?,
        versionCode: result['versionCode'] as int?,
        baseApk: result['baseApk'] as String?,
        splitApks: List<String>.from(result['splitApks'] ?? []),
        totalSize: result['totalSize'] as int? ?? 0,
        hasDensitySplits: result['hasDensitySplits'] as bool? ?? false,
        hasAbiSplits: result['hasAbiSplits'] as bool? ?? false,
        hasLanguageSplits: result['hasLanguageSplits'] as bool? ?? false,
      );
    } catch (e) {
      _errorController.add('Failed to get split APK info: $e');
      return null;
    }
  }

  /// Extract split APK contents to directory
  Future<bool> extractSplitApk(String inputPath, String outputDir) async {
    try {
      final result = await platform.invokeMethod('extractSplitApk', {
        'inputPath': inputPath,
        'outputDir': outputDir,
      });
      return result == true;
    } catch (e) {
      _errorController.add('Extract failed: $e');
      return false;
    }
  }

  /// Detect the split APK type based on extension
  SplitType _detectSplitType(String filePath) {
    final ext = path.extension(filePath).toLowerCase();
    switch (ext) {
      case '.apks':
        return SplitType.apks;
      case '.xapk':
        return SplitType.xapk;
      case '.apkm':
        return SplitType.apkm;
      case '.zip':
        // Could be an APKS file
        return SplitType.apks;
      default:
        return SplitType.unknown;
    }
  }

  /// Create APKS bundle from directory containing APKs
  Future<bool> createApksBundle({
    required String inputDir,
    required String outputPath,
  }) async {
    try {
      final result = await platform.invokeMethod('createApksBundle', {
        'inputDir': inputDir,
        'outputPath': outputPath,
      });
      return result == true;
    } catch (e) {
      _errorController.add('Failed to create APKS bundle: $e');
      return false;
    }
  }

  /// Install split APK directly without merging
  Future<bool> installSplitApk(String path) async {
    try {
      final result = await platform.invokeMethod('installSplitApk', {
        'path': path,
      });
      return result == true;
    } catch (e) {
      _errorController.add('Install failed: $e');
      return false;
    }
  }

  void dispose() {
    _progressController.close();
    _errorController.close();
  }
}

// ============================================================================
// Data Classes
// ============================================================================

enum SplitType {
  apks,   // Android App Bundle split
  xapk,   // APKPure format
  apkm,   // APKMirror format
  unknown,
}

enum SplitComponentType {
  base,
  density,
  abi,
  language,
  feature,
  unknown,
}

class AntiSplitProgress {
  final String stage;
  final double progress;
  final String message;

  AntiSplitProgress({
    required this.stage,
    required this.progress,
    required this.message,
  });
}

class MergeResult {
  final bool success;
  final String? outputPath;
  final String? baseApkName;
  final List<String> mergedComponents;
  final String? error;

  MergeResult({
    required this.success,
    this.outputPath,
    this.baseApkName,
    this.mergedComponents = const [],
    this.error,
  });
}

class SplitResult {
  final bool success;
  final String? outputDir;
  final List<SplitComponent> components;
  final String? error;

  SplitResult({
    required this.success,
    this.outputDir,
    this.components = const [],
    this.error,
  });
}

class SplitComponent {
  final String name;
  final String path;
  final SplitComponentType type;
  final int size;

  SplitComponent({
    required this.name,
    required this.path,
    required this.type,
    required this.size,
  });

  String get sizeFormatted {
    if (size < 1024) return '$size B';
    if (size < 1024 * 1024) return '${(size / 1024).toStringAsFixed(1)} KB';
    return '${(size / (1024 * 1024)).toStringAsFixed(2)} MB';
  }
}

class SplitApkInfo {
  final String path;
  final SplitType splitType;
  final String? packageName;
  final String? versionName;
  final int? versionCode;
  final String? baseApk;
  final List<String> splitApks;
  final int totalSize;
  final bool hasDensitySplits;
  final bool hasAbiSplits;
  final bool hasLanguageSplits;

  SplitApkInfo({
    required this.path,
    required this.splitType,
    this.packageName,
    this.versionName,
    this.versionCode,
    this.baseApk,
    this.splitApks = const [],
    this.totalSize = 0,
    this.hasDensitySplits = false,
    this.hasAbiSplits = false,
    this.hasLanguageSplits = false,
  });

  String get totalSizeFormatted {
    if (totalSize < 1024) return '$totalSize B';
    if (totalSize < 1024 * 1024) return '${(totalSize / 1024).toStringAsFixed(1)} KB';
    return '${(totalSize / (1024 * 1024)).toStringAsFixed(2)} MB';
  }

  int get splitCount => splitApks.length;
}
