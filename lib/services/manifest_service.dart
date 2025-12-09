import 'dart:io';
import 'package:path/path.dart' as path;

import 'decompiled_manifest_parser.dart';
import 'manifest_patcher.dart';

/// High-level manifest handling service for APK decompilation/rebuild workflow
/// Integrates both parsing and patching capabilities
class ManifestService {
  static final ManifestService _instance = ManifestService._internal();
  factory ManifestService() => _instance;
  ManifestService._internal();

  /// Get the manifest file path from a decompiled APK directory
  String getManifestPath(String decompiledDir) {
    return path.join(decompiledDir, 'AndroidManifest.xml');
  }

  /// Check if manifest exists in decompiled directory
  Future<bool> hasManifest(String decompiledDir) async {
    final manifestPath = getManifestPath(decompiledDir);
    return File(manifestPath).exists();
  }

  /// Parse and get comprehensive manifest information
  Future<DecompiledManifestInfo?> getManifestInfo(String decompiledDir) async {
    final manifestPath = getManifestPath(decompiledDir);
    
    if (!await File(manifestPath).exists()) {
      return null;
    }

    try {
      final parser = DecompiledManifestParser();
      return await parser.parseFile(manifestPath);
    } catch (e) {
      print('Error parsing manifest: $e');
      return null;
    }
  }

  /// Get a patcher instance for the manifest
  Future<ManifestPatcher?> getPatcher(String decompiledDir) async {
    final manifestPath = getManifestPath(decompiledDir);
    
    if (!await File(manifestPath).exists()) {
      return null;
    }

    final patcher = ManifestPatcher(manifestPath);
    await patcher.load();
    return patcher;
  }

  /// Clone an APK by renaming its package
  /// This handles:
  /// - Package name in manifest
  /// - Component names (activities, services, receivers, providers)
  /// - Provider authorities
  /// - Permission references
  Future<bool> cloneApp({
    required String decompiledDir,
    required String newPackage,
    String? newVersionName,
    int? newVersionCode,
  }) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.renamePackage(newPackage);
      
      if (newVersionName != null) {
        patcher.setVersionName(newVersionName);
      }
      
      if (newVersionCode != null) {
        patcher.setVersionCode(newVersionCode);
      }

      await patcher.save();

      // Also update smali files with new package references
      await _updateSmaliPackageReferences(
        decompiledDir, 
        await _getOldPackage(decompiledDir) ?? '', 
        newPackage,
      );

      return true;
    } catch (e) {
      print('Error cloning app: $e');
      return false;
    }
  }

  /// Get the current package name from manifest
  Future<String?> _getOldPackage(String decompiledDir) async {
    final info = await getManifestInfo(decompiledDir);
    return info?.packageName;
  }

  /// Update smali files with new package references
  Future<void> _updateSmaliPackageReferences(
    String decompiledDir, 
    String oldPackage, 
    String newPackage,
  ) async {
    if (oldPackage.isEmpty || newPackage.isEmpty) return;
    
    // Convert package name to smali path format
    final oldSmaliPath = oldPackage.replaceAll('.', '/');
    final newSmaliPath = newPackage.replaceAll('.', '/');
    
    final smaliDir = Directory(path.join(decompiledDir, 'smali'));
    if (!await smaliDir.exists()) return;

    // Rename package directories if they exist
    final oldPackageDir = Directory(path.join(decompiledDir, 'smali', oldSmaliPath));
    if (await oldPackageDir.exists()) {
      final newPackageDir = path.join(decompiledDir, 'smali', newSmaliPath);
      await _ensureDirectoryExists(path.dirname(newPackageDir));
      
      // Move files to new location
      await _moveDirectory(oldPackageDir.path, newPackageDir);
    }

    // Also update smali_classes directories
    for (var i = 2; i <= 10; i++) {
      final smaliClassDir = Directory(path.join(decompiledDir, 'smali_classes$i'));
      if (await smaliClassDir.exists()) {
        final oldClassPackageDir = Directory(path.join(smaliClassDir.path, oldSmaliPath));
        if (await oldClassPackageDir.exists()) {
          final newClassPackageDir = path.join(smaliClassDir.path, newSmaliPath);
          await _ensureDirectoryExists(path.dirname(newClassPackageDir));
          await _moveDirectory(oldClassPackageDir.path, newClassPackageDir);
        }
      }
    }

    // Update references in smali files
    await _updateSmaliReferences(decompiledDir, oldSmaliPath, newSmaliPath);
  }

  /// Move directory recursively
  Future<void> _moveDirectory(String source, String destination) async {
    final sourceDir = Directory(source);
    final destDir = Directory(destination);
    
    if (!await sourceDir.exists()) return;
    
    await _ensureDirectoryExists(destination);
    
    await for (final entity in sourceDir.list(recursive: false)) {
      final newPath = path.join(destination, path.basename(entity.path));
      if (entity is File) {
        await entity.copy(newPath);
        await entity.delete();
      } else if (entity is Directory) {
        await _moveDirectory(entity.path, newPath);
      }
    }
    
    // Remove empty source directory
    if (await sourceDir.exists() && 
        await sourceDir.list().isEmpty) {
      await sourceDir.delete();
    }
  }

  /// Update package references in smali files
  Future<void> _updateSmaliReferences(
    String decompiledDir,
    String oldPath,
    String newPath,
  ) async {
    final smaliDirs = <Directory>[
      Directory(path.join(decompiledDir, 'smali')),
    ];
    
    for (var i = 2; i <= 10; i++) {
      final dir = Directory(path.join(decompiledDir, 'smali_classes$i'));
      if (await dir.exists()) {
        smaliDirs.add(dir);
      }
    }

    for (final smaliDir in smaliDirs) {
      if (!await smaliDir.exists()) continue;
      
      await for (final entity in smaliDir.list(recursive: true)) {
        if (entity is File && entity.path.endsWith('.smali')) {
          await _updateFileReferences(entity, oldPath, newPath);
        }
      }
    }
  }

  /// Update references in a single file
  Future<void> _updateFileReferences(File file, String oldPath, String newPath) async {
    try {
      var content = await file.readAsString();
      
      // Update class references (L<package>/<class>;)
      content = content.replaceAll('L$oldPath/', 'L$newPath/');
      
      // Update .field and .method references
      content = content.replaceAll('$oldPath/', '$newPath/');
      
      await file.writeAsString(content);
    } catch (e) {
      print('Error updating file ${file.path}: $e');
    }
  }

  /// Ensure directory exists
  Future<void> _ensureDirectoryExists(String dirPath) async {
    final dir = Directory(dirPath);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
  }

  /// Prepare manifest for rebuild
  /// Removes version attributes that will be provided via apktool.yml
  Future<bool> prepareForRebuild(String decompiledDir) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.removeVersions();
      patcher.removeCompileSdkInfo();
      await patcher.save();

      return true;
    } catch (e) {
      print('Error preparing manifest for rebuild: $e');
      return false;
    }
  }

  /// Make the app debuggable
  Future<bool> makeDebuggable(String decompiledDir) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.setDebuggable(true);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error making app debuggable: $e');
      return false;
    }
  }

  /// Remove debuggable flag
  Future<bool> removeDebuggable(String decompiledDir) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.removeDebuggable();
      await patcher.save();

      return true;
    } catch (e) {
      print('Error removing debuggable flag: $e');
      return false;
    }
  }

  /// Add a permission to the manifest
  Future<bool> addPermission(String decompiledDir, String permission) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.addPermission(permission);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error adding permission: $e');
      return false;
    }
  }

  /// Remove a permission from the manifest
  Future<bool> removePermission(String decompiledDir, String permission) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.removePermission(permission);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error removing permission: $e');
      return false;
    }
  }

  /// Update version information
  Future<bool> updateVersion({
    required String decompiledDir,
    String? versionName,
    int? versionCode,
  }) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      if (versionName != null) {
        patcher.setVersionName(versionName);
      }
      
      if (versionCode != null) {
        patcher.setVersionCode(versionCode);
      }

      await patcher.save();

      return true;
    } catch (e) {
      print('Error updating version: $e');
      return false;
    }
  }

  /// Update SDK versions
  Future<bool> updateSdkVersions({
    required String decompiledDir,
    int? minSdkVersion,
    int? targetSdkVersion,
  }) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      if (minSdkVersion != null) {
        patcher.setMinSdkVersion(minSdkVersion);
      }
      
      if (targetSdkVersion != null) {
        patcher.setTargetSdkVersion(targetSdkVersion);
      }

      await patcher.save();

      return true;
    } catch (e) {
      print('Error updating SDK versions: $e');
      return false;
    }
  }

  /// Disable backup
  Future<bool> disableBackup(String decompiledDir) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.setAllowBackup(false);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error disabling backup: $e');
      return false;
    }
  }

  /// Enable cleartext traffic (http)
  Future<bool> enableCleartextTraffic(String decompiledDir) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.setUsesCleartextTraffic(true);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error enabling cleartext traffic: $e');
      return false;
    }
  }

  /// Set a component's exported attribute
  Future<bool> setComponentExported({
    required String decompiledDir,
    required String componentName,
    required bool exported,
  }) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.setComponentExported(componentName, exported);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error setting component exported: $e');
      return false;
    }
  }

  /// Set a component's enabled attribute
  Future<bool> setComponentEnabled({
    required String decompiledDir,
    required String componentName,
    required bool enabled,
  }) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.setComponentEnabled(componentName, enabled);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error setting component enabled: $e');
      return false;
    }
  }

  /// Remove a component from the manifest
  Future<bool> removeComponent({
    required String decompiledDir,
    required String componentName,
  }) async {
    try {
      final patcher = await getPatcher(decompiledDir);
      if (patcher == null) return false;

      patcher.removeComponent(componentName);
      await patcher.save();

      return true;
    } catch (e) {
      print('Error removing component: $e');
      return false;
    }
  }

  /// Get the raw manifest XML content
  Future<String?> getRawManifest(String decompiledDir) async {
    final manifestPath = getManifestPath(decompiledDir);
    final file = File(manifestPath);
    
    if (!await file.exists()) {
      return null;
    }

    return file.readAsString();
  }

  /// Write raw manifest XML content
  Future<bool> writeRawManifest(String decompiledDir, String content) async {
    try {
      final manifestPath = getManifestPath(decompiledDir);
      final file = File(manifestPath);
      await file.writeAsString(content);
      return true;
    } catch (e) {
      print('Error writing manifest: $e');
      return false;
    }
  }

  /// Backup the manifest file
  Future<String?> backupManifest(String decompiledDir) async {
    try {
      final manifestPath = getManifestPath(decompiledDir);
      final backupPath = '$manifestPath.backup';
      
      final file = File(manifestPath);
      if (!await file.exists()) return null;
      
      await file.copy(backupPath);
      return backupPath;
    } catch (e) {
      print('Error backing up manifest: $e');
      return null;
    }
  }

  /// Restore manifest from backup
  Future<bool> restoreManifest(String decompiledDir) async {
    try {
      final manifestPath = getManifestPath(decompiledDir);
      final backupPath = '$manifestPath.backup';
      
      final backupFile = File(backupPath);
      if (!await backupFile.exists()) return false;
      
      await backupFile.copy(manifestPath);
      return true;
    } catch (e) {
      print('Error restoring manifest: $e');
      return false;
    }
  }

  /// Validate manifest structure
  Future<ManifestValidationResult> validateManifest(String decompiledDir) async {
    final issues = <String>[];
    final warnings = <String>[];
    
    try {
      final info = await getManifestInfo(decompiledDir);
      if (info == null) {
        return ManifestValidationResult(
          isValid: false,
          issues: ['Manifest file not found or could not be parsed'],
          warnings: [],
        );
      }

      // Check package name
      if (info.packageName.isEmpty) {
        issues.add('Package name is missing');
      } else if (!_isValidPackageName(info.packageName)) {
        issues.add('Package name "${info.packageName}" is invalid');
      }

      // Check SDK versions
      if (info.minSdkVersion < 1) {
        issues.add('Invalid minSdkVersion: ${info.minSdkVersion}');
      }
      
      if (info.targetSdkVersion < info.minSdkVersion) {
        issues.add('targetSdkVersion (${info.targetSdkVersion}) is less than minSdkVersion (${info.minSdkVersion})');
      }

      // Warnings for best practices
      if (info.debuggable) {
        warnings.add('App is debuggable - remove before release');
      }

      if (info.application?.allowBackup == true) {
        warnings.add('Backup is enabled - consider disabling for sensitive apps');
      }

      // Check for exported components without intent filters
      for (final activity in info.activities) {
        if (activity.exported == true && activity.intentFilters.isEmpty) {
          warnings.add('Activity ${activity.shortName} is exported without intent filters');
        }
      }

      return ManifestValidationResult(
        isValid: issues.isEmpty,
        issues: issues,
        warnings: warnings,
      );
    } catch (e) {
      return ManifestValidationResult(
        isValid: false,
        issues: ['Error validating manifest: $e'],
        warnings: [],
      );
    }
  }

  bool _isValidPackageName(String name) {
    // Package name should be at least two parts separated by dots
    final parts = name.split('.');
    if (parts.length < 2) return false;
    
    // Each part should be a valid Java identifier
    for (final part in parts) {
      if (part.isEmpty) return false;
      if (!RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$').hasMatch(part)) {
        return false;
      }
    }
    
    return true;
  }
}

/// Result of manifest validation
class ManifestValidationResult {
  final bool isValid;
  final List<String> issues;
  final List<String> warnings;

  ManifestValidationResult({
    required this.isValid,
    required this.issues,
    required this.warnings,
  });

  bool get hasWarnings => warnings.isNotEmpty;
  bool get hasIssues => issues.isNotEmpty;
}
