import 'dart:io';

import 'package:test/test.dart';

import '../lib/services/apk_analyzer_service.dart';

void main() {
  group('ApkAnalyzerService', () {
    final service = ApkAnalyzerService();

    test('returns null for missing APK', () async {
      final info = await service.analyzeApk('nonexistent.apk');
      expect(info, isNull);
    });

    Future<void> _analyzeIfExists(String label, String path) async {
      final file = File(path);
      if (!await file.exists()) {
        // Keep tests green on machines without this sample
        print('[$label] APK not found at $path, skipping analysis test');
        return;
      }

      final info = await service.analyzeApk(path);
      expect(info, isNotNull, reason: 'ApkInfo should not be null for $label');
      expect(info!.packageName, isNotEmpty, reason: 'Package name should be parsed for $label');
      expect(info.activities, isNotNull);
      expect(info.permissions, isNotNull);
    }

    test('analyzes NetGuard original APK when present', () async {
      await _analyzeIfExists('NetGuard-original', 'gadget_work/NetGuard-original.apk');
    });

    test('analyzes NetGuard Frida APK when present', () async {
      await _analyzeIfExists('netguard_frida', 'gadget_work/netguard_frida.apk');
    });

    test('analyzes one built DroidAnalyst release when present', () async {
      // Prefer the newest debug build if available
      const candidates = [
        'releases/DroidAnalyst-v1.0.2-debug.apk',
        'releases/DroidAnalyst-v1.0.2-release.apk',
        'releases/DroidAnalyst-v1.0.1-debug.apk',
        'releases/DroidAnalyst-v1.0.1-release.apk',
        'releases/DroidAnalyst-v1.0.0-debug.apk',
        'releases/DroidAnalyst-v1.0.0-release.apk',
      ];

      String? existingPath;
      for (final path in candidates) {
        if (File(path).existsSync()) {
          existingPath = path;
          break;
        }
      }

      if (existingPath == null) {
        print('[DroidAnalyst] No releases/* APK found, skipping analysis test');
        return;
      }

      final info = await service.analyzeApk(existingPath);
      expect(info, isNotNull);
      expect(info!.packageName, isNotEmpty);
    });

    test('computes file hashes when APK exists', () async {
      final file = File('releases/DroidAnalyst-v1.0.2-debug.apk');
      if (!await file.exists()) {
        print('[hashes] releases/DroidAnalyst-v1.0.2-debug.apk not found, skipping hash test');
        return;
      }

      final hashes = await service.getFileHashes(file.path);
      expect(hashes['md5'], isNotNull);
      expect(hashes['sha1'], isNotNull);
      expect(hashes['sha256'], isNotNull);
      expect(hashes['md5']!.length, greaterThan(0));
    });
  });
}
