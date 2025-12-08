# APK Signing Guide

## Overview

The Droid Analyst APK Editor now includes comprehensive APK signing capabilities using the official Android `apksig` library. This guide explains how to use the signing features and understand different signature schemes.

## Features

### Supported Signature Schemes

1. **APK Signature Scheme v1 (JAR signing)**
   - Traditional ZIP-based signing
   - Compatible with all Android versions
   - Signs individual files in the APK

2. **APK Signature Scheme v2**
   - Whole-file signature
   - Faster installation and verification
   - Required for Android 7.0+ (API 24+)
   - More secure than v1

3. **APK Signature Scheme v3**
   - Supports key rotation
   - Android 9.0+ (API 28+)
   - Allows changing signing keys while maintaining app identity

4. **APK Signature Scheme v4**
   - Streaming signature
   - Android 11+ (API 30+)
   - Optimized for incremental APK delivery

## Usage

### 1. Signing an APK with Test Key

The simplest way to sign an APK for development/testing:

```dart
import 'package:droid_analyst/services/apk_tool_service.dart';

final apkToolService = ApkToolService();

// Sign an APK with the built-in test key
final success = await apkToolService.signApkWithTestKey(
  inputApk: '/path/to/unsigned.apk',
  outputApk: '/path/to/signed.apk',
  minSdkVersion: 21, // Minimum SDK version
);

if (success) {
  print('APK signed successfully!');
} else {
  print('Signing failed');
}
```

### 2. Verifying APK Signature

Check if an APK is properly signed:

```dart
final signatureInfo = await apkToolService.verifyApkSignature(
  '/path/to/app.apk'
);

if (signatureInfo != null) {
  print('Valid: ${signatureInfo.isValid}');
  print('Summary: ${signatureInfo.summary}');
  print('Has modern signature: ${signatureInfo.hasModernSignature}');
  
  if (signatureInfo.v1SchemeSignerName != null) {
    print('v1 Signer: ${signatureInfo.v1SchemeSignerName}');
  }
  
  if (signatureInfo.v2Verified) {
    print('v2 signature verified');
  }
  
  if (signatureInfo.errors.isNotEmpty) {
    print('Errors: ${signatureInfo.errors}');
  }
}
```

### 3. Complete Build and Sign Workflow

Decompile, modify, rebuild, and sign an APK:

```dart
final apkToolService = ApkToolService();

// 1. Decompile
final decompileSuccess = await apkToolService.decodeApk(
  apkPath: '/path/to/original.apk',
  outputDir: '/path/to/decompiled',
  decodeSources: true,
  decodeResources: true,
);

if (!decompileSuccess) {
  print('Decompilation failed');
  return;
}

// 2. Make your modifications to the decompiled files
// ... edit smali, manifest, resources, etc.

// 3. Rebuild (unsigned)
final buildSuccess = await apkToolService.buildApk(
  sourceDir: '/path/to/decompiled',
  outputApk: '/path/to/rebuilt_unsigned.apk',
  signApk: false, // Don't sign yet
);

if (!buildSuccess) {
  print('Build failed');
  return;
}

// 4. Sign the rebuilt APK
final signSuccess = await apkToolService.signApkWithTestKey(
  inputApk: '/path/to/rebuilt_unsigned.apk',
  outputApk: '/path/to/rebuilt_signed.apk',
  minSdkVersion: 21,
);

if (signSuccess) {
  print('APK rebuilt and signed successfully!');
}
```

## Signature Information

### ApkSignatureInfo Model

```dart
class ApkSignatureInfo {
  final bool isValid;                  // Overall validity
  final String? v1SchemeSignerName;    // v1 signer name (usually "CERT")
  final bool v2Verified;               // v2 scheme verified
  final bool v3Verified;               // v3 scheme verified
  final bool v4Verified;               // v4 scheme verified
  final List<String> errors;           // Verification errors
  final List<String> warnings;         // Verification warnings
  
  String get summary;                  // Human-readable summary
  bool get hasModernSignature;         // True if v2+ is used
}
```

## Native Implementation

### Kotlin Service (ApkSignerService)

The native implementation provides several signing methods:

1. **signApk** - Sign with custom configuration
2. **signApkWithTestKey** - Sign with built-in test key
3. **verifyApkSignature** - Verify existing signature
4. **loadKeyFromKeyStore** - Load custom keys from JKS/PKCS12/BKS
5. **generateTemporaryKey** - Generate ephemeral signing key

### Test Keys

The app includes built-in test keys in `android/app/src/main/assets/`:
- `testkey.pk8` - Private key (PKCS8 format)
- `testkey.x509.pem` - Certificate (PEM format)

These keys are:
- **Self-signed** for development only
- **Valid for 30 years**
- **NOT for production use**
- **Subject**: CN=Droid Analyst Debug, O=Droid Analyst, C=US

## Security Considerations

### ⚠️ Development vs Production

1. **Test Key (Development)**
   - ✅ Good for: Testing, debugging, local development
   - ❌ Never use for: Production apps, Play Store releases
   - The test key is embedded in the app and is NOT secure

2. **Production Signing**
   - Must use your own private key
   - Keep private key secure and never share
   - Use key rotation (v3 scheme) to update keys safely
   - Store production keys in secure key management system

### Best Practices

1. **Always use v2+ signatures** for modern Android versions
   - Better security
   - Faster verification
   - Required for Android 7.0+

2. **Keep private keys secure**
   - Never commit to version control
   - Use hardware security modules for production
   - Implement key rotation strategy

3. **Verify signatures before distribution**
   - Always verify after signing
   - Check for errors and warnings
   - Test installation on real devices

4. **Minimum SDK Version**
   - Set appropriate minSdkVersion for your target devices
   - v1 scheme: All Android versions
   - v2 scheme: Android 7.0+ (API 24+)
   - v3 scheme: Android 9.0+ (API 28+)
   - v4 scheme: Android 11+ (API 30+)

## Troubleshooting

### Common Issues

1. **"Signing failed: Invalid key"**
   - Check that test keys exist in assets
   - Ensure key files are not corrupted
   - Try regenerating test keys

2. **"Signature verification failed"**
   - APK may be corrupted during build
   - Check for ZIP alignment issues
   - Verify APK structure is valid

3. **"v2 signature not found"**
   - minSdkVersion might be too low
   - Ensure v2 signing is enabled
   - Check APK was signed with v2 scheme

4. **"Installation failed"**
   - Signature mismatch with existing app
   - Try uninstalling existing app first
   - Check package name conflicts

### Debug Tips

1. **Enable verbose logging**
   ```kotlin
   android.util.Log.i("ApkSigner", "Detailed message")
   ```

2. **Check signature details**
   ```dart
   final info = await apkToolService.verifyApkSignature(apkPath);
   print('Errors: ${info.errors}');
   print('Warnings: ${info.warnings}');
   ```

3. **Use apksigner tool**
   ```bash
   apksigner verify --verbose my-app.apk
   ```

## Advanced Usage

### Custom Key Configuration

For custom signing (requires native Kotlin implementation):

```kotlin
val keyConfig = ApkSignerService.SigningConfig(
    privateKey = myPrivateKey,
    certificate = myCertificate,
    v1SigningEnabled = true,
    v2SigningEnabled = true,
    v3SigningEnabled = false,
    v4SigningEnabled = false,
    createdBy = "My Company"
)

apkSignerService.signApk(
    inputApk = File("/path/to/unsigned.apk"),
    outputApk = File("/path/to/signed.apk"),
    config = keyConfig,
    minSdkVersion = 21
)
```

### Loading Keys from KeyStore

```kotlin
val signingConfig = apkSignerService.loadKeyFromKeyStore(
    keyStorePath = "/path/to/keystore.jks",
    keyStoreType = "JKS",
    storePassword = "store_password".toCharArray(),
    alias = "my_key_alias",
    keyPassword = "key_password".toCharArray()
)
```

## References

- [Android APK Signature Schemes](https://source.android.com/security/apksigning)
- [apksig Library Documentation](https://developer.android.com/studio/command-line/apksigner)
- [APK Signature Scheme v2](https://source.android.com/security/apksigning/v2)
- [APK Signature Scheme v3](https://source.android.com/security/apksigning/v3)

## License

The signing implementation uses:
- **apksig** - Apache License 2.0 (Google)
- **BouncyCastle** - MIT License
- Test keys are for development only

---

**Note**: Always use secure, production-grade signing for apps distributed to end users. The built-in test keys are for development and testing purposes only.
