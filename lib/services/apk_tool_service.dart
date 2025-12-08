import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';

/// Service for APK decompilation and building
/// Uses native Android implementation for speed and reliability
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

  /// Sign an APK file with test key
  /// 
  /// [inputApk] - Path to the unsigned APK
  /// [outputApk] - Path for the signed APK
  /// [minSdkVersion] - Minimum SDK version for signing
  /// 
  /// Returns true on success
  Future<bool> signApkWithTestKey({
    required String inputApk,
    required String outputApk,
    int minSdkVersion = 21,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('signApkWithTestKey', {
        'inputApk': inputApk,
        'outputApk': outputApk,
        'minSdkVersion': minSdkVersion,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      _errorController.add('Signing failed: ${e.message}');
      return false;
    }
  }

  /// Verify APK signature
  /// 
  /// [apkPath] - Path to the APK to verify
  /// 
  /// Returns signature information
  Future<ApkSignatureInfo?> verifyApkSignature(String apkPath) async {
    try {
      final result = await _channel.invokeMethod<Map>('verifyApkSignature', {
        'apkPath': apkPath,
      });
      
      if (result == null) return null;
      
      return ApkSignatureInfo.fromMap(result.cast<String, dynamic>());
    } on PlatformException catch (e) {
      _errorController.add('Signature verification failed: ${e.message}');
      return null;
    }
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

/// APK signature information
class ApkSignatureInfo {
  final bool isValid;
  final String? v1SchemeSignerName;
  final bool v2Verified;
  final bool v3Verified;
  final bool v4Verified;
  final List<String> errors;
  final List<String> warnings;

  ApkSignatureInfo({
    required this.isValid,
    this.v1SchemeSignerName,
    this.v2Verified = false,
    this.v3Verified = false,
    this.v4Verified = false,
    this.errors = const [],
    this.warnings = const [],
  });

  factory ApkSignatureInfo.fromMap(Map<String, dynamic> map) {
    return ApkSignatureInfo(
      isValid: map['isValid'] as bool? ?? false,
      v1SchemeSignerName: map['v1SchemeSignerName'] as String?,
      v2Verified: map['v2Verified'] as bool? ?? false,
      v3Verified: map['v3Verified'] as bool? ?? false,
      v4Verified: map['v4Verified'] as bool? ?? false,
      errors: (map['errors'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
      warnings: (map['warnings'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
    );
  }

  /// Get a human-readable summary of the signature status
  String get summary {
    if (!isValid) {
      return 'Invalid signature: ${errors.join(', ')}';
    }
    
    final schemes = <String>[];
    if (v1SchemeSignerName != null) schemes.add('v1');
    if (v2Verified) schemes.add('v2');
    if (v3Verified) schemes.add('v3');
    if (v4Verified) schemes.add('v4');
    
    if (schemes.isEmpty) {
      return 'No valid signature schemes found';
    }
    
    return 'Valid signature (${schemes.join(', ')})';
  }
  
  /// Check if APK uses modern signature schemes (v2+)
  bool get hasModernSignature => v2Verified || v3Verified || v4Verified;
}
