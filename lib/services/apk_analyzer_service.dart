import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb, compute;
import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import '../models/apk_info.dart';
import 'android_manifest_parser.dart';

/// Service for static APK analysis
class ApkAnalyzerService {
  static final ApkAnalyzerService _instance = ApkAnalyzerService._internal();
  factory ApkAnalyzerService() => _instance;
  ApkAnalyzerService._internal();

  /// Analyze an APK file
  Future<ApkInfo?> analyzeApk(String apkPath) async {
    if (kIsWeb) return null;
    
    final file = File(apkPath);
    if (!await file.exists()) {
      return null;
    }

    try {
      final bytes = await file.readAsBytes();
      // Use compute for heavy archive decoding
      final archive = await compute(_decodeArchive, bytes);

      String packageName = '';
      String appName = '';
      String versionName = '1.0';
      int versionCode = 1;
      int minSdkVersion = 1;
      int targetSdkVersion = 1;
      List<String> permissions = [];
      List<String> activities = [];
      List<String> services = [];
      List<String> receivers = [];
      List<String> providers = [];
      final List<String> nativeLibraries = [];
      final List<SuspiciousIndicator> suspiciousIndicators = [];
      Map<String, List<String>> extractedStrings = {};

      // Find and parse AndroidManifest.xml using pure Dart parser
      for (final archiveFile in archive) {
        if (archiveFile.name == 'AndroidManifest.xml') {
          try {
            final manifestBytes = archiveFile.content as List<int>;
            final parser = AndroidManifestParser();
            final manifestInfo = parser.parse(manifestBytes);
            
            packageName = manifestInfo.packageName;
            appName = manifestInfo.appName;
            versionName = manifestInfo.versionName;
            versionCode = manifestInfo.versionCode;
            minSdkVersion = manifestInfo.minSdkVersion;
            targetSdkVersion = manifestInfo.targetSdkVersion;
            permissions = manifestInfo.permissions;
            activities = manifestInfo.activities.map((a) => a.name).toList();
            services = manifestInfo.services;
            receivers = manifestInfo.receivers;
            providers = manifestInfo.providers;
          } catch (e) {
            print('Error parsing manifest: $e');
          }
          break;
        }
      }

      // Extract native libraries
      for (final archiveFile in archive) {
        if (archiveFile.name.startsWith('lib/') &&
            archiveFile.name.endsWith('.so')) {
          nativeLibraries.add(archiveFile.name);
        }
      }

      // Look for suspicious patterns in DEX files
      for (final archiveFile in archive) {
        if (archiveFile.name.endsWith('.dex')) {
          final dexBytes = archiveFile.content as List<int>;
          final indicators = _scanDexForSuspiciousPatterns(
            archiveFile.name,
            dexBytes,
          );
          suspiciousIndicators.addAll(indicators);
        }
      }

      // Extract strings from resources
      extractedStrings = await _extractStrings(archive);

      return ApkInfo(
        filePath: apkPath,
        packageName: packageName,
        appName: appName,
        versionName: versionName,
        versionCode: versionCode,
        minSdkVersion: minSdkVersion,
        targetSdkVersion: targetSdkVersion,
        permissions: permissions.where((p) => p.isNotEmpty).toList(),
        activities: activities.where((a) => a.isNotEmpty).toList(),
        services: services.where((s) => s.isNotEmpty).toList(),
        receivers: receivers.where((r) => r.isNotEmpty).toList(),
        providers: providers.where((p) => p.isNotEmpty).toList(),
        nativeLibraries: nativeLibraries,
        suspiciousIndicators: suspiciousIndicators,
        extractedStrings: extractedStrings,
        analyzedAt: DateTime.now(),
      );
    } catch (e) {
      print('Error analyzing APK: $e');
      return null;
    }
  }
  
  /// Decode archive in isolate to avoid UI jank
  static Archive _decodeArchive(List<int> bytes) {
    return ZipDecoder().decodeBytes(bytes);
  }

  List<SuspiciousIndicator> _scanDexForSuspiciousPatterns(
    String fileName,
    List<int> bytes,
  ) {
    final indicators = <SuspiciousIndicator>[];
    final content = String.fromCharCodes(bytes, 0, bytes.length.clamp(0, 100000));

    // Check for suspicious API patterns
    final suspiciousPatterns = {
      'Ldalvik/system/DexClassLoader': 'Dynamic code loading detected',
      'Ljava/lang/Runtime;->exec': 'Runtime command execution',
      'Ljava/lang/ProcessBuilder': 'Process creation capability',
      'Landroid/telephony/SmsManager': 'SMS sending capability',
      'Ljavax/crypto/Cipher': 'Encryption/Decryption usage',
      'getDeviceId': 'Device ID access',
      'getSubscriberId': 'Subscriber ID access (IMSI)',
      'getSimSerialNumber': 'SIM serial number access',
      'TelephonyManager': 'Telephony access',
      'LocationManager': 'Location tracking',
      'Landroid/hardware/Camera': 'Camera access',
      'MediaRecorder': 'Audio/Video recording',
      'ContentResolver': 'Content provider access',
      'su': 'Potential root command',
      '/system/bin/su': 'Root binary path',
      'Superuser': 'Superuser app detection',
      'isRooted': 'Root detection code',
      'test-keys': 'Build keys check',
      'android.os.Debug': 'Debug detection',
      'isDebuggerConnected': 'Debugger detection',
      'frida': 'Frida detection',
      'xposed': 'Xposed detection',
    };

    for (final entry in suspiciousPatterns.entries) {
      if (content.contains(entry.key)) {
        indicators.add(SuspiciousIndicator(
          type: 'Pattern Match',
          description: entry.value,
          location: '$fileName: ${entry.key}',
          severity: _getSeverityForPattern(entry.key),
        ));
      }
    }

    // Check for hardcoded IPs
    final ipRegex = RegExp(
        r'\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b');
    final ips = ipRegex.allMatches(content);
    for (final match in ips) {
      final ip = match.group(0)!;
      if (!ip.startsWith('127.') && !ip.startsWith('10.') && 
          !ip.startsWith('192.168.') && !ip.startsWith('0.')) {
        indicators.add(SuspiciousIndicator(
          type: 'Hardcoded IP',
          description: 'Potential C2 server: $ip',
          location: fileName,
          severity: SeverityLevel.medium,
        ));
      }
    }

    // Check for URLs
    final urlRegex = RegExp(r'https?://[^\s<>"{}|\\^`\[\]]+');
    final urls = urlRegex.allMatches(content);
    for (final match in urls) {
      final url = match.group(0)!;
      if (!url.contains('google.com') && 
          !url.contains('android.com') &&
          !url.contains('googleapis.com')) {
        indicators.add(SuspiciousIndicator(
          type: 'URL Found',
          description: url,
          location: fileName,
          severity: SeverityLevel.info,
        ));
      }
    }

    return indicators;
  }

  SeverityLevel _getSeverityForPattern(String pattern) {
    const highSeverity = [
      'DexClassLoader',
      'Runtime;->exec',
      'ProcessBuilder',
      'SmsManager',
      '/system/bin/su',
    ];
    const mediumSeverity = [
      'Cipher',
      'getDeviceId',
      'getSubscriberId',
      'Camera',
      'MediaRecorder',
    ];

    if (highSeverity.any((p) => pattern.contains(p))) {
      return SeverityLevel.high;
    }
    if (mediumSeverity.any((p) => pattern.contains(p))) {
      return SeverityLevel.medium;
    }
    return SeverityLevel.low;
  }

  Future<Map<String, List<String>>> _extractStrings(Archive archive) async {
    final strings = <String, List<String>>{};
    
    // We'd need to properly decode resources.arsc for full string extraction
    // For now, extract readable strings from the archive
    
    strings['urls'] = [];
    strings['ips'] = [];
    strings['emails'] = [];
    
    return strings;
  }

  /// Get file hash
  Future<Map<String, String>> getFileHashes(String filePath) async {
    final file = File(filePath);
    final bytes = await file.readAsBytes();
    
    return {
      'md5': md5.convert(bytes).toString(),
      'sha1': sha1.convert(bytes).toString(),
      'sha256': sha256.convert(bytes).toString(),
    };
  }

  /// Get APK signature info
  Future<Map<String, String>?> getSignatureInfo(String apkPath) async {
    try {
      final result = await Process.run(
        'apksigner',
        ['verify', '--print-certs', '-v', apkPath],
      );
      if (result.exitCode != 0) return null;

      final output = result.stdout as String;
      final info = <String, String>{};

      for (final line in output.split('\n')) {
        if (line.contains('Signer #1')) {
          info['signer'] = line;
        } else if (line.contains('DN:')) {
          info['dn'] = line.split('DN:').last.trim();
        } else if (line.contains('SHA-256')) {
          info['sha256'] = line.split(':').last.trim();
        }
      }

      return info;
    } catch (e) {
      return null;
    }
  }
}
