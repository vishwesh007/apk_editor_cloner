// Test file for manifest handling services
// Run with: dart test test/manifest_handling_test.dart

import 'dart:io';
import 'package:test/test.dart';
import '../lib/services/decompiled_manifest_parser.dart';
import '../lib/services/manifest_patcher.dart';
import '../lib/services/manifest_service.dart';

void main() {
  const testManifestPath = 'gadget_work/netguard_decompiled/AndroidManifest.xml';
  
  group('DecompiledManifestParser', () {
    test('should parse manifest file', () async {
      final parser = DecompiledManifestParser();
      
      final file = File(testManifestPath);
      if (!await file.exists()) {
        print('Test manifest not found at $testManifestPath - skipping test');
        return;
      }
      
      final info = await parser.parseFile(testManifestPath);
      
      expect(info.packageName, equals('eu.faircode.netguard'));
      expect(info.minSdkVersion, greaterThan(0));
      expect(info.targetSdkVersion, greaterThan(0));
      expect(info.permissions, isNotEmpty);
      expect(info.activities, isNotEmpty);
      
      print('Package: ${info.packageName}');
      print('Version: ${info.versionName} (${info.versionCode})');
      print('SDK: min=${info.minSdkVersion}, target=${info.targetSdkVersion}');
      print('Permissions: ${info.permissions.length}');
      print('Activities: ${info.activities.length}');
      print('Services: ${info.services.length}');
      print('Receivers: ${info.receivers.length}');
      print('Providers: ${info.providers.length}');
      
      // Check launcher activity
      final launcher = info.launcherActivity;
      expect(launcher, isNotNull);
      print('Launcher activity: ${launcher?.name}');
    });

    test('should identify dangerous permissions', () async {
      final parser = DecompiledManifestParser();
      
      final file = File(testManifestPath);
      if (!await file.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final info = await parser.parseFile(testManifestPath);
      
      final dangerousPerms = info.permissions.where((p) => p.isDangerous).toList();
      print('Dangerous permissions: ${dangerousPerms.map((p) => p.shortName).join(', ')}');
    });
  });

  group('ManifestPatcher', () {
    late String tempManifestPath;
    
    setUp(() async {
      // Create a temp copy of manifest for testing
      final original = File(testManifestPath);
      if (!await original.exists()) return;
      
      tempManifestPath = 'test_signing/temp_manifest.xml';
      await original.copy(tempManifestPath);
    });
    
    tearDown(() async {
      // Clean up temp file
      final temp = File(tempManifestPath);
      if (await temp.exists()) {
        await temp.delete();
      }
    });

    test('should load and save manifest', () async {
      final original = File(testManifestPath);
      if (!await original.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final patcher = ManifestPatcher(tempManifestPath);
      await patcher.load();
      
      expect(patcher.document, isNotNull);
      
      // No changes made, should not be modified
      expect(patcher.isModified, isFalse);
    });

    test('should get version info', () async {
      final original = File(testManifestPath);
      if (!await original.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final patcher = ManifestPatcher(tempManifestPath);
      await patcher.load();
      
      print('Version code: ${patcher.versionCode}');
      print('Version name: ${patcher.versionName}');
    });

    test('should modify version', () async {
      final original = File(testManifestPath);
      if (!await original.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final patcher = ManifestPatcher(tempManifestPath);
      await patcher.load();
      
      patcher.setVersionCode(999);
      patcher.setVersionName('9.9.9-test');
      
      expect(patcher.isModified, isTrue);
      
      await patcher.save();
      
      // Reload and verify
      final patcher2 = ManifestPatcher(tempManifestPath);
      await patcher2.load();
      
      expect(patcher2.versionCode, equals(999));
      expect(patcher2.versionName, equals('9.9.9-test'));
    });

    test('should add and remove permissions', () async {
      final original = File(testManifestPath);
      if (!await original.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final patcher = ManifestPatcher(tempManifestPath);
      await patcher.load();
      
      final initialPerms = patcher.getPermissions();
      print('Initial permissions: ${initialPerms.length}');
      
      // Add a new permission
      patcher.addPermission('android.permission.TEST_PERMISSION');
      await patcher.save();
      
      // Reload and verify
      final patcher2 = ManifestPatcher(tempManifestPath);
      await patcher2.load();
      
      final newPerms = patcher2.getPermissions();
      expect(newPerms.length, equals(initialPerms.length + 1));
      expect(newPerms, contains('android.permission.TEST_PERMISSION'));
      
      // Remove the permission
      patcher2.removePermission('android.permission.TEST_PERMISSION');
      await patcher2.save();
      
      // Reload and verify
      final patcher3 = ManifestPatcher(tempManifestPath);
      await patcher3.load();
      
      expect(patcher3.getPermissions().length, equals(initialPerms.length));
    });

    test('should modify debuggable flag', () async {
      final original = File(testManifestPath);
      if (!await original.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final patcher = ManifestPatcher(tempManifestPath);
      await patcher.load();
      
      print('Initial debuggable: ${patcher.debuggable}');
      
      patcher.setDebuggable(true);
      await patcher.save();
      
      final patcher2 = ManifestPatcher(tempManifestPath);
      await patcher2.load();
      
      expect(patcher2.debuggable, isTrue);
      
      patcher2.removeDebuggable();
      await patcher2.save();
      
      final patcher3 = ManifestPatcher(tempManifestPath);
      await patcher3.load();
      
      expect(patcher3.debuggable, isFalse);
    });

    test('should remove version attributes for rebuild', () async {
      final original = File(testManifestPath);
      if (!await original.exists()) {
        print('Test manifest not found - skipping test');
        return;
      }
      
      final patcher = ManifestPatcher(tempManifestPath);
      await patcher.load();
      
      patcher.removeVersions();
      patcher.removeCompileSdkInfo();
      
      await patcher.save();
      
      // Read file and verify attributes are removed
      final content = await File(tempManifestPath).readAsString();
      expect(content.contains('android:versionCode'), isFalse);
      expect(content.contains('android:versionName'), isFalse);
      expect(content.contains('compileSdkVersion'), isFalse);
      expect(content.contains('platformBuildVersionCode'), isFalse);
    });
  });

  group('ManifestService', () {
    test('should get manifest info from decompiled dir', () async {
      final manifestService = ManifestService();
      
      final decompiledDir = 'gadget_work/netguard_decompiled';
      final hasManifest = await manifestService.hasManifest(decompiledDir);
      
      if (!hasManifest) {
        print('Decompiled directory not found - skipping test');
        return;
      }
      
      final info = await manifestService.getManifestInfo(decompiledDir);
      
      expect(info, isNotNull);
      expect(info!.packageName, isNotEmpty);
      
      print('Manifest loaded from service: ${info.packageName}');
    });

    test('should validate manifest', () async {
      final manifestService = ManifestService();
      
      final decompiledDir = 'gadget_work/netguard_decompiled';
      final hasManifest = await manifestService.hasManifest(decompiledDir);
      
      if (!hasManifest) {
        print('Decompiled directory not found - skipping test');
        return;
      }
      
      final validation = await manifestService.validateManifest(decompiledDir);
      
      print('Manifest valid: ${validation.isValid}');
      if (validation.hasIssues) {
        print('Issues: ${validation.issues.join(', ')}');
      }
      if (validation.hasWarnings) {
        print('Warnings: ${validation.warnings.join(', ')}');
      }
    });
  });
}
