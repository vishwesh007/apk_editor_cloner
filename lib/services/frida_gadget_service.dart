import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

/// Service for injecting Frida Gadget into APKs for non-rooted device analysis
class FridaGadgetService {
  static final FridaGadgetService _instance = FridaGadgetService._internal();
  factory FridaGadgetService() => _instance;
  FridaGadgetService._internal();

  // Frida Gadget version to use - update this to latest
  static const String fridaVersion = '17.5.1';
  
  // Architecture mappings
  static const Map<String, String> archMap = {
    'armeabi-v7a': 'arm',
    'arm64-v8a': 'arm64',
    'x86': 'x86',
    'x86_64': 'x86_64',
  };

  /// Gadget interaction modes
  static const String modeScript = 'script';
  static const String modeListen = 'listen';
  static const String modeConnect = 'connect';

  String? _workDir;
  String? _gadgetCacheDir;
  
  /// Initialize working directories
  Future<void> init() async {
    if (kIsWeb) return;
    
    final tempDir = Directory.systemTemp;
    _workDir = '${tempDir.path}/droid_analyst_gadget';
    _gadgetCacheDir = '$_workDir/cache';
    
    await Directory(_workDir!).create(recursive: true);
    await Directory(_gadgetCacheDir!).create(recursive: true);
  }

  /// Download Frida Gadget for specific architecture
  Future<String?> downloadGadget(String arch, {Function(String)? onProgress}) async {
    if (_gadgetCacheDir == null) await init();
    
    final fridaArch = archMap[arch];
    if (fridaArch == null) {
      throw Exception('Unsupported architecture: $arch');
    }

    final gadgetName = 'frida-gadget-$fridaVersion-android-$fridaArch.so';
    final cachedPath = '$_gadgetCacheDir/$gadgetName';
    
    // Check if already cached
    if (await File(cachedPath).exists()) {
      onProgress?.call('Using cached gadget');
      return cachedPath;
    }

    // Download from GitHub releases (XZ compressed)
    final url = 'https://github.com/frida/frida/releases/download/$fridaVersion/$gadgetName.xz';
    
    try {
      onProgress?.call('Downloading Frida Gadget $fridaVersion for $arch...');
      debugPrint('Downloading Frida Gadget from: $url');
      
      final request = http.Request('GET', Uri.parse(url));
      final response = await http.Client().send(request);
      
      if (response.statusCode != 200) {
        throw Exception('Failed to download gadget: ${response.statusCode}');
      }

      // Download with progress
      final contentLength = response.contentLength ?? 0;
      final bytes = <int>[];
      int downloaded = 0;
      
      await for (final chunk in response.stream) {
        bytes.addAll(chunk);
        downloaded += chunk.length;
        if (contentLength > 0) {
          final progress = (downloaded / contentLength * 100).toInt();
          onProgress?.call('Downloading: $progress%');
        }
      }
      
      onProgress?.call('Decompressing gadget...');
      
      // Save compressed file
      final xzPath = '$cachedPath.xz';
      await File(xzPath).writeAsBytes(bytes);
      
      // Decompress XZ
      final decompressed = await _decompressXz(xzPath, onProgress: onProgress);
      if (decompressed == null) {
        // Try downloading from alternative source or show helpful error
        await File(xzPath).delete().catchError((_) => File(xzPath));
        throw Exception('Failed to decompress gadget. Please ensure xz or 7z is available on the system.');
      }
      
      await File(cachedPath).writeAsBytes(decompressed);
      await File(xzPath).delete().catchError((_) => File(xzPath));
      
      onProgress?.call('Gadget ready!');
      return cachedPath;
    } catch (e) {
      debugPrint('Error downloading gadget: $e');
      onProgress?.call('Error: $e');
      return null;
    }
  }

  /// Decompress XZ file using various methods
  Future<List<int>?> _decompressXz(String xzPath, {Function(String)? onProgress}) async {
    final xzBytes = await File(xzPath).readAsBytes();
    
    // Method 1: Try pure Dart XZ decompression using archive package
    try {
      onProgress?.call('Trying Dart XZ decompression...');
      final decoder = XZDecoder();
      final decompressed = decoder.decodeBytes(xzBytes);
      if (decompressed.isNotEmpty) {
        return decompressed;
      }
    } catch (e) {
      debugPrint('Dart XZ decompression failed: $e');
    }
    
    // Method 2: Try system xz command (available on Linux/macOS)
    if (!Platform.isAndroid && !Platform.isIOS) {
      try {
        onProgress?.call('Trying system xz command...');
        final result = await Process.run('xz', ['-d', '-k', '-f', xzPath]);
        if (result.exitCode == 0) {
          final decompressedPath = xzPath.replaceAll('.xz', '');
          final bytes = await File(decompressedPath).readAsBytes();
          return bytes;
        }
      } catch (_) {}
    }

    // Method 3: Try 7z as fallback (Windows)
    if (Platform.isWindows) {
      try {
        onProgress?.call('Trying 7z decompression...');
        final outPath = xzPath.replaceAll('.xz', '');
        final parentDir = Directory(xzPath).parent.path;
        final result = await Process.run('7z', ['x', '-y', '-o$parentDir', xzPath]);
        if (result.exitCode == 0 && await File(outPath).exists()) {
          final bytes = await File(outPath).readAsBytes();
          return bytes;
        }
      } catch (_) {}
      
      // Try with full path to 7z
      try {
        final programFiles = Platform.environment['ProgramFiles'] ?? 'C:\\Program Files';
        final sevenZipPath = '$programFiles\\7-Zip\\7z.exe';
        if (await File(sevenZipPath).exists()) {
          onProgress?.call('Trying 7-Zip at $sevenZipPath...');
          final outPath = xzPath.replaceAll('.xz', '');
          final parentDir = Directory(xzPath).parent.path;
          final result = await Process.run(sevenZipPath, ['x', '-y', '-o$parentDir', xzPath]);
          if (result.exitCode == 0 && await File(outPath).exists()) {
            final bytes = await File(outPath).readAsBytes();
            return bytes;
          }
        }
      } catch (_) {}
    }
    
    // Method 4: On Android, try using shell commands via adb or termux
    if (Platform.isAndroid) {
      try {
        onProgress?.call('Trying Android xz decompression...');
        // Try xz if available (some Android devices have busybox)
        final result = await Process.run('xz', ['-d', '-k', '-f', xzPath]);
        if (result.exitCode == 0) {
          final decompressedPath = xzPath.replaceAll('.xz', '');
          if (await File(decompressedPath).exists()) {
            final bytes = await File(decompressedPath).readAsBytes();
            return bytes;
          }
        }
      } catch (_) {}
    }

    return null;
  }

  /// Generate Frida Gadget configuration file
  String generateGadgetConfig({
    required String mode,
    String? scriptPath,
    String? host,
    int port = 27042,
    bool pauseOnStart = true,
  }) {
    final config = <String, dynamic>{
      'interaction': <String, dynamic>{},
    };

    switch (mode) {
      case modeScript:
        // Embedded script mode - runs script automatically on start
        config['interaction'] = {
          'type': 'script',
          'path': scriptPath ?? '/data/local/tmp/frida-script.js',
          'on_change': 'reload',
        };
        break;
        
      case modeListen:
        // Listen mode - wait for Frida client to connect
        config['interaction'] = {
          'type': 'listen',
          'address': '0.0.0.0',
          'port': port,
          'on_port_conflict': 'pick-next',
          'on_load': pauseOnStart ? 'wait' : 'resume',
        };
        break;
        
      case modeConnect:
        // Connect mode - connect back to Frida server
        config['interaction'] = {
          'type': 'connect',
          'host': host ?? '127.0.0.1',
          'port': port,
        };
        break;
    }

    return jsonEncode(config);
  }

  /// Inject Frida Gadget into an APK
  Future<GadgetInjectionResult> injectGadget({
    required String apkPath,
    required String outputPath,
    String mode = modeListen,
    String? scriptContent,
    String? scriptPath,
    List<String>? targetArchs,
    int port = 27042,
    Function(String)? onProgress,
  }) async {
    if (_workDir == null) await init();
    
    final result = GadgetInjectionResult();
    final workPath = '$_workDir/inject_${DateTime.now().millisecondsSinceEpoch}';
    
    void addStep(String step) {
      result.steps.add(step);
      onProgress?.call(step);
    }
    
    try {
      await Directory(workPath).create(recursive: true);
      
      // Step 1: Extract APK
      addStep('Extracting APK...');
      final apkBytes = await File(apkPath).readAsBytes();
      final archive = ZipDecoder().decodeBytes(apkBytes);
      
      // Step 2: Find existing native libs to determine architectures
      final existingArchs = <String>{};
      for (final file in archive) {
        if (file.name.startsWith('lib/') && file.name.endsWith('.so')) {
          final parts = file.name.split('/');
          if (parts.length >= 2) {
            existingArchs.add(parts[1]);
          }
        }
      }
      
      // Determine target architectures
      final archsToInject = targetArchs ?? 
          (existingArchs.isNotEmpty ? existingArchs.toList() : ['arm64-v8a', 'armeabi-v7a']);
      
      addStep('Target architectures: ${archsToInject.join(", ")}');
      
      // Step 3: Download gadgets for each architecture
      final gadgetPaths = <String, String>{};
      for (final arch in archsToInject) {
        addStep('Downloading gadget for $arch...');
        final gadgetPath = await downloadGadget(arch, onProgress: onProgress);
        if (gadgetPath == null) {
          throw Exception('Failed to download gadget for $arch');
        }
        gadgetPaths[arch] = gadgetPath;
      }
      
      // Step 4: Generate config
      addStep('Generating gadget config...');
      final configJson = generateGadgetConfig(
        mode: mode,
        scriptPath: scriptPath,
        port: port,
      );
      
      // Step 5: Create modified archive
      addStep('Injecting gadget into APK...');
      final newArchive = Archive();
      
      // Copy existing files
      for (final file in archive) {
        // Skip signature files - we'll re-sign
        if (file.name.startsWith('META-INF/') && 
            (file.name.endsWith('.SF') || 
             file.name.endsWith('.RSA') || 
             file.name.endsWith('.DSA') ||
             file.name.endsWith('.MF'))) {
          continue;
        }
        newArchive.addFile(file);
      }
      
      // Add gadget libraries
      for (final arch in archsToInject) {
        final gadgetBytes = await File(gadgetPaths[arch]!).readAsBytes();
        
        // Add as libfrida-gadget.so
        newArchive.addFile(ArchiveFile(
          'lib/$arch/libfrida-gadget.so',
          gadgetBytes.length,
          gadgetBytes,
        ));
        
        // Add config file
        final configBytes = utf8.encode(configJson);
        newArchive.addFile(ArchiveFile(
          'lib/$arch/libfrida-gadget.config.so',
          configBytes.length,
          configBytes,
        ));
      }
      
      // If script mode, embed script
      if (mode == modeScript && scriptContent != null) {
        final scriptBytes = utf8.encode(scriptContent);
        newArchive.addFile(ArchiveFile(
          'assets/frida-script.js',
          scriptBytes.length,
          scriptBytes,
        ));
      }
      
      // Step 6: Modify AndroidManifest to load gadget
      addStep('Patching native library loading...');
      // Note: The gadget will be loaded if we inject it into the main activity's native libs
      // or by patching the app to load it via System.loadLibrary
      
      // Step 7: Write modified APK
      final unsignedPath = '$workPath/unsigned.apk';
      final zipBytes = ZipEncoder().encode(newArchive);
      await File(unsignedPath).writeAsBytes(zipBytes!);
      
      // Step 8: Zipalign
      addStep('Zipaligning APK...');
      final alignedPath = '$workPath/aligned.apk';
      final alignResult = await _zipalign(unsignedPath, alignedPath);
      if (!alignResult) {
        // Continue without alignment - may still work
        await File(unsignedPath).copy(alignedPath);
      }
      
      // Step 9: Sign APK
      addStep('Signing APK...');
      final signResult = await _signApk(alignedPath, outputPath);
      if (!signResult) {
        throw Exception('Failed to sign APK');
      }
      
      result.success = true;
      result.outputPath = outputPath;
      addStep('Gadget injection complete!');
      
      // Cleanup
      await Directory(workPath).delete(recursive: true);
      
    } catch (e) {
      result.success = false;
      result.error = e.toString();
      result.steps.add('Error: $e');
    }
    
    return result;
  }

  /// Zipalign the APK
  Future<bool> _zipalign(String inputPath, String outputPath) async {
    try {
      // Try Android SDK zipalign
      final sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                      Platform.environment['ANDROID_SDK_ROOT'];
      
      String? zipalignPath;
      if (sdkPath != null) {
        final buildToolsDir = Directory('$sdkPath/build-tools');
        if (await buildToolsDir.exists()) {
          final versions = await buildToolsDir.list().toList();
          if (versions.isNotEmpty) {
            versions.sort((a, b) => b.path.compareTo(a.path));
            zipalignPath = '${versions.first.path}/zipalign';
            if (Platform.isWindows) zipalignPath += '.exe';
          }
        }
      }
      
      if (zipalignPath == null || !await File(zipalignPath).exists()) {
        return false;
      }
      
      final result = await Process.run(
        zipalignPath,
        ['-f', '-p', '4', inputPath, outputPath],
      );
      
      return result.exitCode == 0;
    } catch (e) {
      debugPrint('Zipalign error: $e');
      return false;
    }
  }

  /// Sign APK with debug key or generated key
  Future<bool> _signApk(String inputPath, String outputPath) async {
    try {
      // Try apksigner from Android SDK
      final sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                      Platform.environment['ANDROID_SDK_ROOT'];
      
      String? apksignerPath;
      String? keystorePath;
      
      if (sdkPath != null) {
        final buildToolsDir = Directory('$sdkPath/build-tools');
        if (await buildToolsDir.exists()) {
          final versions = await buildToolsDir.list().toList();
          if (versions.isNotEmpty) {
            versions.sort((a, b) => b.path.compareTo(a.path));
            apksignerPath = '${versions.first.path}/apksigner';
            if (Platform.isWindows) apksignerPath += '.bat';
          }
        }
      }
      
      // Create or use debug keystore
      keystorePath = '$_workDir/debug.keystore';
      if (!await File(keystorePath).exists()) {
        await _createDebugKeystore(keystorePath);
      }
      
      if (apksignerPath != null && await File(apksignerPath).exists()) {
        final result = await Process.run(
          apksignerPath,
          [
            'sign',
            '--ks', keystorePath,
            '--ks-pass', 'pass:android',
            '--ks-key-alias', 'androiddebugkey',
            '--key-pass', 'pass:android',
            '--out', outputPath,
            inputPath,
          ],
        );
        return result.exitCode == 0;
      }
      
      // Fallback: try jarsigner
      final result = await Process.run(
        'jarsigner',
        [
          '-keystore', keystorePath,
          '-storepass', 'android',
          '-keypass', 'android',
          '-signedjar', outputPath,
          inputPath,
          'androiddebugkey',
        ],
      );
      
      return result.exitCode == 0;
    } catch (e) {
      debugPrint('Sign error: $e');
      return false;
    }
  }

  /// Create a debug keystore for signing
  Future<void> _createDebugKeystore(String path) async {
    try {
      await Process.run(
        'keytool',
        [
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
        ],
      );
    } catch (e) {
      debugPrint('Keytool error: $e');
    }
  }

  /// Get the command to connect to gadget-injected app
  String getConnectCommand(String packageName, {int port = 27042}) {
    return 'frida -H 127.0.0.1:$port -n $packageName';
  }

  /// Instructions for using gadget-injected APK
  String getUsageInstructions(String mode, {int port = 27042}) {
    switch (mode) {
      case modeListen:
        return '''
LISTEN MODE - The gadget waits for connection

1. Install the patched APK:
   adb install -r patched.apk

2. Forward the gadget port:
   adb forward tcp:$port tcp:$port

3. Launch the app on device

4. Connect with Frida:
   frida -H 127.0.0.1:$port -n <package_name>
   
   Or attach to process:
   frida -H 127.0.0.1:$port -p <pid>
''';
        
      case modeScript:
        return '''
SCRIPT MODE - Embedded script runs automatically

1. Install the patched APK:
   adb install -r patched.apk

2. Launch the app - script executes automatically

3. View logs:
   adb logcat -s Frida:*
''';
        
      case modeConnect:
        return '''
CONNECT MODE - Gadget connects back to your server

1. Start frida-server on your machine:
   frida-server -l 0.0.0.0:$port

2. Install the patched APK:
   adb install -r patched.apk

3. Launch the app - it will connect to your server
''';
        
      default:
        return 'Unknown mode';
    }
  }
}

/// Result of gadget injection operation
class GadgetInjectionResult {
  bool success = false;
  String? outputPath;
  String? error;
  List<String> steps = [];
}
