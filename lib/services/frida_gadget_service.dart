import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:pointycastle/export.dart';
import 'android_platform_service.dart';
import 'elf_patcher_service.dart';

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
    bool embeddedScript = false,
  }) {
    final config = <String, dynamic>{
      'interaction': <String, dynamic>{},
    };

    switch (mode) {
      case modeScript:
        // Script mode - runs script automatically on start
        // When embeddedScript is true, use relative path to script in same lib folder
        // Otherwise use the provided scriptPath or default
        final path = embeddedScript 
            ? 'libfrida-script.js.so'  // Relative to gadget config location
            : (scriptPath ?? '/data/local/tmp/frida-script.js');
        config['interaction'] = {
          'type': 'script',
          'path': path,
          // Ensure the app isn't paused when gadget loads
          'on_load': 'resume',
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
    bool showToast = false,
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
      
      // Prepare script content if toast is requested
      String finalMode = mode;
      String? finalScriptContent = scriptContent;
      
      if (showToast) {
        addStep('Adding toast injection script...');
        finalMode = modeScript; // Must be in script mode to run the toast script
        
        const toastScript = '''
// Frida Gadget Toast Script with extensive logging
console.log('[FRIDA-TOAST] Script loaded at: ' + new Date().toISOString());
console.log('[FRIDA-TOAST] Starting initialization...');

// Immediate log to confirm script execution
send({ type: 'log', message: 'Frida script executing' });

function tryShowToast() {
  console.log('[FRIDA-TOAST] tryShowToast called');
  
  if (!Java.available) {
    console.log('[FRIDA-TOAST] ERROR: Java not available!');
    return false;
  }
  
  console.log('[FRIDA-TOAST] Java is available, calling Java.perform...');
  
  Java.perform(function() {
    console.log('[FRIDA-TOAST] Inside Java.perform');
    
    try {
      console.log('[FRIDA-TOAST] Getting ActivityThread...');
      var ActivityThread = Java.use('android.app.ActivityThread');
      
      console.log('[FRIDA-TOAST] Getting currentApplication...');
      var app = ActivityThread.currentApplication();
      
      if (app === null) {
        console.log('[FRIDA-TOAST] WARNING: currentApplication is null, will retry or hook');
        hookApplicationOnCreate();
        return;
      }
      
      console.log('[FRIDA-TOAST] Got application: ' + app);
      
      var context = app.getApplicationContext();
      console.log('[FRIDA-TOAST] Got context: ' + context);
      
      if (context === null) {
        console.log('[FRIDA-TOAST] WARNING: context is null!');
        return;
      }
      
      console.log('[FRIDA-TOAST] Scheduling toast on main thread...');
      
      Java.scheduleOnMainThread(function() {
        console.log('[FRIDA-TOAST] On main thread, creating toast...');
        try {
          var Toast = Java.use('android.widget.Toast');
          var JavaString = Java.use('java.lang.String');
          var message = JavaString.\$new('FRIDA GADGET INJECTED!');
          console.log('[FRIDA-TOAST] Calling Toast.makeText...');
          var toast = Toast.makeText(context, message, 1);
          console.log('[FRIDA-TOAST] Calling toast.show()...');
          toast.show();
          console.log('[FRIDA-TOAST] SUCCESS! Toast shown!');
        } catch (toastErr) {
          console.log('[FRIDA-TOAST] ERROR showing toast: ' + toastErr);
        }
      });
      
    } catch (err) {
      console.log('[FRIDA-TOAST] ERROR in Java.perform: ' + err);
      console.log('[FRIDA-TOAST] Stack: ' + err.stack);
    }
  });
  
  return true;
}

function hookApplicationOnCreate() {
  console.log('[FRIDA-TOAST] Hooking Application.onCreate as fallback...');
  
  Java.perform(function() {
    try {
      var Application = Java.use('android.app.Application');
      Application.onCreate.implementation = function() {
        console.log('[FRIDA-TOAST] Application.onCreate called!');
        this.onCreate();
        
        var context = this.getApplicationContext();
        console.log('[FRIDA-TOAST] Got context from onCreate: ' + context);
        
        Java.scheduleOnMainThread(function() {
          try {
            var Toast = Java.use('android.widget.Toast');
            var JavaString = Java.use('java.lang.String');
            Toast.makeText(context, JavaString.\$new('FRIDA INJECTED (onCreate)!'), 1).show();
            console.log('[FRIDA-TOAST] SUCCESS! Toast shown from onCreate hook!');
          } catch (e) {
            console.log('[FRIDA-TOAST] ERROR in onCreate toast: ' + e);
          }
        });
      };
      console.log('[FRIDA-TOAST] Application.onCreate hooked successfully');
    } catch (hookErr) {
      console.log('[FRIDA-TOAST] ERROR hooking Application: ' + hookErr);
    }
  });
}

// Try immediately
console.log('[FRIDA-TOAST] Attempting immediate toast...');
tryShowToast();

// Also try with delays
console.log('[FRIDA-TOAST] Scheduling delayed attempts...');
setTimeout(function() {
  console.log('[FRIDA-TOAST] 1 second delay - trying toast...');
  tryShowToast();
}, 1000);

setTimeout(function() {
  console.log('[FRIDA-TOAST] 3 second delay - trying toast...');
  tryShowToast();
}, 3000);

setTimeout(function() {
  console.log('[FRIDA-TOAST] 5 second delay - trying toast...');
  tryShowToast();
}, 5000);

console.log('[FRIDA-TOAST] Script initialization complete');
''';
        
        if (finalScriptContent != null) {
          finalScriptContent = '$finalScriptContent\n\n$toastScript';
        } else {
          finalScriptContent = toastScript;
        }
      }

      // Step 4: Generate config
      addStep('Generating gadget config...');
      final configJson = generateGadgetConfig(
        mode: finalMode,
        scriptPath: scriptPath,
        port: port,
        embeddedScript: finalMode == modeScript && finalScriptContent != null,
      );
      
      // Step 5: Create modified archive with ELF patching
      addStep('Injecting gadget into APK...');
      final newArchive = Archive();
      final elfPatcher = ElfPatcherService();
      
      // Track native libs per architecture for patching
      final nativeLibs = <String, List<ArchiveFile>>{};
      
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
        
        // Track native libraries for later patching
        if (file.name.startsWith('lib/') && file.name.endsWith('.so') &&
            !file.name.contains('frida-gadget')) {
          final parts = file.name.split('/');
          if (parts.length >= 3) {
            final arch = parts[1];
            nativeLibs[arch] ??= [];
            nativeLibs[arch]!.add(file);
          }
        }
        
        // Mark .so files as uncompressed (required for Android native lib loading)
        if (file.name.endsWith('.so')) {
          file.compress = false;
        }
        
        newArchive.addFile(file);
      }
      
      // Add gadget libraries and patch existing native libs
      for (final arch in archsToInject) {
        final gadgetBytes = await File(gadgetPaths[arch]!).readAsBytes();
        
        // Add as libfrida-gadget.so (STORE without compression for native libs)
        final gadgetFile = ArchiveFile(
          'lib/$arch/libfrida-gadget.so',
          gadgetBytes.length,
          gadgetBytes,
        );
        gadgetFile.compress = false; // Native libs must be uncompressed
        newArchive.addFile(gadgetFile);
        
        // Add config file (can be compressed)
        final configBytes = utf8.encode(configJson);
        final configFile = ArchiveFile(
          'lib/$arch/libfrida-gadget.config.so',
          configBytes.length,
          configBytes,
        );
        configFile.compress = false; // Keep uncompressed to be safe
        newArchive.addFile(configFile);
        
        // If script mode, embed script next to gadget config (in same lib/<arch> folder)
        if (finalMode == modeScript && finalScriptContent != null) {
          final scriptBytes = utf8.encode(finalScriptContent);
          final scriptFile = ArchiveFile(
            'lib/$arch/libfrida-script.js.so',
            scriptBytes.length,
            scriptBytes,
          );
          scriptFile.compress = false; // Keep uncompressed
          newArchive.addFile(scriptFile);
          addStep('Embedded script for $arch');
        }
      }
      
      // Step 6: Patch to load gadget
      // We try multiple methods to ensure the gadget loads:
      // Method 1: ELF patching (add DT_NEEDED to existing native lib)
      // Method 2: Inject a minimal DEX bootstrap that loads the gadget
      
      addStep('Patching app to load frida-gadget...');
      
      bool patchedAnyLib = false;
      
      // Method 1: Try ELF patching first
      for (final arch in archsToInject) {
        if (nativeLibs.containsKey(arch) && nativeLibs[arch]!.isNotEmpty) {
          // Find best library to patch
          final libNames = nativeLibs[arch]!.map((f) => f.name).toList();
          final bestLib = elfPatcher.findBestLibToPatch(libNames);
          
          if (bestLib != null) {
            // Find the file in the new archive
            final libFile = nativeLibs[arch]!.firstWhere((f) => f.name == bestLib);
            final libBytes = libFile.content as List<int>;
            
            addStep('Trying ELF patch on $bestLib...');
            
            // Patch the ELF to add frida-gadget as dependency
            final patchedBytes = elfPatcher.patchElfToLoadGadget(Uint8List.fromList(libBytes));
            
            if (patchedBytes != null) {
              // Verify the patch worked by checking if library name was added
              final patchedStr = String.fromCharCodes(patchedBytes);
              if (patchedStr.contains('libfrida-gadget.so')) {
                // Remove old file and add patched version
                newArchive.files.removeWhere((f) => f.name == bestLib);
                final patchedFile = ArchiveFile(
                  bestLib,
                  patchedBytes.length,
                  patchedBytes,
                );
                patchedFile.compress = false; // Native libs must be uncompressed
                newArchive.addFile(patchedFile);
                addStep('✓ ELF patched: $bestLib');
                patchedAnyLib = true;
              } else {
                addStep('⚠ ELF patch failed verification for $bestLib');
              }
            } else {
              addStep('⚠ Could not ELF patch $bestLib');
            }
          }
        }
      }
      
      // Method 2: If ELF patching didn't work, use native smali patching on Android
      if (!patchedAnyLib && Platform.isAndroid) {
        addStep('ELF patching unavailable, trying native smali patching...');
        
        try {
          final platformService = AndroidPlatformService();
          
          // Write config and script to temp files for native patcher
          final configFile = File('$workPath/gadget.config');
          await configFile.writeAsString(configJson);
          
          String? scriptFile;
          if (finalMode == modeScript && finalScriptContent != null) {
            final sf = File('$workPath/gadget.script');
            await sf.writeAsString(finalScriptContent);
            scriptFile = sf.path;
          }
          
          // Get the first gadget lib path
          final gadgetLibPath = gadgetPaths.values.first;
          
          // Call native smali patcher
          final smaliResult = await platformService.patchApkWithSmali(
            inputApk: apkPath,
            outputApk: '$workPath/smali_patched.apk',
            gadgetLibPath: gadgetLibPath,
            configPath: configFile.path,
            scriptPath: scriptFile,
          );
          
          if (smaliResult) {
            addStep('✓ Native smali patching successful');
            
            // Use the smali-patched APK as the base and add gadget libs
            // Read the patched APK and add our gadget files
            final patchedBytes = await File('$workPath/smali_patched.apk').readAsBytes();
            final patchedArchive = ZipDecoder().decodeBytes(patchedBytes);
            
            // Add gadget files to patched APK
            for (final arch in archsToInject) {
              final gadgetBytes = await File(gadgetPaths[arch]!).readAsBytes();
              
              final gadgetFile = ArchiveFile(
                'lib/\$arch/libfrida-gadget.so',
                gadgetBytes.length,
                gadgetBytes,
              );
              gadgetFile.compress = false;
              patchedArchive.addFile(gadgetFile);
              
              final configBytes = utf8.encode(configJson);
              final cf = ArchiveFile(
                'lib/\$arch/libfrida-gadget.config.so',
                configBytes.length,
                configBytes,
              );
              cf.compress = false;
              patchedArchive.addFile(cf);
              
              if (finalMode == modeScript && finalScriptContent != null) {
                final scriptBytes = utf8.encode(finalScriptContent);
                final sf = ArchiveFile(
                  'lib/\$arch/libfrida-script.js.so',
                  scriptBytes.length,
                  scriptBytes,
                );
                sf.compress = false;
                patchedArchive.addFile(sf);
              }
            }
            
            // Write final APK
            final finalBytes = ZipEncoder().encode(patchedArchive);
            await File('$workPath/unsigned.apk').writeAsBytes(finalBytes!);
            patchedAnyLib = true;
          } else {
            addStep('⚠ Native smali patching failed');
          }
        } catch (e) {
          addStep('⚠ Native smali patching error: \$e');
        }
      }
      
      // Method 3: If still not patched, try Dart-based DEX patching as last resort
      if (!patchedAnyLib) {
        addStep('Trying Dart-based DEX patching...');
        
        // Find classes.dex in the archive
        ArchiveFile? classesDex;
        for (final file in newArchive.files) {
          if (file.name == 'classes.dex') {
            classesDex = file;
            break;
          }
        }
        
        if (classesDex != null) {
          final dexBytes = classesDex.content as List<int>;
          final patchedDex = _patchDexToLoadGadget(Uint8List.fromList(dexBytes));
          
          if (patchedDex != null) {
            newArchive.files.removeWhere((f) => f.name == 'classes.dex');
            newArchive.addFile(ArchiveFile(
              'classes.dex',
              patchedDex.length,
              patchedDex,
            ));
            addStep('✓ DEX patched to load gadget');
            patchedAnyLib = true;
          } else {
            addStep('⚠ Dart DEX patching not available');
          }
        }
      }
      
      if (!patchedAnyLib) {
        addStep('⚠ WARNING: Could not patch app to load gadget!');
        addStep('The gadget files are included but may not auto-load.');
        addStep('You may need to manually call System.loadLibrary("frida-gadget")');
      }
      
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

  /// Zipalign the APK (pure Dart - simplified alignment)
  Future<bool> _zipalign(String inputPath, String outputPath) async {
    try {
      // Try Android SDK zipalign on desktop platforms first
      if (!Platform.isAndroid && !Platform.isIOS) {
        final sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                        Platform.environment['ANDROID_SDK_ROOT'] ??
                        (Platform.isWindows && Platform.environment['LOCALAPPDATA'] != null
                            ? '${Platform.environment['LOCALAPPDATA']}/Android/Sdk'
                            : null);
        
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
        
        if (zipalignPath != null && await File(zipalignPath).exists()) {
          final result = await Process.run(
            zipalignPath,
            ['-f', '-p', '4', inputPath, outputPath],
          );
          
          if (result.exitCode == 0) {
            return true;
          }
        }
      }
      
      // Fallback: Just copy the file - zipalign is recommended but not required
      await File(inputPath).copy(outputPath);
      return true;
    } catch (e) {
      debugPrint('Zipalign error: $e');
      // Copy anyway on failure
      try {
        await File(inputPath).copy(outputPath);
        return true;
      } catch (_) {
        return false;
      }
    }
  }

  /// Sign APK with debug key or generated key
  Future<bool> _signApk(String inputPath, String outputPath) async {
    try {
      // On Android, use native signing via platform channel (most reliable)
      if (Platform.isAndroid) {
        debugPrint('Using native Android signing via platform channel...');
        final platformService = AndroidPlatformService();
        final success = await platformService.signApk(inputPath, outputPath);
        if (success) {
          debugPrint('APK signed successfully with native Android signing');
          return true;
        }
        debugPrint('Native signing failed, trying pure Dart fallback...');
        return await _signApkPureDart(inputPath, outputPath);
      }
      
      // On desktop, try apksigner from Android SDK
      final sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                      Platform.environment['ANDROID_SDK_ROOT'] ??
                      (Platform.isWindows && Platform.environment['LOCALAPPDATA'] != null
                          ? '${Platform.environment['LOCALAPPDATA']}/Android/Sdk'
                          : null);
      
      String? apksignerPath;
      final String keystorePath = '$_workDir/debug.keystore';
      
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
      if (!await File(keystorePath).exists()) {
        final created = await _createDebugKeystore(keystorePath);
        if (!created && !Platform.isAndroid) {
          debugPrint('Failed to create keystore, falling back to pure Dart signing');
        }
      }
      
      // Try apksigner with v1, v2, and v3 signatures
      if (apksignerPath != null && await File(apksignerPath).exists() && await File(keystorePath).exists()) {
        debugPrint('Using apksigner at: $apksignerPath');
        final result = await Process.run(
          apksignerPath,
          [
            'sign',
            '--v1-signing-enabled', 'true',
            '--v2-signing-enabled', 'true',
            '--v3-signing-enabled', 'true',
            '--ks', keystorePath,
            '--ks-pass', 'pass:android',
            '--ks-key-alias', 'androiddebugkey',
            '--key-pass', 'pass:android',
            '--out', outputPath,
            inputPath,
          ],
        );
        if (result.exitCode == 0) {
          debugPrint('APK signed successfully with apksigner (v1+v2+v3)');
          return true;
        } else {
          debugPrint('apksigner failed: ${result.stderr}');
        }
      }
      
      // Fallback: try jarsigner (v1 only - may not work on Android 11+)
      if (await File(keystorePath).exists()) {
        try {
          debugPrint('Trying jarsigner fallback...');
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
          
          if (result.exitCode == 0) {
            debugPrint('APK signed with jarsigner (v1 only - may not install on Android 11+)');
            return true;
          }
        } catch (e) {
          debugPrint('jarsigner failed: $e');
        }
      }
      
      // Last resort: pure Dart v1 signing
      debugPrint('Using pure Dart APK signing (v1 only)...');
      final success = await _signApkPureDart(inputPath, outputPath);
      if (success) {
        debugPrint('WARNING: APK signed with v1 signature only. May not install on Android 11+');
        debugPrint('For Android 11+, please re-sign with apksigner to add v2/v3 signatures.');
      }
      return success;
    } catch (e) {
      debugPrint('Sign error: $e');
      // Try pure Dart as last resort
      return await _signApkPureDart(inputPath, outputPath);
    }
  }

  /// Pure Dart APK signing implementation (JAR signing / v1 signature + v2 APK Signature Scheme)
  Future<bool> _signApkPureDart(String inputPath, String outputPath) async {
    try {
      debugPrint('Starting pure Dart APK signing with v1 + v2 signatures...');
      
      // Read the APK
      final apkBytes = await File(inputPath).readAsBytes();
      final archive = ZipDecoder().decodeBytes(apkBytes);
      
      // Generate RSA key pair
      final keyPair = _generateRSAKeyPair();
      final privateKey = keyPair.privateKey as RSAPrivateKey;
      final publicKey = keyPair.publicKey as RSAPublicKey;
      
      // Create MANIFEST.MF
      final manifestContent = StringBuffer();
      manifestContent.writeln('Manifest-Version: 1.0');
      manifestContent.writeln('Created-By: DroidAnalyst');
      manifestContent.writeln();
      
      // Calculate SHA-256 digest for each file
      final fileDigests = <String, String>{};
      for (final file in archive) {
        if (file.name.startsWith('META-INF/')) continue;
        if (!file.isFile) continue;
        
        final digest = sha256.convert(file.content as List<int>);
        final base64Digest = base64.encode(digest.bytes);
        fileDigests[file.name] = base64Digest;
        
        manifestContent.writeln('Name: ${file.name}');
        manifestContent.writeln('SHA-256-Digest: $base64Digest');
        manifestContent.writeln();
      }
      
      final manifestBytes = utf8.encode(manifestContent.toString());
      
      // Create CERT.SF (signature file)
      final sfContent = StringBuffer();
      sfContent.writeln('Signature-Version: 1.0');
      sfContent.writeln('Created-By: DroidAnalyst');
      sfContent.writeln('X-Android-APK-Signed: 2'); // Indicate v2 signature is present
      
      // Add manifest digest
      final manifestDigest = sha256.convert(manifestBytes);
      sfContent.writeln('SHA-256-Digest-Manifest: ${base64.encode(manifestDigest.bytes)}');
      sfContent.writeln();
      
      // Add individual file digests
      for (final entry in fileDigests.entries) {
        final sectionContent = 'Name: ${entry.key}\r\nSHA-256-Digest: ${entry.value}\r\n\r\n';
        final sectionDigest = sha256.convert(utf8.encode(sectionContent));
        sfContent.writeln('Name: ${entry.key}');
        sfContent.writeln('SHA-256-Digest: ${base64.encode(sectionDigest.bytes)}');
        sfContent.writeln();
      }
      
      final sfBytes = utf8.encode(sfContent.toString());
      
      // Create CERT.RSA (PKCS#7 signature block)
      final rsaBytes = _createPKCS7Signature(sfBytes, privateKey, publicKey);
      
      // Create new archive with signature files
      final newArchive = Archive();
      
      // Add META-INF files first
      newArchive.addFile(ArchiveFile(
        'META-INF/MANIFEST.MF',
        manifestBytes.length,
        manifestBytes,
      ));
      
      newArchive.addFile(ArchiveFile(
        'META-INF/CERT.SF',
        sfBytes.length,
        sfBytes,
      ));
      
      newArchive.addFile(ArchiveFile(
        'META-INF/CERT.RSA',
        rsaBytes.length,
        rsaBytes,
      ));
      
      // Copy other files (excluding old signatures)
      for (final file in archive) {
        if (file.name.startsWith('META-INF/')) continue;
        newArchive.addFile(file);
      }
      
      // Write v1 signed APK
      final v1ZipBytes = ZipEncoder().encode(newArchive);
      if (v1ZipBytes == null) {
        throw Exception('Failed to encode APK');
      }
      
      // Now add APK Signature Scheme v2 block
      final v2SignedBytes = await _addV2Signature(Uint8List.fromList(v1ZipBytes), privateKey, publicKey);
      await File(outputPath).writeAsBytes(v2SignedBytes);
      
      debugPrint('Pure Dart APK signing completed with v1 + v2 signatures!');
      return true;
    } catch (e, st) {
      debugPrint('Pure Dart signing error: $e');
      debugPrint('Stack trace: $st');
      return false;
    }
  }

  /// Add APK Signature Scheme v2 signature block to APK
  /// v2 signature is placed before the Central Directory and signs the entire APK
  Future<Uint8List> _addV2Signature(Uint8List apkBytes, RSAPrivateKey privateKey, RSAPublicKey publicKey) async {
    // Find the Central Directory (CD) and End of Central Directory (EOCD)
    final eocdOffset = _findEOCD(apkBytes);
    if (eocdOffset < 0) {
      debugPrint('Could not find EOCD, returning v1 signed APK only');
      return apkBytes;
    }
    
    // Parse EOCD to find CD offset
    final cdOffset = _getCDOffset(apkBytes, eocdOffset);
    if (cdOffset < 0) {
      debugPrint('Could not find CD offset, returning v1 signed APK only');
      return apkBytes;
    }
    
    // APK Signing Block goes between the ZIP entries and the Central Directory
    // Structure: 
    // 1. size of block (8 bytes, excluding this field)
    // 2. sequence of ID-value pairs
    // 3. size of block (8 bytes, same as #1)
    // 4. magic "APK Sig Block 42" (16 bytes)
    
    // Create the signing block content
    final signingBlockContent = _createV2SigningBlockContent(
      apkBytes, cdOffset, eocdOffset, privateKey, publicKey,
    );
    
    // Build complete APK with v2 signing block
    final result = BytesBuilder();
    
    // Copy ZIP entries (everything before CD)
    result.add(apkBytes.sublist(0, cdOffset));
    
    // Add APK Signing Block
    result.add(signingBlockContent);
    
    // Copy Central Directory
    result.add(apkBytes.sublist(cdOffset, eocdOffset));
    
    // Update and copy EOCD with new CD offset
    final newCdOffset = cdOffset + signingBlockContent.length;
    final updatedEocd = _updateEOCD(apkBytes.sublist(eocdOffset), newCdOffset);
    result.add(updatedEocd);
    
    return Uint8List.fromList(result.toBytes());
  }

  /// Find End of Central Directory record
  int _findEOCD(Uint8List bytes) {
    // EOCD signature: 0x06054b50
    for (int i = bytes.length - 22; i >= 0; i--) {
      if (bytes[i] == 0x50 && bytes[i + 1] == 0x4b && 
          bytes[i + 2] == 0x05 && bytes[i + 3] == 0x06) {
        return i;
      }
    }
    return -1;
  }

  /// Get Central Directory offset from EOCD
  int _getCDOffset(Uint8List bytes, int eocdOffset) {
    // CD offset is at EOCD + 16 (4 bytes, little endian)
    return bytes[eocdOffset + 16] |
           (bytes[eocdOffset + 17] << 8) |
           (bytes[eocdOffset + 18] << 16) |
           (bytes[eocdOffset + 19] << 24);
  }

  /// Update EOCD with new CD offset
  Uint8List _updateEOCD(Uint8List eocd, int newCdOffset) {
    final result = Uint8List.fromList(eocd);
    // Update CD offset at byte 16
    result[16] = newCdOffset & 0xFF;
    result[17] = (newCdOffset >> 8) & 0xFF;
    result[18] = (newCdOffset >> 16) & 0xFF;
    result[19] = (newCdOffset >> 24) & 0xFF;
    return result;
  }

  /// Create APK Signature Scheme v2 signing block content
  Uint8List _createV2SigningBlockContent(
    Uint8List apkBytes, 
    int cdOffset, 
    int eocdOffset,
    RSAPrivateKey privateKey,
    RSAPublicKey publicKey,
  ) {
    // The data to sign is a concatenation of:
    // 1. Contents of ZIP entries (from start to CD)
    // 2. Central Directory
    // 3. EOCD (with CD offset set to 0)
    
    // Create digest of sections
    final section1 = apkBytes.sublist(0, cdOffset);
    final section3 = apkBytes.sublist(cdOffset, eocdOffset);
    final section4 = _updateEOCD(apkBytes.sublist(eocdOffset), 0);
    
    // Compute SHA-256 digests of each section
    final digest1 = sha256.convert(section1);
    final digest3 = sha256.convert(section3);
    final digest4 = sha256.convert(section4);
    
    // Create signed data for v2 signature
    // Length-prefixed signed data contains:
    // - digests
    // - certificates
    // - additional attributes
    final signedData = _createV2SignedData(
      [digest1.bytes, digest3.bytes, digest4.bytes],
      publicKey,
    );
    
    // Sign the signed data
    final signer = RSASigner(SHA256Digest(), '0609608648016503040201');
    signer.init(true, PrivateKeyParameter<RSAPrivateKey>(privateKey));
    final signature = signer.generateSignature(Uint8List.fromList(signedData));
    
    // Create signer block
    final signerBlock = _createV2SignerBlock(signedData, signature.bytes, publicKey);
    
    // Create the ID-value pair for v2 signature (ID = 0x7109871a)
    const v2SignatureId = 0x7109871a;
    final idValuePair = _createIdValuePair(v2SignatureId, signerBlock);
    
    // Calculate block size
    final blockContentSize = idValuePair.length;
    final blockSize = blockContentSize + 8 + 16; // +8 for size field, +16 for magic
    
    // Build the signing block
    final block = BytesBuilder();
    
    // Size of block (excluding this field itself)
    _writeUint64LE(block, blockSize);
    
    // ID-value pairs
    block.add(idValuePair);
    
    // Size of block again
    _writeUint64LE(block, blockSize);
    
    // Magic: "APK Sig Block 42"
    block.add(utf8.encode('APK Sig Block 42'));
    
    return Uint8List.fromList(block.toBytes());
  }

  /// Create signed data structure for v2 signature
  Uint8List _createV2SignedData(List<List<int>> digests, RSAPublicKey publicKey) {
    final builder = BytesBuilder();
    
    // Digests - length-prefixed sequence
    final digestsBuilder = BytesBuilder();
    for (final digest in digests) {
      // Signature algorithm ID (0x0103 = RSA-PSS with SHA-256, 0x0101 = RSA-PKCS1-v1_5 with SHA-256)
      final digestEntry = BytesBuilder();
      _writeUint32LE(digestEntry, 0x0103); // Algorithm ID
      _writeUint32LE(digestEntry, digest.length);
      digestEntry.add(digest);
      
      _writeUint32LE(digestsBuilder, digestEntry.length);
      digestsBuilder.add(digestEntry.toBytes());
    }
    _writeUint32LE(builder, digestsBuilder.length);
    builder.add(digestsBuilder.toBytes());
    
    // Certificates - length-prefixed sequence
    final cert = _createSelfSignedCertificate(publicKey, _cachedPrivateKey!);
    final certsBuilder = BytesBuilder();
    _writeUint32LE(certsBuilder, cert.length);
    certsBuilder.add(cert);
    _writeUint32LE(builder, certsBuilder.length);
    builder.add(certsBuilder.toBytes());
    
    // Additional attributes - empty for now
    _writeUint32LE(builder, 0);
    
    return Uint8List.fromList(builder.toBytes());
  }

  /// Create signer block for v2 signature
  Uint8List _createV2SignerBlock(List<int> signedData, Uint8List signature, RSAPublicKey publicKey) {
    final builder = BytesBuilder();
    
    // Signed data (length-prefixed)
    _writeUint32LE(builder, signedData.length);
    builder.add(signedData);
    
    // Signatures - length-prefixed sequence
    final sigsBuilder = BytesBuilder();
    final sigEntry = BytesBuilder();
    _writeUint32LE(sigEntry, 0x0103); // Algorithm ID (RSA-PSS with SHA-256)
    _writeUint32LE(sigEntry, signature.length);
    sigEntry.add(signature);
    _writeUint32LE(sigsBuilder, sigEntry.length);
    sigsBuilder.add(sigEntry.toBytes());
    _writeUint32LE(builder, sigsBuilder.length);
    builder.add(sigsBuilder.toBytes());
    
    // Public key (length-prefixed)
    final pubKeyBytes = _encodePublicKey(publicKey);
    _writeUint32LE(builder, pubKeyBytes.length);
    builder.add(pubKeyBytes);
    
    return Uint8List.fromList(builder.toBytes());
  }

  /// Encode RSA public key in SubjectPublicKeyInfo format
  Uint8List _encodePublicKey(RSAPublicKey publicKey) {
    return Uint8List.fromList(_asn1SequenceFromList([
      _asn1SequenceFromList([
        _asn1ObjectIdentifier([1, 2, 840, 113549, 1, 1, 1]), // rsaEncryption
        _asn1Null(),
      ]),
      _asn1BitString(_asn1SequenceFromList([
        _asn1Integer(publicKey.modulus!),
        _asn1Integer(publicKey.exponent!),
      ])),
    ]));
  }

  /// Create ID-value pair for signing block
  Uint8List _createIdValuePair(int id, Uint8List value) {
    final builder = BytesBuilder();
    // Length of ID + value
    _writeUint64LE(builder, 4 + value.length);
    // ID (4 bytes)
    _writeUint32LE(builder, id);
    // Value
    builder.add(value);
    return Uint8List.fromList(builder.toBytes());
  }

  void _writeUint32LE(BytesBuilder builder, int value) {
    builder.addByte(value & 0xFF);
    builder.addByte((value >> 8) & 0xFF);
    builder.addByte((value >> 16) & 0xFF);
    builder.addByte((value >> 24) & 0xFF);
  }

  void _writeUint64LE(BytesBuilder builder, int value) {
    builder.addByte(value & 0xFF);
    builder.addByte((value >> 8) & 0xFF);
    builder.addByte((value >> 16) & 0xFF);
    builder.addByte((value >> 24) & 0xFF);
    builder.addByte((value >> 32) & 0xFF);
    builder.addByte((value >> 40) & 0xFF);
    builder.addByte((value >> 48) & 0xFF);
    builder.addByte((value >> 56) & 0xFF);
  }

  RSAPrivateKey? _cachedPrivateKey;

  /// Generate RSA key pair for signing
  AsymmetricKeyPair<PublicKey, PrivateKey> _generateRSAKeyPair() {
    final secureRandom = FortunaRandom();
    final seedSource = Random.secure();
    final seeds = List<int>.generate(32, (_) => seedSource.nextInt(256));
    secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));

    final keyGen = RSAKeyGenerator()
      ..init(ParametersWithRandom(
        RSAKeyGeneratorParameters(BigInt.parse('65537'), 2048, 64),
        secureRandom,
      ));

    final keyPair = keyGen.generateKeyPair();
    _cachedPrivateKey = keyPair.privateKey as RSAPrivateKey;
    return keyPair;
  }

  /// Create PKCS#7 signature block
  Uint8List _createPKCS7Signature(List<int> data, RSAPrivateKey privateKey, RSAPublicKey publicKey) {
    // Sign the data using RSA with SHA-256
    final signer = RSASigner(SHA256Digest(), '0609608648016503040201');
    signer.init(true, PrivateKeyParameter<RSAPrivateKey>(privateKey));
    
    final signature = signer.generateSignature(Uint8List.fromList(data));
    
    // Create a self-signed certificate
    final cert = _createSelfSignedCertificate(publicKey, privateKey);
    
    // Create PKCS#7 SignedData structure
    return _buildPKCS7SignedData(data, signature.bytes, cert);
  }

  /// Create a minimal self-signed X.509 certificate
  Uint8List _createSelfSignedCertificate(RSAPublicKey publicKey, RSAPrivateKey privateKey) {
    // Build a minimal X.509 certificate structure
    final tbsCertificate = _buildTBSCertificate(publicKey);
    
    // Sign the TBS certificate
    final signer = RSASigner(SHA256Digest(), '0609608648016503040201');
    signer.init(true, PrivateKeyParameter<RSAPrivateKey>(privateKey));
    final signature = signer.generateSignature(Uint8List.fromList(tbsCertificate));
    
    // Build the full certificate
    return _buildCertificate(tbsCertificate, signature.bytes);
  }

  /// Build TBS (To Be Signed) Certificate
  List<int> _buildTBSCertificate(RSAPublicKey publicKey) {
    final content = BytesBuilder();
    
    // Version (v3 = 2)
    content.add(_asn1Explicit(0, _asn1Integer(BigInt.from(2))));
    
    // Serial number
    content.add(_asn1Integer(BigInt.from(DateTime.now().millisecondsSinceEpoch)));
    
    // Signature algorithm (SHA256withRSA)
    content.add(_asn1SequenceFromList([
      _asn1ObjectIdentifier([1, 2, 840, 113549, 1, 1, 11]),
      _asn1Null(),
    ]));
    
    // Issuer (CN=Android Debug)
    content.add(_asn1SequenceFromList([
      _asn1SetFromList([
        _asn1SequenceFromList([
          _asn1ObjectIdentifier([2, 5, 4, 3]),
          _asn1UTF8String('Android Debug'),
        ]),
      ]),
    ]));
    
    // Validity
    final now = DateTime.now();
    final notAfter = now.add(const Duration(days: 10000));
    content.add(_asn1SequenceFromList([
      _asn1UTCTime(now),
      _asn1UTCTime(notAfter),
    ]));
    
    // Subject (same as issuer for self-signed)
    content.add(_asn1SequenceFromList([
      _asn1SetFromList([
        _asn1SequenceFromList([
          _asn1ObjectIdentifier([2, 5, 4, 3]),
          _asn1UTF8String('Android Debug'),
        ]),
      ]),
    ]));
    
    // Subject Public Key Info
    content.add(_asn1SequenceFromList([
      _asn1SequenceFromList([
        _asn1ObjectIdentifier([1, 2, 840, 113549, 1, 1, 1]),
        _asn1Null(),
      ]),
      _asn1BitString(_asn1SequenceFromList([
        _asn1Integer(publicKey.modulus!),
        _asn1Integer(publicKey.exponent!),
      ])),
    ]));
    
    return _asn1SequenceRaw(content.toBytes());
  }

  /// Build the full certificate
  Uint8List _buildCertificate(List<int> tbsCertificate, Uint8List signature) {
    final content = BytesBuilder();
    content.add(tbsCertificate);
    content.add(_asn1SequenceFromList([
      _asn1ObjectIdentifier([1, 2, 840, 113549, 1, 1, 11]),
      _asn1Null(),
    ]));
    content.add(_asn1BitString(signature));
    return Uint8List.fromList(_asn1SequenceRaw(content.toBytes()));
  }

  /// Build PKCS#7 SignedData structure
  Uint8List _buildPKCS7SignedData(List<int> data, Uint8List signature, Uint8List certificate) {
    // SignerInfo
    final signerInfoContent = BytesBuilder();
    signerInfoContent.add(_asn1Integer(BigInt.one)); // Version
    
    // IssuerAndSerialNumber
    final issuerAndSerial = BytesBuilder();
    issuerAndSerial.add(_asn1SequenceFromList([
      _asn1SetFromList([
        _asn1SequenceFromList([
          _asn1ObjectIdentifier([2, 5, 4, 3]),
          _asn1UTF8String('Android Debug'),
        ]),
      ]),
    ]));
    issuerAndSerial.add(_asn1Integer(BigInt.from(DateTime.now().millisecondsSinceEpoch)));
    signerInfoContent.add(_asn1SequenceRaw(issuerAndSerial.toBytes()));
    
    // DigestAlgorithm (SHA-256)
    signerInfoContent.add(_asn1SequenceFromList([
      _asn1ObjectIdentifier([2, 16, 840, 1, 101, 3, 4, 2, 1]),
      _asn1Null(),
    ]));
    
    // DigestEncryptionAlgorithm (RSA)
    signerInfoContent.add(_asn1SequenceFromList([
      _asn1ObjectIdentifier([1, 2, 840, 113549, 1, 1, 1]),
      _asn1Null(),
    ]));
    
    // EncryptedDigest
    signerInfoContent.add(_asn1OctetString(signature));
    
    final signerInfo = _asn1SequenceRaw(signerInfoContent.toBytes());
    
    // SignedData
    final signedDataContent = BytesBuilder();
    signedDataContent.add(_asn1Integer(BigInt.one)); // Version
    
    // DigestAlgorithms
    signedDataContent.add(_asn1SetFromList([
      _asn1SequenceFromList([
        _asn1ObjectIdentifier([2, 16, 840, 1, 101, 3, 4, 2, 1]),
        _asn1Null(),
      ]),
    ]));
    
    // ContentInfo
    signedDataContent.add(_asn1SequenceFromList([
      _asn1ObjectIdentifier([1, 2, 840, 113549, 1, 7, 1]),
    ]));
    
    // Certificates [0] IMPLICIT
    signedDataContent.add(_asn1Explicit(0, certificate));
    
    // SignerInfos
    signedDataContent.add(_asn1SetRaw(signerInfo));
    
    final signedData = _asn1SequenceRaw(signedDataContent.toBytes());
    
    // ContentInfo wrapper
    final wrapperContent = BytesBuilder();
    wrapperContent.add(_asn1ObjectIdentifier([1, 2, 840, 113549, 1, 7, 2])); // signedData OID
    wrapperContent.add(_asn1Explicit(0, signedData));
    
    return Uint8List.fromList(_asn1SequenceRaw(wrapperContent.toBytes()));
  }

  // ASN.1 helper methods
  List<int> _asn1Integer(BigInt value) {
    final bytes = _bigIntToBytes(value);
    return [0x02, ..._asn1Length(bytes.length), ...bytes];
  }

  List<int> _asn1SequenceRaw(List<int> content) {
    return [0x30, ..._asn1Length(content.length), ...content];
  }
  
  List<int> _asn1SequenceFromList(List<List<int>> items) {
    final content = <int>[];
    for (final item in items) {
      content.addAll(item);
    }
    return [0x30, ..._asn1Length(content.length), ...content];
  }

  List<int> _asn1SetRaw(List<int> content) {
    return [0x31, ..._asn1Length(content.length), ...content];
  }
  
  List<int> _asn1SetFromList(List<List<int>> items) {
    final content = <int>[];
    for (final item in items) {
      content.addAll(item);
    }
    return [0x31, ..._asn1Length(content.length), ...content];
  }

  List<int> _asn1ObjectIdentifier(List<int> oid) {
    final bytes = <int>[];
    bytes.add(oid[0] * 40 + oid[1]);
    for (var i = 2; i < oid.length; i++) {
      bytes.addAll(_encodeOIDComponent(oid[i]));
    }
    return [0x06, ..._asn1Length(bytes.length), ...bytes];
  }

  List<int> _encodeOIDComponent(int value) {
    if (value < 128) return [value];
    final bytes = <int>[];
    var v = value;
    bytes.add(v & 0x7f);
    v >>= 7;
    while (v > 0) {
      bytes.insert(0, (v & 0x7f) | 0x80);
      v >>= 7;
    }
    return bytes;
  }

  List<int> _asn1Null() => [0x05, 0x00];

  List<int> _asn1BitString(List<int> content) {
    return [0x03, ..._asn1Length(content.length + 1), 0x00, ...content];
  }

  List<int> _asn1OctetString(List<int> content) {
    return [0x04, ..._asn1Length(content.length), ...content];
  }

  List<int> _asn1UTF8String(String value) {
    final bytes = utf8.encode(value);
    return [0x0c, ..._asn1Length(bytes.length), ...bytes];
  }

  List<int> _asn1UTCTime(DateTime date) {
    final str = '${_pad(date.year % 100)}${_pad(date.month)}${_pad(date.day)}'
        '${_pad(date.hour)}${_pad(date.minute)}${_pad(date.second)}Z';
    final bytes = utf8.encode(str);
    return [0x17, ..._asn1Length(bytes.length), ...bytes];
  }

  String _pad(int value) => value.toString().padLeft(2, '0');

  List<int> _asn1Explicit(int tag, List<int> content) {
    return [0xa0 + tag, ..._asn1Length(content.length), ...content];
  }

  List<int> _asn1Length(int length) {
    if (length < 128) return [length];
    final bytes = <int>[];
    var len = length;
    while (len > 0) {
      bytes.insert(0, len & 0xff);
      len >>= 8;
    }
    return [0x80 + bytes.length, ...bytes];
  }

  List<int> _bigIntToBytes(BigInt value) {
    if (value == BigInt.zero) return [0];
    
    var v = value;
    final bytes = <int>[];
    final negative = v.isNegative;
    if (negative) v = -v;
    
    while (v > BigInt.zero) {
      bytes.insert(0, (v & BigInt.from(0xff)).toInt());
      v >>= 8;
    }
    
    // Add leading zero if high bit is set (to avoid being interpreted as negative)
    if (!negative && bytes.isNotEmpty && bytes[0] > 127) {
      bytes.insert(0, 0);
    }
    
    return bytes;
  }

  /// Create a debug keystore using keytool
  Future<bool> _createDebugKeystore(String path) async {
    try {
      final result = await Process.run(
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
      return result.exitCode == 0;
    } catch (e) {
      debugPrint('Keytool error: $e');
      return false;
    }
  }

  /// Get the command to connect to gadget-injected app
  String getConnectCommand(String packageName, {int port = 27042}) {
    return 'frida -H 127.0.0.1:$port -n $packageName';
  }

  /// Instructions for using gadget-injected APK
  String getUsageInstructions(String mode, {int port = 27042}) {
    switch (mode) {
      case 'listen':
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
        
      case 'script':
        return '''
SCRIPT MODE - Embedded script runs automatically

1. Install the patched APK:
   adb install -r patched.apk

2. Launch the app - script executes automatically

3. View logs:
   adb logcat -s Frida:*
''';
        
      case 'connect':
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

  /// Patch DEX file to add System.loadLibrary("frida-gadget") call
  /// This is a simplified approach that searches for common entry points
  /// and injects the library load call
  Uint8List? _patchDexToLoadGadget(Uint8List dexBytes) {
    try {
      debugPrint('Attempting DEX patching...');
      
      // DEX file structure:
      // - Magic: "dex\n035\0" or "dex\n037\0" etc.
      // - Header with offsets to various sections
      // - String IDs, Type IDs, Proto IDs, Field IDs, Method IDs
      // - Class definitions
      // - Data section with actual code
      
      // Verify DEX magic
      if (dexBytes.length < 112) {
        debugPrint('DEX too small');
        return null;
      }
      
      final magic = String.fromCharCodes(dexBytes.sublist(0, 4));
      if (magic != 'dex\n') {
        debugPrint('Invalid DEX magic: $magic');
        return null;
      }
      
      // For now, we'll use a simple approach:
      // Search for "onCreate" method references and try to find a good injection point
      // This is a placeholder - proper DEX patching requires full DEX parsing
      
      debugPrint('DEX patching not fully implemented - using ELF method as primary');
      return null;
      
      // TODO: Implement full DEX patching using dexlib2 or similar
      // For now, return null to indicate failure and fall back to other methods
    } catch (e) {
      debugPrint('DEX patching error: $e');
      return null;
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
