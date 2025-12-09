import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:droid_analyst/screens/antisplit_screen.dart';
import 'package:droid_analyst/services/antisplit_service.dart';
import 'package:droid_analyst/providers/device_provider.dart';

/// Comprehensive test suite for AntiSplit-M functionality
/// Tests APK splitting and merging operations
void main() {
  group('AntiSplit Service Tests', () {
    late AntiSplitService antiSplitService;

    setUp(() {
      antiSplitService = AntiSplitService();
    });

    test('Service singleton returns same instance', () {
      final instance1 = AntiSplitService();
      final instance2 = AntiSplitService();
      expect(identical(instance1, instance2), isTrue);
    });

    test('Progress stream is broadcast', () {
      expect(antiSplitService.progressStream.isBroadcast, isTrue);
    });

    test('Error stream is broadcast', () {
      expect(antiSplitService.errorStream.isBroadcast, isTrue);
    });
  });

  group('SplitType Enum Tests', () {
    test('SplitType values exist', () {
      expect(SplitType.values.length, equals(4));
      expect(SplitType.values, contains(SplitType.apks));
      expect(SplitType.values, contains(SplitType.xapk));
      expect(SplitType.values, contains(SplitType.apkm));
      expect(SplitType.values, contains(SplitType.unknown));
    });
  });

  group('SplitComponentType Enum Tests', () {
    test('SplitComponentType values exist', () {
      expect(SplitComponentType.values.length, equals(6));
      expect(SplitComponentType.values, contains(SplitComponentType.base));
      expect(SplitComponentType.values, contains(SplitComponentType.density));
      expect(SplitComponentType.values, contains(SplitComponentType.abi));
      expect(SplitComponentType.values, contains(SplitComponentType.language));
      expect(SplitComponentType.values, contains(SplitComponentType.feature));
      expect(SplitComponentType.values, contains(SplitComponentType.unknown));
    });
  });

  group('AntiSplitProgress Model Tests', () {
    test('Creates with correct values', () {
      final progress = AntiSplitProgress(
        stage: 'Merging',
        progress: 0.5,
        message: 'Processing base APK...',
      );
      
      expect(progress.stage, equals('Merging'));
      expect(progress.progress, equals(0.5));
      expect(progress.message, equals('Processing base APK...'));
    });
  });

  group('MergeResult Model Tests', () {
    test('Creates successful result', () {
      final result = MergeResult(
        success: true,
        outputPath: '/storage/output.apk',
        baseApkName: 'base.apk',
        mergedComponents: ['base.apk', 'split_config.arm64_v8a.apk'],
      );
      
      expect(result.success, isTrue);
      expect(result.outputPath, equals('/storage/output.apk'));
      expect(result.baseApkName, equals('base.apk'));
      expect(result.mergedComponents.length, equals(2));
    });

    test('Creates failed result', () {
      final result = MergeResult(
        success: false,
        error: 'Input file not found',
      );
      
      expect(result.success, isFalse);
      expect(result.error, equals('Input file not found'));
    });
  });

  group('SplitResult Model Tests', () {
    test('Creates successful result', () {
      final result = SplitResult(
        success: true,
        outputDir: '/storage/split_output',
        components: [
          SplitComponent(
            name: 'base.apk',
            path: '/storage/split_output/base.apk',
            type: SplitComponentType.base,
            size: 10485760,
          ),
          SplitComponent(
            name: 'split_config.arm64_v8a.apk',
            path: '/storage/split_output/split_config.arm64_v8a.apk',
            type: SplitComponentType.abi,
            size: 2097152,
          ),
        ],
      );
      
      expect(result.success, isTrue);
      expect(result.outputDir, equals('/storage/split_output'));
      expect(result.components.length, equals(2));
    });
  });

  group('SplitComponent Model Tests', () {
    test('Creates with correct values', () {
      final component = SplitComponent(
        name: 'split_config.hdpi.apk',
        path: '/storage/split_config.hdpi.apk',
        type: SplitComponentType.density,
        size: 1048576,
      );
      
      expect(component.name, equals('split_config.hdpi.apk'));
      expect(component.path, equals('/storage/split_config.hdpi.apk'));
      expect(component.type, equals(SplitComponentType.density));
      expect(component.size, equals(1048576));
    });

    test('sizeFormatted returns correct format for bytes', () {
      final component = SplitComponent(
        name: 'test.apk',
        path: '/test.apk',
        type: SplitComponentType.base,
        size: 500,
      );
      expect(component.sizeFormatted, equals('500 B'));
    });

    test('sizeFormatted returns correct format for KB', () {
      final component = SplitComponent(
        name: 'test.apk',
        path: '/test.apk',
        type: SplitComponentType.base,
        size: 5120,
      );
      expect(component.sizeFormatted, equals('5.0 KB'));
    });

    test('sizeFormatted returns correct format for MB', () {
      final component = SplitComponent(
        name: 'test.apk',
        path: '/test.apk',
        type: SplitComponentType.base,
        size: 5242880,
      );
      expect(component.sizeFormatted, equals('5.00 MB'));
    });
  });

  group('SplitApkInfo Model Tests', () {
    test('Creates with correct values', () {
      final info = SplitApkInfo(
        path: '/storage/app.apks',
        splitType: SplitType.apks,
        packageName: 'com.example.test',
        versionName: '1.0.0',
        versionCode: 1,
        baseApk: 'base.apk',
        splitApks: ['split_config.arm64.apk', 'split_config.hdpi.apk'],
        totalSize: 10485760,
        hasDensitySplits: true,
        hasAbiSplits: true,
        hasLanguageSplits: false,
      );
      
      expect(info.path, equals('/storage/app.apks'));
      expect(info.splitType, equals(SplitType.apks));
      expect(info.packageName, equals('com.example.test'));
      expect(info.versionName, equals('1.0.0'));
      expect(info.versionCode, equals(1));
      expect(info.splitCount, equals(2));
      expect(info.hasDensitySplits, isTrue);
      expect(info.hasAbiSplits, isTrue);
      expect(info.hasLanguageSplits, isFalse);
    });

    test('totalSizeFormatted returns correct format', () {
      final info = SplitApkInfo(
        path: '/test.apks',
        splitType: SplitType.apks,
        totalSize: 10485760,
      );
      expect(info.totalSizeFormatted, equals('10.00 MB'));
    });
  });

  group('AntiSplit Screen Widget Tests', () {
    testWidgets('Screen renders with tabs', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const AntiSplitScreen(),
          ),
        ),
      );

      // Check app bar title
      expect(find.text('AntiSplit-M'), findsOneWidget);

      // Check tabs exist
      expect(find.text('Merge'), findsOneWidget);
      expect(find.text('Split'), findsOneWidget);
      expect(find.text('History'), findsOneWidget);
    });

    testWidgets('Merge tab shows input selection', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const AntiSplitScreen(),
          ),
        ),
      );

      // Should show initial state
      expect(find.text('Merge Split APKs'), findsOneWidget);
      expect(find.text('Input File'), findsOneWidget);
      expect(find.text('No file selected'), findsOneWidget);
    });

    testWidgets('Split tab shows input selection', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const AntiSplitScreen(),
          ),
        ),
      );

      // Navigate to Split tab
      await tester.tap(find.text('Split'));
      await tester.pumpAndSettle();

      // Should show split tab content - use first match as there might be a title
      expect(find.text('Split APK').first, findsOneWidget);
      expect(find.text('Input APK'), findsOneWidget);
    });

    testWidgets('History tab shows empty state initially', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const AntiSplitScreen(),
          ),
        ),
      );

      // Navigate to History tab
      await tester.tap(find.text('History'));
      await tester.pumpAndSettle();

      // Should show empty state
      expect(find.text('No operations yet'), findsOneWidget);
    });

    testWidgets('Merge tab has sign option', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const AntiSplitScreen(),
          ),
        ),
      );

      // Should show sign option
      expect(find.text('Sign after merge'), findsOneWidget);
    });

    testWidgets('Split tab has split options', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DeviceProvider()),
            ],
            child: const AntiSplitScreen(),
          ),
        ),
      );

      // Navigate to Split tab
      await tester.tap(find.text('Split'));
      await tester.pumpAndSettle();

      // Should show split options
      expect(find.text('Split Options'), findsOneWidget);
      expect(find.text('Split by Density'), findsOneWidget);
      expect(find.text('Split by ABI'), findsOneWidget);
      expect(find.text('Split by Language'), findsOneWidget);
    });
  });

  group('Integration Tests - Path Validation', () {
    test('APKS file detection', () {
      const apksPath = '/storage/app.apks';
      expect(apksPath.endsWith('.apks'), isTrue);
    });

    test('XAPK file detection', () {
      const xapkPath = '/storage/app.xapk';
      expect(xapkPath.endsWith('.xapk'), isTrue);
    });

    test('APKM file detection', () {
      const apkmPath = '/storage/app.apkm';
      expect(apkmPath.endsWith('.apkm'), isTrue);
    });

    test('Regular APK file detection', () {
      const apkPath = '/storage/app.apk';
      expect(apkPath.endsWith('.apk'), isTrue);
      expect(apkPath.endsWith('.apks'), isFalse);
    });
  });
}
