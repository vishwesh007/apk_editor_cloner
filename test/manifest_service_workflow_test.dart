import 'dart:io';

import 'package:test/test.dart';

import '../lib/services/decompiled_manifest_parser.dart';
import '../lib/services/manifest_service.dart';

void main() {
  const decompiledDir = 'gadget_work/netguard_decompiled';

  group('ManifestService workflow on real decompiled project', () {
    final manifestService = ManifestService();
    final parser = DecompiledManifestParser();

    Future<File?> _getManifestFile() async {
      final path = manifestService.getManifestPath(decompiledDir);
      final file = File(path);
      if (!await file.exists()) {
        print('[manifest-workflow] Manifest not found at $path, skipping');
        return null;
      }
      return file;
    }

    test('hasManifest detects existing manifest', () async {
      final has = await manifestService.hasManifest(decompiledDir);
      if (!has) {
        print('[manifest-workflow] No manifest in $decompiledDir, skipping');
        return;
      }
      expect(has, isTrue);
    });

    test('getManifestInfo returns basic info', () async {
      final has = await manifestService.hasManifest(decompiledDir);
      if (!has) {
        print('[manifest-workflow] No manifest in $decompiledDir, skipping');
        return;
      }

      final info = await manifestService.getManifestInfo(decompiledDir);
      expect(info, isNotNull);
      expect(info!.packageName, isNotEmpty);
    });

    test('makeDebuggable and removeDebuggable toggle flag', () async {
      final manifestFile = await _getManifestFile();
      if (manifestFile == null) return;

      // Backup content
      final originalXml = await manifestFile.readAsString();

      try {
        await manifestService.makeDebuggable(decompiledDir);
        var info = await parser.parseFile(manifestFile.path);
        expect(info.debuggable, isTrue);

        await manifestService.removeDebuggable(decompiledDir);
        info = await parser.parseFile(manifestFile.path);
        expect(info.debuggable, isFalse);
      } finally {
        await manifestFile.writeAsString(originalXml);
      }
    });

    test('updateVersion updates version fields', () async {
      final manifestFile = await _getManifestFile();
      if (manifestFile == null) return;

      final originalXml = await manifestFile.readAsString();

      try {
        await manifestService.updateVersion(
          decompiledDir: decompiledDir,
          versionCode: 9999,
          versionName: '9.9.9-test',
        );

        final info = await parser.parseFile(manifestFile.path);
        expect(info.versionCode, equals(9999));
        expect(info.versionName, equals('9.9.9-test'));
      } finally {
        await manifestFile.writeAsString(originalXml);
      }
    });

    test('addPermission and removePermission round-trip', () async {
      final manifestFile = await _getManifestFile();
      if (manifestFile == null) return;

      final originalXml = await manifestFile.readAsString();
      const testPerm = 'android.permission.TEST_INTEGRATION';

      try {
        await manifestService.addPermission(decompiledDir, testPerm);
        var info = await parser.parseFile(manifestFile.path);
        expect(info.permissions.any((p) => p.name == testPerm), isTrue);

        await manifestService.removePermission(decompiledDir, testPerm);
        info = await parser.parseFile(manifestFile.path);
        expect(info.permissions.any((p) => p.name == testPerm), isFalse);
      } finally {
        await manifestFile.writeAsString(originalXml);
      }
    });
  });
}
