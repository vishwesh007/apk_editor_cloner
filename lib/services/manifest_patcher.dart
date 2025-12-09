/// ManifestPatcher - Edit decompiled AndroidManifest.xml files
/// 
/// Based on APKRepacker's ResXmlPatcher patterns for modifying decompiled manifests.
/// Supports:
/// - Package renaming
/// - Version code/name modification
/// - Permission management
/// - Debuggable flag control
/// - Application attribute modification
/// - Prepare manifest for rebuild
library;

import 'dart:io';
import 'package:xml/xml.dart';

import 'decompiled_manifest_parser.dart';

/// Patcher for editing decompiled AndroidManifest.xml files
/// Follows APKRepacker's ResXmlPatcher approach for manifest modifications
class ManifestPatcher {
  final String manifestPath;
  XmlDocument? _document;
  bool _modified = false;
  
  static const String androidNs = 'http://schemas.android.com/apk/res/android';
  
  /// Constructor - use load() to initialize
  ManifestPatcher(this.manifestPath);
  
  /// Private constructor with document
  ManifestPatcher._(this.manifestPath, this._document);
  
  /// Load the manifest from file
  Future<void> load() async {
    final file = File(manifestPath);
    if (!await file.exists()) {
      throw FileSystemException('Manifest not found', manifestPath);
    }
    
    final content = await file.readAsString();
    _document = XmlDocument.parse(content);
  }
  
  /// Load manifest from file path (factory method)
  static Future<ManifestPatcher> fromFile(String path) async {
    final patcher = ManifestPatcher(path);
    await patcher.load();
    return patcher;
  }
  
  /// Create patcher from already parsed document
  static ManifestPatcher fromDocument(String path, XmlDocument document) {
    return ManifestPatcher._(path, document);
  }
  
  /// Get the current document
  XmlDocument get document {
    if (_document == null) {
      throw StateError('Document not loaded. Call load() first.');
    }
    return _document!;
  }
  
  /// Check if modifications were made
  bool get isModified => _modified;
  
  /// Get manifest element
  XmlElement get manifestElement {
    final manifest = document.rootElement;
    if (manifest.name.local != 'manifest') {
      throw FormatException('Root element is not <manifest>');
    }
    return manifest;
  }
  
  /// Get application element
  XmlElement? get applicationElement {
    return manifestElement.findElements('application').firstOrNull;
  }
  
  // ============================================================
  // Helper methods for android: namespace attributes
  // xml package doesn't support getAttributeNs, so we use getAttribute with prefix
  // ============================================================
  
  /// Get android: namespaced attribute value
  String? _getAndroidAttr(XmlElement element, String name) {
    return element.getAttribute('android:$name');
  }
  
  /// Set android: namespaced attribute
  void _setAndroidAttr(XmlElement element, String name, String value) {
    element.setAttribute('android:$name', value);
    _modified = true;
  }
  
  /// Remove android: namespaced attribute
  void _removeAndroidAttr(XmlElement element, String name) {
    final attrName = 'android:$name';
    final attr = element.attributes.where((a) => a.name.toString() == attrName).firstOrNull;
    if (attr != null) {
      element.attributes.remove(attr);
      _modified = true;
    }
  }
  
  /// Check if android: namespaced attribute exists
  bool _hasAndroidAttr(XmlElement element, String name) {
    return element.getAttribute('android:$name') != null;
  }
  
  // ============================================================
  // Package Management - Based on ResXmlPatcher.renameManifestPackage()
  // ============================================================
  
  /// Get current package name
  String? get packageName => manifestElement.getAttribute('package');
  
  /// Rename package throughout manifest
  /// Based on APKRepacker's ResXmlPatcher.renameManifestPackage()
  void renamePackage(String newPackage) {
    final oldPackage = packageName;
    if (oldPackage == null) return;
    
    // Update manifest package attribute
    manifestElement.setAttribute('package', newPackage);
    _modified = true;
    
    // Update all component names that use the old package
    final app = applicationElement;
    if (app == null) return;
    
    // Update activities
    for (final activity in app.findElements('activity')) {
      _updateComponentName(activity, oldPackage, newPackage);
      _updateIntentFilters(activity, oldPackage, newPackage);
    }
    
    // Update activity-alias
    for (final alias in app.findElements('activity-alias')) {
      _updateComponentName(alias, oldPackage, newPackage);
      // Also update targetActivity
      final target = _getAndroidAttr(alias, 'targetActivity');
      if (target != null && target.startsWith('$oldPackage.')) {
        _setAndroidAttr(alias, 'targetActivity', 
            target.replaceFirst('$oldPackage.', '$newPackage.'));
      }
    }
    
    // Update services
    for (final service in app.findElements('service')) {
      _updateComponentName(service, oldPackage, newPackage);
      _updateIntentFilters(service, oldPackage, newPackage);
    }
    
    // Update receivers
    for (final receiver in app.findElements('receiver')) {
      _updateComponentName(receiver, oldPackage, newPackage);
      _updateIntentFilters(receiver, oldPackage, newPackage);
    }
    
    // Update providers
    for (final provider in app.findElements('provider')) {
      _updateComponentName(provider, oldPackage, newPackage);
      // Also update authorities
      final authorities = _getAndroidAttr(provider, 'authorities');
      if (authorities != null && authorities.contains(oldPackage)) {
        _setAndroidAttr(provider, 'authorities', 
            authorities.replaceAll(oldPackage, newPackage));
      }
    }
    
    // Update permission names if they use package
    for (final permission in manifestElement.findElements('permission')) {
      final name = _getAndroidAttr(permission, 'name');
      if (name != null && name.startsWith('$oldPackage.')) {
        _setAndroidAttr(permission, 'name', 
            name.replaceFirst('$oldPackage.', '$newPackage.'));
      }
    }
    
    // Update uses-permission for custom permissions
    for (final usesPerm in manifestElement.findElements('uses-permission')) {
      final name = _getAndroidAttr(usesPerm, 'name');
      if (name != null && name.startsWith('$oldPackage.')) {
        _setAndroidAttr(usesPerm, 'name', 
            name.replaceFirst('$oldPackage.', '$newPackage.'));
      }
    }
  }
  
  void _updateComponentName(XmlElement element, String oldPkg, String newPkg) {
    final name = _getAndroidAttr(element, 'name');
    if (name == null) return;
    
    if (name.startsWith('$oldPkg.')) {
      _setAndroidAttr(element, 'name', 
          name.replaceFirst('$oldPkg.', '$newPkg.'));
    } else if (name.startsWith('.')) {
      // Relative name, doesn't need changing
    }
  }
  
  void _updateIntentFilters(XmlElement component, String oldPkg, String newPkg) {
    for (final filter in component.findElements('intent-filter')) {
      // Update action names
      for (final action in filter.findElements('action')) {
        final name = _getAndroidAttr(action, 'name');
        if (name != null && name.contains(oldPkg)) {
          _setAndroidAttr(action, 'name', name.replaceAll(oldPkg, newPkg));
        }
      }
      // Update category names
      for (final category in filter.findElements('category')) {
        final name = _getAndroidAttr(category, 'name');
        if (name != null && name.contains(oldPkg)) {
          _setAndroidAttr(category, 'name', name.replaceAll(oldPkg, newPkg));
        }
      }
    }
  }
  
  // ============================================================
  // Version Management - Based on ResXmlPatcher.removeManifestVersions()
  // ============================================================
  
  /// Get current version code
  int? get versionCode {
    final code = _getAndroidAttr(manifestElement, 'versionCode');
    return code != null ? int.tryParse(code) : null;
  }
  
  /// Get current version name
  String? get versionName => _getAndroidAttr(manifestElement, 'versionName');
  
  /// Set version code
  void setVersionCode(int code) {
    _setAndroidAttr(manifestElement, 'versionCode', code.toString());
  }
  
  /// Set version name
  void setVersionName(String name) {
    _setAndroidAttr(manifestElement, 'versionName', name);
  }
  
  /// Remove version attributes (useful for rebuild)
  /// Based on APKRepacker's ResXmlPatcher.removeManifestVersions()
  void removeVersions() {
    _removeAndroidAttr(manifestElement, 'versionCode');
    _removeAndroidAttr(manifestElement, 'versionName');
  }
  
  /// Remove compile SDK info attributes (for rebuild compatibility)
  void removeCompileSdkInfo() {
    _removeAndroidAttr(manifestElement, 'compileSdkVersion');
    _removeAndroidAttr(manifestElement, 'compileSdkVersionCodename');
    // Also remove platformBuildVersion attributes if present
    final attrs = manifestElement.attributes
        .where((a) => a.name.toString().contains('platformBuildVersion'))
        .toList();
    for (final attr in attrs) {
      manifestElement.attributes.remove(attr);
      _modified = true;
    }
  }
  
  // ============================================================
  // Permission Management
  // ============================================================
  
  /// Get all used permissions
  List<String> getUsedPermissions() {
    return manifestElement.findElements('uses-permission')
        .map((e) => _getAndroidAttr(e, 'name'))
        .whereType<String>()
        .toList();
  }
  
  /// Add a uses-permission
  void addPermission(String permission) {
    // Check if already exists
    final existing = manifestElement.findElements('uses-permission')
        .where((e) => _getAndroidAttr(e, 'name') == permission);
    if (existing.isNotEmpty) return;
    
    final permElement = XmlElement(XmlName('uses-permission'));
    permElement.setAttribute('android:name', permission);
    
    // Insert after last uses-permission or after manifest attributes
    final lastPerm = manifestElement.findElements('uses-permission').lastOrNull;
    if (lastPerm != null) {
      final index = manifestElement.children.indexOf(lastPerm);
      manifestElement.children.insert(index + 1, permElement);
    } else {
      // Insert at beginning
      manifestElement.children.insert(0, permElement);
    }
    _modified = true;
  }
  
  /// Remove a uses-permission
  void removePermission(String permission) {
    final toRemove = manifestElement.findElements('uses-permission')
        .where((e) => _getAndroidAttr(e, 'name') == permission)
        .toList();
    
    for (final elem in toRemove) {
      elem.parent?.children.remove(elem);
      _modified = true;
    }
  }
  
  /// Add multiple permissions at once
  void addPermissions(List<String> permissions) {
    for (final perm in permissions) {
      addPermission(perm);
    }
  }
  
  // ============================================================
  // Application Attributes
  // ============================================================
  
  /// Check if app is debuggable
  bool get isDebuggable {
    final app = applicationElement;
    if (app == null) return false;
    return _getAndroidAttr(app, 'debuggable') == 'true';
  }
  
  /// Set debuggable attribute
  void setDebuggable(bool debuggable) {
    final app = applicationElement;
    if (app == null) return;
    _setAndroidAttr(app, 'debuggable', debuggable.toString());
  }
  
  /// Remove debuggable attribute (let system decide)
  void removeDebuggable() {
    final app = applicationElement;
    if (app == null) return;
    _removeAndroidAttr(app, 'debuggable');
  }
  
  /// Get application label
  String? get applicationLabel {
    final app = applicationElement;
    if (app == null) return null;
    return _getAndroidAttr(app, 'label');
  }
  
  /// Set application label
  void setApplicationLabel(String label) {
    final app = applicationElement;
    if (app == null) return;
    _setAndroidAttr(app, 'label', label);
  }
  
  /// Check if app allows backup
  bool get allowBackup {
    final app = applicationElement;
    if (app == null) return true; // default is true
    final value = _getAndroidAttr(app, 'allowBackup');
    return value != 'false';
  }
  
  /// Set allow backup attribute
  void setAllowBackup(bool allow) {
    final app = applicationElement;
    if (app == null) return;
    _setAndroidAttr(app, 'allowBackup', allow.toString());
  }
  
  /// Check if app uses cleartext traffic
  bool get usesCleartextTraffic {
    final app = applicationElement;
    if (app == null) return false;
    return _getAndroidAttr(app, 'usesCleartextTraffic') == 'true';
  }
  
  /// Set cleartext traffic permission
  void setUsesCleartextTraffic(bool allow) {
    final app = applicationElement;
    if (app == null) return;
    _setAndroidAttr(app, 'usesCleartextTraffic', allow.toString());
  }
  
  /// Check if network security config is set
  String? get networkSecurityConfig {
    final app = applicationElement;
    if (app == null) return null;
    return _getAndroidAttr(app, 'networkSecurityConfig');
  }
  
  /// Set network security config resource
  void setNetworkSecurityConfig(String configRef) {
    final app = applicationElement;
    if (app == null) return;
    _setAndroidAttr(app, 'networkSecurityConfig', configRef);
  }
  
  // ============================================================
  // Component Management
  // ============================================================
  
  /// Add an activity
  void addActivity({
    required String name,
    bool exported = false,
    String? label,
    String? theme,
    List<Map<String, dynamic>>? intentFilters,
  }) {
    final app = applicationElement;
    if (app == null) return;
    
    final activity = XmlElement(XmlName('activity'));
    activity.setAttribute('android:name', name);
    activity.setAttribute('android:exported', exported.toString());
    if (label != null) activity.setAttribute('android:label', label);
    if (theme != null) activity.setAttribute('android:theme', theme);
    
    if (intentFilters != null) {
      for (final filter in intentFilters) {
        final filterElement = _createIntentFilter(filter);
        activity.children.add(filterElement);
      }
    }
    
    app.children.add(activity);
    _modified = true;
  }
  
  /// Add a service
  void addService({
    required String name,
    bool exported = false,
    bool enabled = true,
    String? permission,
  }) {
    final app = applicationElement;
    if (app == null) return;
    
    final service = XmlElement(XmlName('service'));
    service.setAttribute('android:name', name);
    service.setAttribute('android:exported', exported.toString());
    service.setAttribute('android:enabled', enabled.toString());
    if (permission != null) {
      service.setAttribute('android:permission', permission);
    }
    
    app.children.add(service);
    _modified = true;
  }
  
  /// Add a broadcast receiver
  void addReceiver({
    required String name,
    bool exported = false,
    List<Map<String, dynamic>>? intentFilters,
  }) {
    final app = applicationElement;
    if (app == null) return;
    
    final receiver = XmlElement(XmlName('receiver'));
    receiver.setAttribute('android:name', name);
    receiver.setAttribute('android:exported', exported.toString());
    
    if (intentFilters != null) {
      for (final filter in intentFilters) {
        final filterElement = _createIntentFilter(filter);
        receiver.children.add(filterElement);
      }
    }
    
    app.children.add(receiver);
    _modified = true;
  }
  
  XmlElement _createIntentFilter(Map<String, dynamic> filter) {
    final element = XmlElement(XmlName('intent-filter'));
    
    // Add actions
    final actions = filter['actions'] as List<String>? ?? [];
    for (final action in actions) {
      final actionElement = XmlElement(XmlName('action'));
      actionElement.setAttribute('android:name', action);
      element.children.add(actionElement);
    }
    
    // Add categories
    final categories = filter['categories'] as List<String>? ?? [];
    for (final category in categories) {
      final categoryElement = XmlElement(XmlName('category'));
      categoryElement.setAttribute('android:name', category);
      element.children.add(categoryElement);
    }
    
    // Add data
    final data = filter['data'] as Map<String, String>?;
    if (data != null) {
      final dataElement = XmlElement(XmlName('data'));
      data.forEach((key, value) {
        dataElement.setAttribute('android:$key', value);
      });
      element.children.add(dataElement);
    }
    
    return element;
  }
  
  /// Remove a component by name
  void removeComponent(String name) {
    final app = applicationElement;
    if (app == null) return;
    
    final toRemove = <XmlElement>[];
    
    for (final type in ['activity', 'activity-alias', 'service', 'receiver', 'provider']) {
      for (final element in app.findElements(type)) {
        final componentName = _getAndroidAttr(element, 'name');
        if (componentName == name || componentName?.endsWith('.$name') == true) {
          toRemove.add(element);
        }
      }
    }
    
    for (final elem in toRemove) {
      elem.parent?.children.remove(elem);
      _modified = true;
    }
  }
  
  /// Set a component's exported attribute
  void setComponentExported(String name, bool exported) {
    final app = applicationElement;
    if (app == null) return;
    
    for (final type in ['activity', 'activity-alias', 'service', 'receiver', 'provider']) {
      for (final element in app.findElements(type)) {
        final componentName = _getAndroidAttr(element, 'name');
        if (componentName == name || componentName?.endsWith('.$name') == true) {
          _setAndroidAttr(element, 'exported', exported.toString());
          return;
        }
      }
    }
  }
  
  /// Set a component's enabled attribute
  void setComponentEnabled(String name, bool enabled) {
    final app = applicationElement;
    if (app == null) return;
    
    for (final type in ['activity', 'activity-alias', 'service', 'receiver', 'provider']) {
      for (final element in app.findElements(type)) {
        final componentName = _getAndroidAttr(element, 'name');
        if (componentName == name || componentName?.endsWith('.$name') == true) {
          _setAndroidAttr(element, 'enabled', enabled.toString());
          return;
        }
      }
    }
  }
  
  // ============================================================
  // Meta-data Management
  // ============================================================
  
  /// Add or update meta-data in application
  void setMetaData(String name, String value) {
    final app = applicationElement;
    if (app == null) return;
    
    // Find existing meta-data
    final existing = app.findElements('meta-data')
        .where((e) => _getAndroidAttr(e, 'name') == name)
        .firstOrNull;
    
    if (existing != null) {
      _setAndroidAttr(existing, 'value', value);
    } else {
      final metaData = XmlElement(XmlName('meta-data'));
      metaData.setAttribute('android:name', name);
      metaData.setAttribute('android:value', value);
      
      // Insert at beginning of application
      app.children.insert(0, metaData);
      _modified = true;
    }
  }
  
  /// Remove meta-data from application
  void removeMetaData(String name) {
    final app = applicationElement;
    if (app == null) return;
    
    final toRemove = app.findElements('meta-data')
        .where((e) => _getAndroidAttr(e, 'name') == name)
        .toList();
    
    for (final elem in toRemove) {
      elem.parent?.children.remove(elem);
      _modified = true;
    }
  }
  
  // ============================================================
  // SDK Version Management
  // ============================================================
  
  /// Get uses-sdk element
  XmlElement? get usesSdkElement {
    return manifestElement.findElements('uses-sdk').firstOrNull;
  }
  
  /// Get min SDK version
  int? get minSdkVersion {
    final sdk = usesSdkElement;
    if (sdk == null) return null;
    final value = _getAndroidAttr(sdk, 'minSdkVersion');
    return value != null ? int.tryParse(value) : null;
  }
  
  /// Get target SDK version
  int? get targetSdkVersion {
    final sdk = usesSdkElement;
    if (sdk == null) return null;
    final value = _getAndroidAttr(sdk, 'targetSdkVersion');
    return value != null ? int.tryParse(value) : null;
  }
  
  /// Set min SDK version
  void setMinSdkVersion(int version) {
    var sdk = usesSdkElement;
    if (sdk == null) {
      sdk = XmlElement(XmlName('uses-sdk'));
      manifestElement.children.insert(0, sdk);
    }
    _setAndroidAttr(sdk, 'minSdkVersion', version.toString());
  }
  
  /// Set target SDK version
  void setTargetSdkVersion(int version) {
    var sdk = usesSdkElement;
    if (sdk == null) {
      sdk = XmlElement(XmlName('uses-sdk'));
      manifestElement.children.insert(0, sdk);
    }
    _setAndroidAttr(sdk, 'targetSdkVersion', version.toString());
  }
  
  // ============================================================
  // Prepare for Rebuild
  // ============================================================
  
  /// Prepare manifest for APK rebuild
  /// Applies common modifications needed for building a working APK
  void prepareForRebuild({
    bool makeDebuggable = false,
    bool allowCleartextTraffic = false,
    bool removeVersionAttributes = false,
  }) {
    if (makeDebuggable) {
      setDebuggable(true);
    }
    
    if (allowCleartextTraffic) {
      setUsesCleartextTraffic(true);
    }
    
    if (removeVersionAttributes) {
      removeVersions();
    }
    
    // Ensure exported attribute is set on all components (required for Android 12+)
    _ensureExportedAttributes();
  }
  
  /// Ensure all components have exported attribute (Android 12 requirement)
  void _ensureExportedAttributes() {
    final app = applicationElement;
    if (app == null) return;
    
    for (final type in ['activity', 'service', 'receiver']) {
      for (final element in app.findElements(type)) {
        if (!_hasAndroidAttr(element, 'exported')) {
          // Check if has intent-filter
          final hasIntentFilter = element.findElements('intent-filter').isNotEmpty;
          // If has intent filter, default to false for security
          // User should explicitly set to true if needed
          _setAndroidAttr(element, 'exported', hasIntentFilter ? 'false' : 'false');
        }
      }
    }
  }
  
  // ============================================================
  // Frida/Gadget Injection Support
  // ============================================================
  
  /// Prepare manifest for Frida gadget injection
  void prepareForFridaInjection() {
    // Make debuggable
    setDebuggable(true);
    
    // Allow cleartext for Frida communication
    setUsesCleartextTraffic(true);
    
    // Add internet permission if not present
    addPermission('android.permission.INTERNET');
    
    // Some gadgets need these
    addPermission('android.permission.ACCESS_NETWORK_STATE');
  }
  
  /// Get or create native library extraction setting
  void setExtractNativeLibs(bool extract) {
    final app = applicationElement;
    if (app == null) return;
    _setAndroidAttr(app, 'extractNativeLibs', extract.toString());
  }
  
  // ============================================================
  // Save Methods
  // ============================================================
  
  /// Save changes to original file
  Future<void> save() async {
    if (!_modified) return;
    await saveAs(manifestPath);
    _modified = false;
  }
  
  /// Save to a new path
  Future<void> saveAs(String path) async {
    final file = File(path);
    await file.writeAsString(toXmlString());
  }
  
  /// Get formatted XML string
  String toXmlString() {
    return document.toXmlString(pretty: true, indent: '    ');
  }
  
  /// Create a backup before modifications
  Future<String> createBackup() async {
    final backupPath = '$manifestPath.bak';
    final original = File(manifestPath);
    await original.copy(backupPath);
    return backupPath;
  }
  
  // ============================================================
  // Parsing Info
  // ============================================================
  
  /// Get parsed manifest info (read-only view)
  Future<DecompiledManifestInfo> getManifestInfo() async {
    return DecompiledManifestParser.parseFromDocument(document, manifestPath);
  }
  
  // ============================================================
  // Aliases for compatibility
  // ============================================================
  
  /// Alias for getUsedPermissions (for compatibility)
  List<String> getPermissions() => getUsedPermissions();
  
  /// Alias for isDebuggable (for compatibility)
  bool get debuggable => isDebuggable;
}

/// Extension to apply batch modifications
extension ManifestPatcherBatch on ManifestPatcher {
  /// Apply a set of modifications at once
  void applyPatch(ManifestPatch patch) {
    if (patch.newPackageName != null) {
      renamePackage(patch.newPackageName!);
    }
    
    if (patch.newVersionCode != null) {
      setVersionCode(patch.newVersionCode!);
    }
    
    if (patch.newVersionName != null) {
      setVersionName(patch.newVersionName!);
    }
    
    if (patch.addPermissions != null) {
      addPermissions(patch.addPermissions!);
    }
    
    if (patch.removePermissions != null) {
      for (final perm in patch.removePermissions!) {
        removePermission(perm);
      }
    }
    
    if (patch.setDebuggable != null) {
      setDebuggable(patch.setDebuggable!);
    }
    
    if (patch.setAllowBackup != null) {
      setAllowBackup(patch.setAllowBackup!);
    }
    
    if (patch.setUsesCleartextTraffic != null) {
      setUsesCleartextTraffic(patch.setUsesCleartextTraffic!);
    }
    
    if (patch.newApplicationLabel != null) {
      setApplicationLabel(patch.newApplicationLabel!);
    }
    
    if (patch.metaData != null) {
      patch.metaData!.forEach(setMetaData);
    }
    
    if (patch.removeMetaData != null) {
      for (final name in patch.removeMetaData!) {
        removeMetaData(name);
      }
    }
  }
}

/// Represents a batch of manifest modifications
class ManifestPatch {
  final String? newPackageName;
  final int? newVersionCode;
  final String? newVersionName;
  final List<String>? addPermissions;
  final List<String>? removePermissions;
  final bool? setDebuggable;
  final bool? setAllowBackup;
  final bool? setUsesCleartextTraffic;
  final String? newApplicationLabel;
  final Map<String, String>? metaData;
  final List<String>? removeMetaData;
  
  const ManifestPatch({
    this.newPackageName,
    this.newVersionCode,
    this.newVersionName,
    this.addPermissions,
    this.removePermissions,
    this.setDebuggable,
    this.setAllowBackup,
    this.setUsesCleartextTraffic,
    this.newApplicationLabel,
    this.metaData,
    this.removeMetaData,
  });
  
  /// Create patch for cloning an app
  factory ManifestPatch.forClone({
    required String newPackage,
    required String newLabel,
    int? versionCode,
    String? versionName,
  }) {
    return ManifestPatch(
      newPackageName: newPackage,
      newApplicationLabel: newLabel,
      newVersionCode: versionCode,
      newVersionName: versionName,
    );
  }
  
  /// Create patch for debugging setup
  factory ManifestPatch.forDebugging() {
    return const ManifestPatch(
      setDebuggable: true,
      setUsesCleartextTraffic: true,
      addPermissions: [
        'android.permission.INTERNET',
        'android.permission.ACCESS_NETWORK_STATE',
      ],
    );
  }
  
  /// Create patch for Frida gadget injection
  factory ManifestPatch.forFridaInjection() {
    return const ManifestPatch(
      setDebuggable: true,
      setUsesCleartextTraffic: true,
      addPermissions: [
        'android.permission.INTERNET',
        'android.permission.ACCESS_NETWORK_STATE',
      ],
    );
  }
}
