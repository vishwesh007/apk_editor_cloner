import 'dart:io';
import 'package:flutter/foundation.dart';

/// Service for patching smali code to inject Frida Gadget loading
/// This is the most reliable method - inject System.loadLibrary into application class
class SmaliPatcherService {
  static final SmaliPatcherService _instance = SmaliPatcherService._internal();
  factory SmaliPatcherService() => _instance;
  SmaliPatcherService._internal();

  /// Smali code to load frida-gadget library
  /// This uses const-string and invoke-static to call System.loadLibrary
  static const String loadGadgetSmali = '''
    const-string v0, "frida-gadget"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
''';

  /// Find the Application class or main activity smali file
  /// Returns the path to the best file to patch
  Future<String?> findPatchTarget(String smaliDir, String? applicationClass, String? mainActivity) async {
    // Priority 1: Application class (loaded first)
    if (applicationClass != null && applicationClass.isNotEmpty) {
      final appPath = await _findSmaliFile(smaliDir, applicationClass);
      if (appPath != null) {
        debugPrint('Found Application class at: $appPath');
        return appPath;
      }
    }
    
    // Priority 2: Main activity
    if (mainActivity != null && mainActivity.isNotEmpty) {
      final activityPath = await _findSmaliFile(smaliDir, mainActivity);
      if (activityPath != null) {
        debugPrint('Found MainActivity at: $activityPath');
        return activityPath;
      }
    }
    
    // Priority 3: Search for any Application subclass
    final appSubclass = await _findApplicationSubclass(smaliDir);
    if (appSubclass != null) {
      debugPrint('Found Application subclass at: $appSubclass');
      return appSubclass;
    }
    
    // Priority 4: Look for any activity with onCreate
    final anyActivity = await _findAnyActivity(smaliDir);
    if (anyActivity != null) {
      debugPrint('Found activity at: $anyActivity');
      return anyActivity;
    }
    
    return null;
  }

  /// Convert class name to smali file path
  Future<String?> _findSmaliFile(String smaliDir, String className) async {
    // Convert com.example.App to com/example/App.smali
    final relativePath = className.replaceAll('.', '/') + '.smali';
    
    // Check in smali directory and smali_classesN directories
    final candidates = [
      '$smaliDir/smali/$relativePath',
      '$smaliDir/smali_classes2/$relativePath',
      '$smaliDir/smali_classes3/$relativePath',
      '$smaliDir/smali_classes4/$relativePath',
      '$smaliDir/smali_classes5/$relativePath',
    ];
    
    for (final path in candidates) {
      if (await File(path).exists()) {
        return path;
      }
    }
    
    return null;
  }

  /// Search for Application subclass in smali files
  Future<String?> _findApplicationSubclass(String smaliDir) async {
    final smaliDirs = <Directory>[];
    final baseDir = Directory(smaliDir);
    
    await for (final entity in baseDir.list()) {
      if (entity is Directory && entity.path.contains('smali')) {
        smaliDirs.add(entity);
      }
    }
    
    for (final dir in smaliDirs) {
      final result = await _searchForPattern(
        dir, 
        RegExp(r'\.super Landroid/app/Application;'),
      );
      if (result != null) return result;
    }
    
    return null;
  }

  /// Search for any Activity class
  Future<String?> _findAnyActivity(String smaliDir) async {
    final smaliDirs = <Directory>[];
    final baseDir = Directory(smaliDir);
    
    await for (final entity in baseDir.list()) {
      if (entity is Directory && entity.path.contains('smali')) {
        smaliDirs.add(entity);
      }
    }
    
    for (final dir in smaliDirs) {
      final result = await _searchForPattern(
        dir,
        RegExp(r'\.super Landroid(x)?/(app/)?Activity;|\.super Landroidx?/appcompat/app/AppCompatActivity;'),
      );
      if (result != null) return result;
    }
    
    return null;
  }

  /// Search recursively for files matching pattern
  Future<String?> _searchForPattern(Directory dir, RegExp pattern) async {
    try {
      await for (final entity in dir.list(recursive: true)) {
        if (entity is File && entity.path.endsWith('.smali')) {
          final content = await entity.readAsString();
          if (pattern.hasMatch(content)) {
            return entity.path;
          }
        }
      }
    } catch (e) {
      debugPrint('Error searching $dir: $e');
    }
    return null;
  }

  /// Patch smali file to load frida-gadget in static initializer or constructor
  /// Returns true if successful
  Future<bool> patchSmaliFile(String smaliPath) async {
    try {
      final file = File(smaliPath);
      if (!await file.exists()) {
        debugPrint('Smali file not found: $smaliPath');
        return false;
      }
      
      String content = await file.readAsString();
      
      // Check if already patched
      if (content.contains('frida-gadget')) {
        debugPrint('File already patched with frida-gadget');
        return true;
      }
      
      // Strategy 1: Inject into static constructor <clinit>
      if (content.contains('.method static constructor <clinit>()V')) {
        content = _injectIntoClinit(content);
        await file.writeAsString(content);
        debugPrint('Injected into existing <clinit>');
        return true;
      }
      
      // Strategy 2: Inject into <init> constructor
      if (content.contains('.method public constructor <init>()V')) {
        content = _injectIntoInit(content);
        await file.writeAsString(content);
        debugPrint('Injected into existing <init>');
        return true;
      }
      
      // Strategy 3: Add new static initializer
      content = _addNewClinit(content);
      await file.writeAsString(content);
      debugPrint('Added new <clinit> method');
      return true;
      
    } catch (e) {
      debugPrint('Error patching smali: $e');
      return false;
    }
  }

  /// Inject into existing <clinit> static constructor
  String _injectIntoClinit(String content) {
    // Find the clinit method and inject after .locals line
    final clinitPattern = RegExp(
      r'(\.method static constructor <clinit>\(\)V\s*\.locals\s+)(\d+)',
      multiLine: true,
    );
    
    final match = clinitPattern.firstMatch(content);
    if (match != null) {
      final currentLocals = int.parse(match.group(2)!);
      // Ensure we have at least 1 local for our string
      final newLocals = currentLocals < 1 ? 1 : currentLocals;
      
      // Find position after .locals line
      final localsEndIndex = match.end;
      
      // Insert our code
      final prefix = content.substring(0, match.start);
      final localsDecl = '.method static constructor <clinit>()V\n    .locals $newLocals\n\n    # Frida Gadget injection\n$loadGadgetSmali\n    # End Frida Gadget injection\n';
      final suffix = content.substring(localsEndIndex);
      
      return prefix + localsDecl + suffix;
    }
    
    return content;
  }

  /// Inject into existing <init> constructor
  String _injectIntoInit(String content) {
    // Find the init method - inject after invoke-direct to super
    final initPattern = RegExp(
      r'(\.method public constructor <init>\(\)V.*?invoke-direct \{p0\}, L[^;]+;-><init>\(\)V)',
      dotAll: true,
    );
    
    final match = initPattern.firstMatch(content);
    if (match != null) {
      final insertPoint = match.end;
      final prefix = content.substring(0, insertPoint);
      final suffix = content.substring(insertPoint);
      
      final injection = '\n\n    # Frida Gadget injection\n$loadGadgetSmali    # End Frida Gadget injection\n';
      
      // Also need to ensure there's a v0 local available
      // Find .locals and ensure it's at least 1
      final localsPattern = RegExp(r'(\.locals\s+)(\d+)');
      var result = prefix + injection + suffix;
      
      final localsMatch = localsPattern.firstMatch(result);
      if (localsMatch != null) {
        final currentLocals = int.parse(localsMatch.group(2)!);
        if (currentLocals < 1) {
          result = result.replaceFirst(localsPattern, '.locals 1');
        }
      }
      
      return result;
    }
    
    return content;
  }

  /// Add a new static initializer method
  String _addNewClinit(String content) {
    // Find the end of field declarations or start of methods
    final insertPoint = content.indexOf('\n.method ');
    
    if (insertPoint == -1) {
      // No methods found, append at end before last line
      final endOfClass = content.lastIndexOf('.end class');
      if (endOfClass != -1) {
        final prefix = content.substring(0, endOfClass);
        final suffix = content.substring(endOfClass);
        
        final clinit = '''

# Frida Gadget injection - auto-generated static initializer
.method static constructor <clinit>()V
    .locals 1

$loadGadgetSmali
    return-void
.end method
# End Frida Gadget injection

''';
        return prefix + clinit + suffix;
      }
    } else {
      final prefix = content.substring(0, insertPoint);
      final suffix = content.substring(insertPoint);
      
      final clinit = '''

# Frida Gadget injection - auto-generated static initializer
.method static constructor <clinit>()V
    .locals 1

$loadGadgetSmali
    return-void
.end method
# End Frida Gadget injection
''';
      return prefix + clinit + suffix;
    }
    
    return content;
  }

  /// Read AndroidManifest.xml to find application class and main activity
  Future<Map<String, String?>> parseManifestForTargets(String manifestPath) async {
    try {
      final content = await File(manifestPath).readAsString();
      
      String? applicationClass;
      String? mainActivity;
      
      // Find application class
      final appTagPattern = RegExp(r'<application[^>]*android:name="([^"]+)"', dotAll: true);
      
      final appMatch = appTagPattern.firstMatch(content);
      if (appMatch != null) {
        applicationClass = appMatch.group(1);
        // Handle relative class names
        if (applicationClass != null && applicationClass.startsWith('.')) {
          final pkgMatch = RegExp(r'package="([^"]+)"').firstMatch(content);
          if (pkgMatch != null) {
            applicationClass = pkgMatch.group(1)! + applicationClass;
          }
        }
      }
      
      // Find main activity (with MAIN action and LAUNCHER category)
      final launcherPattern = RegExp(
        r'<activity[^>]*android:name="([^"]+)"[^>]*>.*?action android:name="android\.intent\.action\.MAIN".*?category android:name="android\.intent\.category\.LAUNCHER"',
        dotAll: true,
      );
      
      // Try alternative pattern
      final activityPattern = RegExp(
        r'<activity[^>]*android:name="([^"]+)"',
      );
      
      final launcherMatch = launcherPattern.firstMatch(content);
      if (launcherMatch != null) {
        mainActivity = launcherMatch.group(1);
      } else {
        // Just get the first activity
        final actMatch = activityPattern.firstMatch(content);
        if (actMatch != null) {
          mainActivity = actMatch.group(1);
        }
      }
      
      // Handle relative class names for activity
      if (mainActivity != null && mainActivity.startsWith('.')) {
        final pkgMatch = RegExp(r'package="([^"]+)"').firstMatch(content);
        if (pkgMatch != null) {
          mainActivity = pkgMatch.group(1)! + mainActivity;
        }
      }
      
      debugPrint('Found application class: $applicationClass');
      debugPrint('Found main activity: $mainActivity');
      
      return {
        'applicationClass': applicationClass,
        'mainActivity': mainActivity,
      };
    } catch (e) {
      debugPrint('Error parsing manifest: $e');
      return {};
    }
  }
}
