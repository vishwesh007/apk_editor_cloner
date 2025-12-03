import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'android_manifest_parser.dart';

/// Service for patching APK to load Frida Gadget
/// This modifies the APK so the gadget library is loaded on app startup
class ApkPatcherService {
  static final ApkPatcherService _instance = ApkPatcherService._internal();
  factory ApkPatcherService() => _instance;
  ApkPatcherService._internal();

  /// Patch APK to load Frida Gadget
  /// 
  /// There are several methods to make an app load the gadget:
  /// 1. Add native library dependency to existing native lib
  /// 2. Patch Application class to call System.loadLibrary
  /// 3. Use LD_PRELOAD (requires specific Android versions)
  /// 
  /// Method 2 is most reliable for non-rooted devices
  Future<PatchResult> patchApkForGadget({
    required String inputApkPath,
    required String outputApkPath,
    required Map<String, List<int>> gadgetLibraries, // arch -> bytes
    required String gadgetConfig,
    String? embeddedScript,
  }) async {
    final result = PatchResult();
    
    try {
      // Read APK
      result.addStep('Reading APK...');
      final apkBytes = await File(inputApkPath).readAsBytes();
      final archive = ZipDecoder().decodeBytes(apkBytes);
      
      // Parse manifest to find entry point
      result.addStep('Parsing AndroidManifest.xml...');
      ArchiveFile? manifestFile;
      for (final file in archive) {
        if (file.name == 'AndroidManifest.xml') {
          manifestFile = file;
          break;
        }
      }
      
      if (manifestFile == null) {
        throw Exception('AndroidManifest.xml not found');
      }
      
      final manifestInfo = AndroidManifestParser().parse(
        manifestFile.content as List<int>,
      );
      
      result.addStep('Package: ${manifestInfo.packageName}');
      
      // Create new archive with modifications
      result.addStep('Creating patched APK...');
      final newArchive = Archive();
      
      // Track what libs are in the APK
      final existingArchs = <String>{};
      
      // Copy files, removing signatures
      for (final file in archive) {
        // Skip signature files
        if (_isSignatureFile(file.name)) {
          continue;
        }
        
        // Track native lib architectures
        if (file.name.startsWith('lib/') && file.name.endsWith('.so')) {
          final arch = file.name.split('/')[1];
          existingArchs.add(arch);
        }
        
        newArchive.addFile(file);
      }
      
      // Determine architectures to inject
      final archsToInject = existingArchs.isNotEmpty 
          ? existingArchs 
          : {'arm64-v8a', 'armeabi-v7a'};
      
      // Add gadget libraries
      result.addStep('Injecting gadget for: ${archsToInject.join(", ")}');
      
      for (final arch in archsToInject) {
        final gadgetBytes = gadgetLibraries[arch];
        if (gadgetBytes == null) {
          result.addWarning('No gadget for $arch, skipping');
          continue;
        }
        
        // Add gadget .so file
        newArchive.addFile(ArchiveFile(
          'lib/$arch/libfrida-gadget.so',
          gadgetBytes.length,
          gadgetBytes,
        ));
        
        // Add config file (must be named libfrida-gadget.config.so)
        final configBytes = utf8.encode(gadgetConfig);
        newArchive.addFile(ArchiveFile(
          'lib/$arch/libfrida-gadget.config.so',
          configBytes.length,
          configBytes,
        ));
      }
      
      // Add embedded script if provided
      if (embeddedScript != null) {
        final scriptBytes = utf8.encode(embeddedScript);
        newArchive.addFile(ArchiveFile(
          'assets/frida-script.js',
          scriptBytes.length,
          scriptBytes,
        ));
      }
      
      // Write patched APK (unsigned)
      result.addStep('Writing patched APK...');
      final zipBytes = ZipEncoder().encode(newArchive);
      if (zipBytes == null) {
        throw Exception('Failed to encode APK');
      }
      
      await File(outputApkPath).writeAsBytes(zipBytes);
      
      result.success = true;
      result.outputPath = outputApkPath;
      result.packageName = manifestInfo.packageName;
      
    } catch (e) {
      result.success = false;
      result.error = e.toString();
      result.addStep('Error: $e');
    }
    
    return result;
  }

  /// Check if file is a signature file
  bool _isSignatureFile(String path) {
    if (!path.startsWith('META-INF/')) return false;
    final name = path.toUpperCase();
    return name.endsWith('.SF') ||
           name.endsWith('.RSA') ||
           name.endsWith('.DSA') ||
           name.endsWith('.EC') ||
           name.contains('MANIFEST.MF') ||
           name.contains('CERT.');
  }

  /// Create a loader .so that loads frida-gadget
  /// This is a minimal native library that System.loadLibrary can load,
  /// which in turn loads the gadget via DT_NEEDED or constructor
  Uint8List createGadgetLoader(String arch) {
    // For simplicity, we'll rely on the gadget being loaded
    // via the application or activity classes
    // This would need actual native code compilation for production
    throw UnimplementedError(
      'Native loader creation requires NDK compilation'
    );
  }
}

/// Patch result
class PatchResult {
  bool success = false;
  String? outputPath;
  String? packageName;
  String? error;
  List<String> steps = [];
  List<String> warnings = [];

  void addStep(String step) {
    steps.add(step);
    debugPrint('[Patcher] $step');
  }

  void addWarning(String warning) {
    warnings.add(warning);
    debugPrint('[Patcher WARNING] $warning');
  }
}

/// Utility class for APK manipulation
class ApkUtils {
  /// Zipalign an APK
  static Future<bool> zipalign(String input, String output) async {
    String? sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                    Platform.environment['ANDROID_SDK_ROOT'];
    
    if (sdkPath == null && Platform.environment['LOCALAPPDATA'] != null) {
      sdkPath = '${Platform.environment['LOCALAPPDATA']}/Android/Sdk';
    }
    
    if (sdkPath == null) return false;
    
    final buildToolsDir = Directory('$sdkPath/build-tools');
    if (!await buildToolsDir.exists()) return false;
    
    final versions = await buildToolsDir.list().toList();
    if (versions.isEmpty) return false;
    
    versions.sort((a, b) => b.path.compareTo(a.path));
    var zipalignPath = '${versions.first.path}/zipalign';
    if (Platform.isWindows) zipalignPath += '.exe';
    
    if (!await File(zipalignPath).exists()) return false;
    
    final result = await Process.run(zipalignPath, ['-f', '-p', '4', input, output]);
    return result.exitCode == 0;
  }

  /// Sign APK with debug keystore
  static Future<bool> signApk(String input, String output, String keystorePath) async {
    final sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                    Platform.environment['ANDROID_SDK_ROOT'] ??
                    (Platform.environment['LOCALAPPDATA'] != null 
                        ? '${Platform.environment['LOCALAPPDATA']}/Android/Sdk'
                        : null);
    
    if (sdkPath == null) {
      // Try jarsigner as fallback
      return _signWithJarsigner(input, output, keystorePath);
    }
    
    final buildToolsDir = Directory('$sdkPath/build-tools');
    if (!await buildToolsDir.exists()) {
      return _signWithJarsigner(input, output, keystorePath);
    }
    
    final versions = await buildToolsDir.list().toList();
    if (versions.isEmpty) {
      return _signWithJarsigner(input, output, keystorePath);
    }
    
    versions.sort((a, b) => b.path.compareTo(a.path));
    var apksignerPath = '${versions.first.path}/apksigner';
    if (Platform.isWindows) apksignerPath += '.bat';
    
    if (!await File(apksignerPath).exists()) {
      return _signWithJarsigner(input, output, keystorePath);
    }
    
    final result = await Process.run(apksignerPath, [
      'sign',
      '--ks', keystorePath,
      '--ks-pass', 'pass:android',
      '--ks-key-alias', 'androiddebugkey',
      '--key-pass', 'pass:android',
      '--out', output,
      input,
    ]);
    
    return result.exitCode == 0;
  }

  static Future<bool> _signWithJarsigner(String input, String output, String keystorePath) async {
    try {
      // First copy input to output path since jarsigner modifies in place
      await File(input).copy(output);
      
      final result = await Process.run('jarsigner', [
        '-keystore', keystorePath,
        '-storepass', 'android',
        '-keypass', 'android',
        output,
        'androiddebugkey',
      ]);
      
      return result.exitCode == 0;
    } catch (e) {
      return false;
    }
  }

  /// Create debug keystore
  static Future<bool> createDebugKeystore(String path) async {
    if (await File(path).exists()) return true;
    
    try {
      final result = await Process.run('keytool', [
        '-genkey',
        '-v',
        '-keystore', path,
        '-alias', 'androiddebugkey',
        '-keyalg', 'RSA',
        '-keysize', '2048',
        '-validity', '10000',
        '-storepass', 'android',
        '-keypass', 'android',
        '-dname', 'CN=Android Debug,O=Android,C=US',
      ]);
      
      return result.exitCode == 0;
    } catch (e) {
      return false;
    }
  }
}
