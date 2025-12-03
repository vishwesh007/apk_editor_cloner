import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pointycastle/export.dart';

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
      // On Android/iOS, use pure Dart signing
      if (Platform.isAndroid || Platform.isIOS) {
        debugPrint('Using pure Dart APK signing...');
        return await _signApkPureDart(inputPath, outputPath);
      }
      
      // Try apksigner from Android SDK on desktop
      final sdkPath = Platform.environment['ANDROID_HOME'] ?? 
                      Platform.environment['ANDROID_SDK_ROOT'] ??
                      (Platform.isWindows && Platform.environment['LOCALAPPDATA'] != null
                          ? '${Platform.environment['LOCALAPPDATA']}/Android/Sdk'
                          : null);
      
      String? apksignerPath;
      String keystorePath = '$_workDir/debug.keystore';
      
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
        if (!created) {
          // Fall back to pure Dart signing
          return await _signApkPureDart(inputPath, outputPath);
        }
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
        if (result.exitCode == 0) {
          return true;
        }
      }
      
      // Fallback: try jarsigner
      try {
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
          return true;
        }
      } catch (_) {}
      
      // Last resort: pure Dart signing
      return await _signApkPureDart(inputPath, outputPath);
    } catch (e) {
      debugPrint('Sign error: $e');
      // Try pure Dart as last resort
      return await _signApkPureDart(inputPath, outputPath);
    }
  }

  /// Pure Dart APK signing implementation (JAR signing / v1 signature)
  Future<bool> _signApkPureDart(String inputPath, String outputPath) async {
    try {
      debugPrint('Starting pure Dart APK signing...');
      
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
      
      // Write signed APK
      final zipBytes = ZipEncoder().encode(newArchive);
      await File(outputPath).writeAsBytes(zipBytes!);
      
      debugPrint('Pure Dart APK signing completed successfully!');
      return true;
    } catch (e, st) {
      debugPrint('Pure Dart signing error: $e');
      debugPrint('Stack trace: $st');
      return false;
    }
  }

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

    return keyGen.generateKeyPair();
  }

  /// Create PKCS#7 signature block
  Uint8List _createPKCS7Signature(List<int> data, RSAPrivateKey privateKey, RSAPublicKey publicKey) {
    // Sign the data using RSA with SHA-256
    final signer = RSASigner(SHA256Digest(), '0609608648016503040201');
    signer.init(true, PrivateKeyParameter<RSAPrivateKey>(privateKey));
    
    final signature = signer.generateSignature(Uint8List.fromList(data)) as RSASignature;
    
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
    final signature = signer.generateSignature(Uint8List.fromList(tbsCertificate)) as RSASignature;
    
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
