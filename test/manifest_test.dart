import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:xml/xml.dart';
import 'package:droid_analyst/services/decompiled_manifest_parser.dart';
import 'package:droid_analyst/services/manifest_service.dart';
import 'package:droid_analyst/services/manifest_patcher.dart';

/// Comprehensive test suite for AndroidManifest.xml handling
/// Tests parsing, editing, patching, and display capabilities
void main() {
  group('DecompiledManifestParser Tests', () {
    late DecompiledManifestParser parser;

    setUp(() {
      parser = DecompiledManifestParser();
    });

    test('parseString extracts package name', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.packageName, equals('com.example.test'));
    });

    test('parseString extracts version info', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test"
    android:versionCode="10"
    android:versionName="1.2.3">
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.versionCode, equals(10));
      expect(info.versionName, equals('1.2.3'));
    });

    test('parseString extracts SDK versions', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <uses-sdk android:minSdkVersion="21" android:targetSdkVersion="34"/>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.minSdkVersion, equals(21));
      expect(info.targetSdkVersion, equals(34));
    });

    test('parseString extracts permissions', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.CAMERA"/>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.permissions.length, equals(3));
      expect(info.permissions.any((p) => p.name == 'android.permission.INTERNET'), isTrue);
      expect(info.permissions.any((p) => p.name == 'android.permission.CAMERA'), isTrue);
    });

    test('parseString extracts activities', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application>
        <activity android:name=".MainActivity" android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <activity android:name=".SecondActivity"/>
    </application>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.activities.length, equals(2));
      expect(info.launcherActivity?.shortName, equals('MainActivity'));
    });

    test('parseString extracts services', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application>
        <service android:name=".MyService" android:exported="false"/>
    </application>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.services.length, equals(1));
      expect(info.services.first.shortName, equals('MyService'));
    });

    test('parseString extracts receivers', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application>
        <receiver android:name=".BootReceiver">
            <intent-filter>
                <action android:name="android.intent.action.BOOT_COMPLETED"/>
            </intent-filter>
        </receiver>
    </application>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.receivers.length, equals(1));
      expect(info.receivers.first.shortName, equals('BootReceiver'));
    });

    test('parseString extracts providers', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application>
        <provider 
            android:name=".MyContentProvider"
            android:authorities="com.example.test.provider"
            android:exported="false"/>
    </application>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.providers.length, equals(1));
      expect(info.providers.first.authorities, equals('com.example.test.provider'));
    });

    test('parseString detects debuggable flag', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application android:debuggable="true">
    </application>
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.debuggable, isTrue);
    });

    test('parseString provides raw XML', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
</manifest>
''';
      
      final info = parser.parseString(manifestXml);
      expect(info.rawXml, isNotEmpty);
      expect(info.rawXml, contains('com.example.test'));
    });
  });

  group('PermissionInfo Tests', () {
    test('shortName removes android.permission prefix', () {
      final perm = PermissionInfo(name: 'android.permission.INTERNET');
      expect(perm.shortName, equals('INTERNET'));
    });

    test('shortName preserves non-standard permissions', () {
      final perm = PermissionInfo(name: 'com.google.custom.PERMISSION');
      expect(perm.shortName, equals('com.google.custom.PERMISSION'));
    });

    test('isDangerous returns true for dangerous permissions', () {
      final dangerousPerms = [
        'android.permission.CAMERA',
        'android.permission.ACCESS_FINE_LOCATION',
        'android.permission.READ_CONTACTS',
        'android.permission.RECORD_AUDIO',
      ];
      
      for (final permName in dangerousPerms) {
        final perm = PermissionInfo(name: permName);
        expect(perm.isDangerous, isTrue, reason: '$permName should be dangerous');
      }
    });

    test('isDangerous returns false for normal permissions', () {
      final normalPerms = [
        'android.permission.INTERNET',
        'android.permission.ACCESS_NETWORK_STATE',
        'android.permission.VIBRATE',
      ];
      
      for (final permName in normalPerms) {
        final perm = PermissionInfo(name: permName);
        expect(perm.isDangerous, isFalse, reason: '$permName should not be dangerous');
      }
    });
  });

  group('ActivityDetailInfo Tests', () {
    test('isLauncher detects launcher activity', () {
      final activity = ActivityDetailInfo(
        name: 'com.example.MainActivity',
        intentFilters: [
          IntentFilterInfo(
            actions: ['android.intent.action.MAIN'],
            categories: ['android.intent.category.LAUNCHER'],
            dataSchemes: [],
            dataHosts: [],
            dataPathPatterns: [],
            dataMimeTypes: [],
          ),
        ],
        metaData: [],
      );
      
      expect(activity.isLauncher, isTrue);
    });

    test('isLauncher returns false for non-launcher activity', () {
      final activity = ActivityDetailInfo(
        name: 'com.example.SecondActivity',
        intentFilters: [],
        metaData: [],
      );
      
      expect(activity.isLauncher, isFalse);
    });

    test('shortName extracts class name', () {
      final activity = ActivityDetailInfo(
        name: 'com.example.test.MainActivity',
        intentFilters: [],
        metaData: [],
      );
      
      expect(activity.shortName, equals('MainActivity'));
    });
  });

  group('ManifestService Tests', () {
    late ManifestService manifestService;

    setUp(() {
      manifestService = ManifestService();
    });

    test('Service singleton returns same instance', () {
      final instance1 = ManifestService();
      final instance2 = ManifestService();
      expect(identical(instance1, instance2), isTrue);
    });

    test('getManifestPath constructs correct path', () {
      final path = manifestService.getManifestPath('/storage/decompiled');
      expect(path, contains('AndroidManifest.xml'));
    });
  });

  group('IntentFilterInfo Tests', () {
    test('isLauncher detects MAIN/LAUNCHER combination', () {
      final filter = IntentFilterInfo(
        actions: ['android.intent.action.MAIN'],
        categories: ['android.intent.category.LAUNCHER'],
        dataSchemes: [],
        dataHosts: [],
        dataPathPatterns: [],
        dataMimeTypes: [],
      );
      
      expect(filter.isLauncher, isTrue);
    });

    test('isLauncher returns false without MAIN action', () {
      final filter = IntentFilterInfo(
        actions: ['android.intent.action.VIEW'],
        categories: ['android.intent.category.LAUNCHER'],
        dataSchemes: [],
        dataHosts: [],
        dataPathPatterns: [],
        dataMimeTypes: [],
      );
      
      expect(filter.isLauncher, isFalse);
    });

    test('isLauncher returns false without LAUNCHER category', () {
      final filter = IntentFilterInfo(
        actions: ['android.intent.action.MAIN'],
        categories: ['android.intent.category.DEFAULT'],
        dataSchemes: [],
        dataHosts: [],
        dataPathPatterns: [],
        dataMimeTypes: [],
      );
      
      expect(filter.isLauncher, isFalse);
    });
  });

  group('DecompiledManifestInfo Model Tests', () {
    test('toString provides readable output', () {
      final info = DecompiledManifestInfo(
        packageName: 'com.example.test',
        versionCode: 1,
        versionName: '1.0',
        minSdkVersion: 21,
        targetSdkVersion: 34,
        permissions: [],
        permissionDefinitions: [],
        usesFeatures: [],
        queries: QueriesInfo(intents: [], packages: [], providers: []),
        rawXml: '',
      );
      
      final str = info.toString();
      expect(str, contains('com.example.test'));
      expect(str, contains('minSdk=21'));
      expect(str, contains('targetSdk=34'));
    });
  });

  group('Integration Tests - Manifest Operations', () {
    test('Complete manifest parsing workflow', () {
      const manifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.fulltest"
    android:versionCode="100"
    android:versionName="2.5.0">
    
    <uses-sdk android:minSdkVersion="24" android:targetSdkVersion="33"/>
    
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.CAMERA"/>
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    
    <uses-feature android:name="android.hardware.camera" android:required="false"/>
    
    <application 
        android:name=".MyApp"
        android:label="Test App"
        android:icon="@mipmap/ic_launcher"
        android:debuggable="false"
        android:allowBackup="true">
        
        <activity android:name=".MainActivity" android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        
        <activity android:name=".SettingsActivity"/>
        
        <service android:name=".SyncService" android:exported="false"/>
        
        <receiver android:name=".NotificationReceiver">
            <intent-filter>
                <action android:name="com.example.NOTIFY"/>
            </intent-filter>
        </receiver>
        
        <provider
            android:name=".DataProvider"
            android:authorities="com.example.fulltest.provider"
            android:exported="false"/>
            
        <meta-data android:name="com.example.API_KEY" android:value="test123"/>
        
    </application>
</manifest>
''';
      
      final parser = DecompiledManifestParser();
      final info = parser.parseString(manifestXml);
      
      // Verify package info
      expect(info.packageName, equals('com.example.fulltest'));
      expect(info.versionCode, equals(100));
      expect(info.versionName, equals('2.5.0'));
      
      // Verify SDK versions
      expect(info.minSdkVersion, equals(24));
      expect(info.targetSdkVersion, equals(33));
      
      // Verify permissions
      expect(info.permissions.length, equals(3));
      expect(info.permissions.any((p) => p.name.contains('INTERNET')), isTrue);
      expect(info.permissions.any((p) => p.isDangerous), isTrue);
      
      // Verify features
      expect(info.usesFeatures.length, equals(1));
      expect(info.usesFeatures.first.required, isFalse);
      
      // Verify application info
      expect(info.debuggable, isFalse);
      expect(info.application?.allowBackup, isTrue);
      
      // Verify components
      expect(info.activities.length, equals(2));
      expect(info.services.length, equals(1));
      expect(info.receivers.length, equals(1));
      expect(info.providers.length, equals(1));
      
      // Verify launcher activity
      expect(info.launcherActivity?.shortName, equals('MainActivity'));
    });
  });

  // ===========================================================
  // ManifestPatcher Tests
  // ===========================================================

  group('ManifestPatcher Tests', () {
    const sampleManifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.original"
    android:versionCode="10"
    android:versionName="1.0.0">
    
    <uses-permission android:name="android.permission.INTERNET"/>
    
    <application android:name=".MyApp" android:debuggable="false">
        <activity android:name=".MainActivity" android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <service android:name="com.example.original.MyService"/>
        <provider android:name=".MyProvider" android:authorities="com.example.original.provider"/>
    </application>
</manifest>
''';

    test('ManifestPatcher fromDocument initializes correctly', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.packageName, equals('com.example.original'));
      expect(patcher.isModified, isFalse);
    });

    test('ManifestPatcher gets version info', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.versionCode, equals(10));
      expect(patcher.versionName, equals('1.0.0'));
    });

    test('ManifestPatcher sets version code', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setVersionCode(20);
      expect(patcher.versionCode, equals(20));
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher sets version name', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setVersionName('2.0.0-beta');
      expect(patcher.versionName, equals('2.0.0-beta'));
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher gets permissions', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      final perms = patcher.getUsedPermissions();
      expect(perms.length, equals(1));
      expect(perms.first, equals('android.permission.INTERNET'));
    });

    test('ManifestPatcher adds permission', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.addPermission('android.permission.CAMERA');
      
      final perms = patcher.getUsedPermissions();
      expect(perms.length, equals(2));
      expect(perms.any((p) => p.contains('CAMERA')), isTrue);
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher does not duplicate existing permission', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.addPermission('android.permission.INTERNET');
      
      final perms = patcher.getUsedPermissions();
      expect(perms.length, equals(1));
    });

    test('ManifestPatcher removes permission', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.removePermission('android.permission.INTERNET');
      
      final perms = patcher.getUsedPermissions();
      expect(perms.length, equals(0));
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher gets debuggable state', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.isDebuggable, isFalse);
    });

    test('ManifestPatcher sets debuggable true', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setDebuggable(true);
      expect(patcher.isDebuggable, isTrue);
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher removes debuggable attribute', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setDebuggable(true);
      expect(patcher.isDebuggable, isTrue);
      
      patcher.removeDebuggable();
      // After removal, isDebuggable should return false (default behavior)
      expect(patcher.isDebuggable, isFalse);
    });

    test('ManifestPatcher renames package', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.renamePackage('com.new.package');
      
      expect(patcher.packageName, equals('com.new.package'));
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher package rename updates service names', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.renamePackage('com.new.package');
      
      // The service name should be updated
      final xml = patcher.document.toXmlString();
      expect(xml, contains('com.new.package.MyService'));
      expect(xml, isNot(contains('com.example.original.MyService')));
    });

    test('ManifestPatcher package rename updates provider authorities', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.renamePackage('com.new.package');
      
      final xml = patcher.document.toXmlString();
      expect(xml, contains('com.new.package.provider'));
    });

    test('ManifestPatcher generates valid XML output', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setVersionCode(50);
      patcher.setVersionName('5.0.0');
      patcher.addPermission('android.permission.VIBRATE');
      
      // Should be able to parse the output again
      final output = patcher.document.toXmlString(pretty: true);
      expect(() => XmlDocument.parse(output), returnsNormally);
    });

    test('ManifestPatcher removes versions', () {
      final doc = XmlDocument.parse(sampleManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.removeVersions();
      
      expect(patcher.versionCode, isNull);
      expect(patcher.versionName, isNull);
      expect(patcher.isModified, isTrue);
    });
  });

  group('ManifestPatcher Component Tests', () {
    const componentManifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application android:name=".MyApp">
        <activity android:name=".MainActivity" android:exported="true"/>
        <activity android:name=".SecondActivity" android:exported="false"/>
        <service android:name=".TestService" android:exported="false"/>
    </application>
</manifest>
''';

    test('ManifestPatcher adds activity', () {
      final doc = XmlDocument.parse(componentManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.addActivity(
        name: '.NewActivity',
        exported: true,
        label: 'New Activity',
      );
      
      final xml = patcher.document.toXmlString();
      expect(xml, contains('.NewActivity'));
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher adds activity with intent filter', () {
      final doc = XmlDocument.parse(componentManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.addActivity(
        name: '.DeepLinkActivity',
        exported: true,
        intentFilters: [
          {
            'actions': ['android.intent.action.VIEW'],
            'categories': ['android.intent.category.DEFAULT', 'android.intent.category.BROWSABLE'],
            'data': {'scheme': 'myapp', 'host': 'open'},
          }
        ],
      );
      
      final xml = patcher.document.toXmlString();
      expect(xml, contains('.DeepLinkActivity'));
      expect(xml, contains('android.intent.action.VIEW'));
      expect(xml, contains('android.intent.category.BROWSABLE'));
    });

    test('ManifestPatcher adds service', () {
      final doc = XmlDocument.parse(componentManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.addService(
        name: '.BackgroundService',
        exported: false,
        enabled: true,
      );
      
      final xml = patcher.document.toXmlString();
      expect(xml, contains('.BackgroundService'));
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher adds receiver', () {
      final doc = XmlDocument.parse(componentManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.addReceiver(
        name: '.BootReceiver',
        exported: true,
        intentFilters: [
          {
            'actions': ['android.intent.action.BOOT_COMPLETED'],
          }
        ],
      );
      
      final xml = patcher.document.toXmlString();
      expect(xml, contains('.BootReceiver'));
      expect(xml, contains('android.intent.action.BOOT_COMPLETED'));
    });

    test('ManifestPatcher removes component', () {
      final doc = XmlDocument.parse(componentManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.removeComponent('.SecondActivity');
      
      final xml = patcher.document.toXmlString();
      expect(xml, isNot(contains('.SecondActivity')));
      expect(xml, contains('.MainActivity')); // Should still exist
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher sets component exported', () {
      final doc = XmlDocument.parse(componentManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setComponentExported('.SecondActivity', true);
      
      final xml = patcher.document.toXmlString();
      // Should now have exported="true" for SecondActivity
      expect(patcher.isModified, isTrue);
    });
  });

  group('ManifestPatcher Network Security Tests', () {
    const networkManifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application android:name=".MyApp">
    </application>
</manifest>
''';

    test('ManifestPatcher sets cleartext traffic', () {
      final doc = XmlDocument.parse(networkManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.usesCleartextTraffic, isFalse);
      
      patcher.setUsesCleartextTraffic(true);
      expect(patcher.usesCleartextTraffic, isTrue);
      expect(patcher.isModified, isTrue);
    });

    test('ManifestPatcher sets network security config', () {
      final doc = XmlDocument.parse(networkManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.networkSecurityConfig, isNull);
      
      patcher.setNetworkSecurityConfig('@xml/network_security_config');
      expect(patcher.networkSecurityConfig, equals('@xml/network_security_config'));
      expect(patcher.isModified, isTrue);
    });
  });

  group('ManifestPatcher Application Label Tests', () {
    const labelManifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application android:name=".MyApp" android:label="Original App">
    </application>
</manifest>
''';

    test('ManifestPatcher gets application label', () {
      final doc = XmlDocument.parse(labelManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.applicationLabel, equals('Original App'));
    });

    test('ManifestPatcher sets application label', () {
      final doc = XmlDocument.parse(labelManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setApplicationLabel('New App Name');
      expect(patcher.applicationLabel, equals('New App Name'));
      expect(patcher.isModified, isTrue);
    });
  });

  group('ManifestPatcher Backup Tests', () {
    const backupManifestXml = '''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.test">
    <application android:name=".MyApp" android:allowBackup="true">
    </application>
</manifest>
''';

    test('ManifestPatcher gets allowBackup state', () {
      final doc = XmlDocument.parse(backupManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      expect(patcher.allowBackup, isTrue);
    });

    test('ManifestPatcher sets allowBackup false', () {
      final doc = XmlDocument.parse(backupManifestXml);
      final patcher = ManifestPatcher.fromDocument('/test/path', doc);
      
      patcher.setAllowBackup(false);
      expect(patcher.allowBackup, isFalse);
      expect(patcher.isModified, isTrue);
    });
  });
}

