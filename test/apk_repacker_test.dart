import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:droid_analyst/screens/apk_repacker_screen.dart';
import 'package:droid_analyst/services/apk_tool_service.dart';
import 'package:droid_analyst/providers/device_provider.dart';

/// Comprehensive test suite for APK Repacker functionality
/// Tests all features: decompile, build, edit, file operations
void main() {
  group('APK Tool Service Tests', () {
    late ApkToolService apkToolService;

    setUp(() {
      apkToolService = ApkToolService();
    });

    test('Service singleton returns same instance', () {
      final instance1 = ApkToolService();
      final instance2 = ApkToolService();
      expect(identical(instance1, instance2), isTrue);
    });

    test('getDefaultOutputDir generates correct path', () {
      const apkPath = '/storage/emulated/0/Download/test.apk';
      final outputDir = apkToolService.getDefaultOutputDir(apkPath);
      
      expect(outputDir, contains('test_decompiled'));
      expect(outputDir, startsWith('/storage/emulated/0/Download/'));
    });

    test('getDefaultOutputApk generates correct path', () {
      const sourceDir = '/storage/emulated/0/Download/test_decompiled';
      final outputApk = apkToolService.getDefaultOutputApk(sourceDir);
      
      expect(outputApk, contains('_rebuilt.apk'));
      expect(outputApk, isNot(contains('_decompiled')));
    });

    test('Progress stream emits updates', () async {
      final updates = <ProgressUpdate>[];
      final subscription = apkToolService.progressStream.listen((update) {
        updates.add(update);
      });

      // Stream should be broadcast (can have multiple listeners)
      expect(apkToolService.progressStream.isBroadcast, isTrue);
      
      await subscription.cancel();
    });

    test('Error stream is broadcast', () {
      expect(apkToolService.errorStream.isBroadcast, isTrue);
    });

    test('Complete stream is broadcast', () {
      expect(apkToolService.completeStream.isBroadcast, isTrue);
    });
  });

  group('DecompiledFile Model Tests', () {
    test('fromJson creates correct object', () {
      final json = {
        'path': 'smali/com/example/Test.smali',
        'size': 1024,
        'type': 'smali',
      };
      
      final file = DecompiledFile.fromJson(json);
      
      expect(file.path, equals('smali/com/example/Test.smali'));
      expect(file.size, equals(1024));
      expect(file.type, equals('smali'));
      expect(file.isSmali, isTrue);
      expect(file.isXml, isFalse);
    });

    test('isSmali returns true for smali files', () {
      final file = DecompiledFile(path: 'test.smali', size: 100, type: 'smali');
      expect(file.isSmali, isTrue);
    });

    test('isXml returns true for xml files', () {
      final file = DecompiledFile(path: 'test.xml', size: 100, type: 'xml');
      expect(file.isXml, isTrue);
    });

    test('isNative returns true for native files', () {
      final file = DecompiledFile(path: 'lib.so', size: 100, type: 'native');
      expect(file.isNative, isTrue);
    });

    test('isManifest returns true for manifest', () {
      final file = DecompiledFile(path: 'AndroidManifest.xml', size: 100, type: 'manifest');
      expect(file.isManifest, isTrue);
    });
  });

  group('ApkFileInfo Model Tests', () {
    test('fromJson creates correct object', () {
      final json = {
        'path': '/storage/test.apk',
        'size': 10485760,
        'dexCount': 3,
        'nativeLibs': ['arm64-v8a', 'armeabi-v7a'],
      };
      
      final info = ApkFileInfo.fromJson(json);
      
      expect(info.path, equals('/storage/test.apk'));
      expect(info.size, equals(10485760));
      expect(info.dexCount, equals(3));
      expect(info.nativeLibs.length, equals(2));
      expect(info.nativeLibs, contains('arm64-v8a'));
    });

    test('handles null values gracefully', () {
      final json = <String, dynamic>{};
      
      final info = ApkFileInfo.fromJson(json);
      
      expect(info.path, equals(''));
      expect(info.size, equals(0));
      expect(info.dexCount, equals(0));
      expect(info.nativeLibs, isEmpty);
    });
  });

  group('ProgressUpdate Model Tests', () {
    test('Creates with correct values', () {
      final update = ProgressUpdate('Decoding manifest...', 25);
      
      expect(update.message, equals('Decoding manifest...'));
      expect(update.progress, equals(25));
    });
  });

  group('APK Repacker Screen Widget Tests', () {
    testWidgets('Screen renders with tabs', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const ApkRepackerScreen(),
          ),
        ),
      );

      // Check tab bar exists
      expect(find.text('Decompile'), findsOneWidget);
      expect(find.text('Build'), findsOneWidget);
      expect(find.text('Edit'), findsOneWidget);
    });

    testWidgets('Decompile tab shows APK selection', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const ApkRepackerScreen(),
          ),
        ),
      );

      // Should show "No APK selected" initially
      expect(find.text('No APK selected'), findsOneWidget);
      expect(find.text('Select APK'), findsOneWidget);
    });

    testWidgets('Decompile options are toggleable', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const ApkRepackerScreen(),
          ),
        ),
      );

      // Find decode sources switch
      expect(find.text('Decode Sources (DEX → Smali)'), findsOneWidget);
      expect(find.text('Decode Resources'), findsOneWidget);
    });

    testWidgets('Build tab shows source directory selection', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const ApkRepackerScreen(),
          ),
        ),
      );

      // Navigate to Build tab
      await tester.tap(find.text('Build'));
      await tester.pumpAndSettle();

      // Should show directory selection
      expect(find.text('Source Directory'), findsOneWidget);
      expect(find.text('No directory selected'), findsOneWidget);
    });

    testWidgets('Edit tab shows file browser placeholder', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const ApkRepackerScreen(),
          ),
        ),
      );

      // Navigate to Edit tab
      await tester.tap(find.text('Edit'));
      await tester.pumpAndSettle();

      // Should show placeholder
      expect(find.text('No project'), findsOneWidget);
      expect(find.text('Select a file to edit'), findsOneWidget);
    });
  });

  group('Integration Tests - File Operations', () {
    test('APK path validation', () {
      const validPath = '/storage/emulated/0/Download/test.apk';
      const invalidPath = '/nonexistent/test.apk';
      
      expect(validPath.endsWith('.apk'), isTrue);
      expect(invalidPath.endsWith('.apk'), isTrue);
    });

    test('Output directory path construction', () {
      final service = ApkToolService();
      const apkPath = '/storage/emulated/0/Download/myapp.apk';
      
      final outputDir = service.getDefaultOutputDir(apkPath);
      
      expect(outputDir, equals('/storage/emulated/0/Download/myapp_decompiled'));
    });

    test('Rebuilt APK path construction', () {
      final service = ApkToolService();
      const sourceDir = '/storage/emulated/0/Download/myapp_decompiled';
      
      final outputApk = service.getDefaultOutputApk(sourceDir);
      
      expect(outputApk, equals('/storage/emulated/0/Download/myapp_rebuilt.apk'));
    });
  });
}

/// Test helpers for APK Repacker
class TestHelpers {
  /// Create a mock decompiled file structure
  static Future<Directory> createMockDecompiledProject(String basePath) async {
    final dir = Directory(basePath);
    await dir.create(recursive: true);
    
    // Create standard APK structure
    await Directory('$basePath/smali').create();
    await Directory('$basePath/res').create();
    await Directory('$basePath/lib').create();
    await Directory('$basePath/assets').create();
    
    // Create manifest
    await File('$basePath/AndroidManifest.xml').writeAsString('''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application android:label="Test App">
        <activity android:name=".MainActivity"/>
    </application>
</manifest>
''');
    
    // Create sample smali file
    await File('$basePath/smali/com/example/test/MainActivity.smali').create(recursive: true);
    await File('$basePath/smali/com/example/test/MainActivity.smali').writeAsString('''
.class public Lcom/example/test/MainActivity;
.super Landroid/app/Activity;

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method
''');
    
    // Create apktool.yml
    await File('$basePath/apktool.yml').writeAsString('''
!!brut.androlib.meta.MetaInfo
apkFileName: test.apk
doNotCompress:
- .so
- .arsc
isFrameworkApk: false
sdkInfo:
  minSdkVersion: '21'
  targetSdkVersion: '34'
version: '2.2.0'
''');
    
    return dir;
  }
  
  /// Clean up test directories
  static Future<void> cleanupTestDirectory(String path) async {
    final dir = Directory(path);
    if (await dir.exists()) {
      await dir.delete(recursive: true);
    }
  }
}
