import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';

/// Service for APK decompilation and building
/// Uses native Android implementation for speed and reliability
/// Ported from MrIkso/ApkRepacker
class ApkToolService {
  static final ApkToolService _instance = ApkToolService._internal();
  factory ApkToolService() => _instance;
  ApkToolService._internal() {
    _setupMethodChannel();
  }

  static const _channel = MethodChannel('com.droidanalyst/apktool');
  
  // Progress streams
  final _progressController = StreamController<ProgressUpdate>.broadcast();
  Stream<ProgressUpdate> get progressStream => _progressController.stream;
  
  final _errorController = StreamController<String>.broadcast();
  Stream<String> get errorStream => _errorController.stream;
  
  final _completeController = StreamController<String>.broadcast();
  Stream<String> get completeStream => _completeController.stream;

  void _setupMethodChannel() {
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'onProgress':
          final message = call.arguments['message'] as String? ?? '';
          final progress = call.arguments['progress'] as int? ?? 0;
          _progressController.add(ProgressUpdate(message, progress));
          break;
        case 'onError':
          final message = call.arguments['message'] as String? ?? 'Unknown error';
          _errorController.add(message);
          break;
        case 'onComplete':
          final outputPath = call.arguments['outputPath'] as String? ?? '';
          _completeController.add(outputPath);
          break;
      }
    });
  }

  /// Decompile an APK file to a directory
  /// 
  /// [apkPath] - Path to the APK file
  /// [outputDir] - Directory to output decompiled files
  /// [decodeSources] - Whether to decode DEX to smali (true) or copy raw
  /// [decodeResources] - Whether to decode binary XML resources
  /// 
  /// Returns true on success
  Future<bool> decodeApk({
    required String apkPath,
    required String outputDir,
    bool decodeSources = true,
    bool decodeResources = true,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('decodeApk', {
        'apkPath': apkPath,
        'outputDir': outputDir,
        'decodeSources': decodeSources,
        'decodeResources': decodeResources,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      _errorController.add('Decode failed: ${e.message}');
      return false;
    }
  }

  /// Build an APK from a decompiled directory
  /// 
  /// [sourceDir] - Directory containing decompiled APK
  /// [outputApk] - Path for output APK
  /// [signApk] - Whether to sign the APK
  /// 
  /// Returns true on success
  Future<bool> buildApk({
    required String sourceDir,
    required String outputApk,
    bool signApk = true,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('buildApk', {
        'sourceDir': sourceDir,
        'outputApk': outputApk,
        'signApk': signApk,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      _errorController.add('Build failed: ${e.message}');
      return false;
    }
  }

  /// Sign an APK file with V1, V2, V3 signatures
  /// 
  /// [inputApk] - Path to the unsigned APK
  /// [outputApk] - Path for signed APK output
  /// [minSdkVersion] - Minimum SDK version (affects signature schemes)
  /// [enableV1] - Enable JAR signing (V1)
  /// [enableV2] - Enable APK Signature Scheme v2
  /// [enableV3] - Enable APK Signature Scheme v3
  Future<bool> signApk({
    required String inputApk,
    required String outputApk,
    int minSdkVersion = 21,
    bool enableV1 = true,
    bool enableV2 = true,
    bool enableV3 = false,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('signApk', {
        'inputApk': inputApk,
        'outputApk': outputApk,
        'minSdkVersion': minSdkVersion,
        'enableV1': enableV1,
        'enableV2': enableV2,
        'enableV3': enableV3,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      _errorController.add('Sign failed: ${e.message}');
      return false;
    }
  }

  /// Search for text in decompiled files
  /// 
  /// [sourceDir] - Decompiled APK directory
  /// [query] - Search query (text or regex)
  /// [useRegex] - Treat query as regex
  /// [ignoreCase] - Case-insensitive search
  /// [fileExtensions] - File types to search
  Future<List<SearchResult>> searchInFiles({
    required String sourceDir,
    required String query,
    bool useRegex = false,
    bool ignoreCase = true,
    List<String> fileExtensions = const ['smali', 'xml', 'json', 'txt'],
  }) async {
    try {
      final result = await _channel.invokeMethod<String>('searchInFiles', {
        'sourceDir': sourceDir,
        'query': query,
        'useRegex': useRegex,
        'ignoreCase': ignoreCase,
        'fileExtensions': fileExtensions,
      });
      
      if (result == null) return [];
      
      final List<dynamic> results = jsonDecode(result);
      return results.map((r) => SearchResult.fromJson(r)).toList();
    } on PlatformException {
      return [];
    }
  }

  /// Replace text in a file
  /// 
  /// Returns the number of replacements made
  Future<int> replaceInFile({
    required String sourceDir,
    required String filePath,
    required String search,
    required String replace,
    bool useRegex = false,
    bool ignoreCase = true,
  }) async {
    try {
      final result = await _channel.invokeMethod<int>('replaceInFile', {
        'sourceDir': sourceDir,
        'filePath': filePath,
        'search': search,
        'replace': replace,
        'useRegex': useRegex,
        'ignoreCase': ignoreCase,
      });
      return result ?? 0;
    } on PlatformException {
      return 0;
    }
  }

  /// Get string resources from decompiled APK
  /// 
  /// [sourceDir] - Decompiled APK directory
  /// [language] - Language code (e.g., 'en', 'es') or 'default'
  Future<Map<String, String>> getStringResources(
    String sourceDir, {
    String language = 'default',
  }) async {
    try {
      final result = await _channel.invokeMethod<String>('getStringResources', {
        'sourceDir': sourceDir,
        'language': language,
      });
      
      if (result == null) return {};
      
      final Map<String, dynamic> decoded = jsonDecode(result);
      return decoded.map((k, v) => MapEntry(k, v.toString()));
    } on PlatformException {
      return {};
    }
  }

  /// Update a string resource value
  Future<bool> updateStringResource({
    required String sourceDir,
    required String stringName,
    required String newValue,
    String language = 'default',
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('updateStringResource', {
        'sourceDir': sourceDir,
        'stringName': stringName,
        'newValue': newValue,
        'language': language,
      });
      return result ?? false;
    } on PlatformException {
      return false;
    }
  }

  /// Get available languages for string resources
  Future<List<String>> getAvailableLanguages(String sourceDir) async {
    try {
      final result = await _channel.invokeMethod<List<dynamic>>('getAvailableLanguages', {
        'sourceDir': sourceDir,
      });
      return result?.map((e) => e.toString()).toList() ?? [];
    } on PlatformException {
      return [];
    }
  }

  /// Get color resources from decompiled APK
  Future<Map<String, String>> getColorResources(String sourceDir) async {
    try {
      final result = await _channel.invokeMethod<String>('getColorResources', {
        'sourceDir': sourceDir,
      });
      
      if (result == null) return {};
      
      final Map<String, dynamic> decoded = jsonDecode(result);
      return decoded.map((k, v) => MapEntry(k, v.toString()));
    } on PlatformException {
      return {};
    }
  }

  /// Update a color resource value
  Future<bool> updateColorResource({
    required String sourceDir,
    required String colorName,
    required String newValue,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('updateColorResource', {
        'sourceDir': sourceDir,
        'colorName': colorName,
        'newValue': newValue,
      });
      return result ?? false;
    } on PlatformException {
      return false;
    }
  }

  /// Get manifest info from decompiled APK
  Future<ManifestInfo?> getManifestInfo(String sourceDir) async {
    try {
      final result = await _channel.invokeMethod<String>('getManifestInfo', {
        'sourceDir': sourceDir,
      });
      
      if (result == null) return null;
      
      return ManifestInfo.fromJson(jsonDecode(result));
    } on PlatformException {
      return null;
    }
  }

  /// Update a manifest attribute
  /// 
  /// Supported attributes: packageName, versionCode, versionName, minSdkVersion, targetSdkVersion
  Future<bool> updateManifestAttribute({
    required String sourceDir,
    required String attribute,
    required String newValue,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('updateManifestAttribute', {
        'sourceDir': sourceDir,
        'attribute': attribute,
        'newValue': newValue,
      });
      return result ?? false;
    } on PlatformException {
      return false;
    }
  }

  /// List all files in a decompiled APK directory
  Future<List<DecompiledFile>> listDecompiledFiles(String sourceDir) async {
    try {
      final result = await _channel.invokeMethod<String>('listDecompiledFiles', {
        'sourceDir': sourceDir,
      });
      
      if (result == null) return [];
      
      final List<dynamic> files = jsonDecode(result);
      return files.map((f) => DecompiledFile.fromJson(f)).toList();
    } on PlatformException {
      return [];
    }
  }

  /// Read a file from decompiled APK
  Future<String?> readDecompiledFile(String sourceDir, String filePath) async {
    try {
      return await _channel.invokeMethod<String>('readDecompiledFile', {
        'sourceDir': sourceDir,
        'filePath': filePath,
      });
    } on PlatformException {
      return null;
    }
  }

  /// Write a file to decompiled APK
  Future<bool> writeDecompiledFile(
    String sourceDir,
    String filePath,
    String content,
  ) async {
    try {
      final result = await _channel.invokeMethod<bool>('writeDecompiledFile', {
        'sourceDir': sourceDir,
        'filePath': filePath,
        'content': content,
      });
      return result ?? false;
    } on PlatformException {
      return false;
    }
  }

  /// Get info about an APK file
  Future<ApkFileInfo?> getApkInfo(String apkPath) async {
    try {
      final result = await _channel.invokeMethod<String>('getApkInfo', {
        'apkPath': apkPath,
      });
      
      if (result == null) return null;
      
      return ApkFileInfo.fromJson(jsonDecode(result));
    } on PlatformException {
      return null;
    }
  }

  /// Quick decompile to smali only (faster for analysis)
  Future<bool> quickDecompile(String apkPath, String outputDir) async {
    return decodeApk(
      apkPath: apkPath,
      outputDir: outputDir,
      decodeSources: true,
      decodeResources: false,
    );
  }

  /// Full decompile with resources
  Future<bool> fullDecompile(String apkPath, String outputDir) async {
    return decodeApk(
      apkPath: apkPath,
      outputDir: outputDir,
      decodeSources: true,
      decodeResources: true,
    );
  }

  /// Generate default output directory for an APK
  String getDefaultOutputDir(String apkPath) {
    final apkName = apkPath.split('/').last.replaceAll('.apk', '');
    const downloadsDir = '/storage/emulated/0/Download';
    return '$downloadsDir/${apkName}_decompiled';
  }

  /// Generate default output APK path for a source directory
  String getDefaultOutputApk(String sourceDir) {
    final dirName = sourceDir.split('/').last.replaceAll('_decompiled', '');
    const downloadsDir = '/storage/emulated/0/Download';
    return '$downloadsDir/${dirName}_rebuilt.apk';
  }

  void dispose() {
    _progressController.close();
    _errorController.close();
    _completeController.close();
  }
}

/// Progress update model
class ProgressUpdate {
  final String message;
  final int progress;

  ProgressUpdate(this.message, this.progress);
}

/// Search result model
class SearchResult {
  final String file;
  final String line;
  final int lineNumber;
  final int matchStart;
  final int matchEnd;

  SearchResult({
    required this.file,
    required this.line,
    required this.lineNumber,
    required this.matchStart,
    required this.matchEnd,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      file: json['file'] as String? ?? '',
      line: json['line'] as String? ?? '',
      lineNumber: (json['lineNumber'] as num?)?.toInt() ?? 0,
      matchStart: (json['matchStart'] as num?)?.toInt() ?? 0,
      matchEnd: (json['matchEnd'] as num?)?.toInt() ?? 0,
    );
  }
}

/// Manifest info model
class ManifestInfo {
  final String packageName;
  final String versionCode;
  final String versionName;
  final String minSdkVersion;
  final String targetSdkVersion;
  final List<String> permissions;

  ManifestInfo({
    required this.packageName,
    required this.versionCode,
    required this.versionName,
    required this.minSdkVersion,
    required this.targetSdkVersion,
    required this.permissions,
  });

  factory ManifestInfo.fromJson(Map<String, dynamic> json) {
    return ManifestInfo(
      packageName: json['packageName'] as String? ?? '',
      versionCode: json['versionCode'] as String? ?? '',
      versionName: json['versionName'] as String? ?? '',
      minSdkVersion: json['minSdkVersion'] as String? ?? '',
      targetSdkVersion: json['targetSdkVersion'] as String? ?? '',
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
    );
  }
}

/// Decompiled file info
class DecompiledFile {
  final String path;
  final int size;
  final String type;

  DecompiledFile({
    required this.path,
    required this.size,
    required this.type,
  });

  factory DecompiledFile.fromJson(Map<String, dynamic> json) {
    return DecompiledFile(
      path: json['path'] as String? ?? '',
      size: (json['size'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? 'other',
    );
  }

  bool get isSmali => type == 'smali';
  bool get isXml => type == 'xml';
  bool get isNative => type == 'native';
  bool get isManifest => type == 'manifest';
}

/// APK file info
class ApkFileInfo {
  final String path;
  final int size;
  final int dexCount;
  final List<String> nativeLibs;

  ApkFileInfo({
    required this.path,
    required this.size,
    required this.dexCount,
    required this.nativeLibs,
  });

  factory ApkFileInfo.fromJson(Map<String, dynamic> json) {
    return ApkFileInfo(
      path: json['path'] as String? ?? '',
      size: (json['size'] as num?)?.toInt() ?? 0,
      dexCount: (json['dexCount'] as num?)?.toInt() ?? 0,
      nativeLibs: (json['nativeLibs'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
    );
  }
}
