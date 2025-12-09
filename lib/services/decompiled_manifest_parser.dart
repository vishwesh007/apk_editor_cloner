import 'dart:io';
import 'package:xml/xml.dart';

/// Parser and editor for decompiled AndroidManifest.xml (human-readable XML)
/// Based on APKRepacker's ResXmlPatcher and AndroidManifestParser patterns
class DecompiledManifestParser {
  static const String androidNsPrefix = 'android';
  
  XmlDocument? _document;
  String? _filePath;

  /// Parse a decompiled AndroidManifest.xml file
  Future<DecompiledManifestInfo> parseFile(String filePath) async {
    _filePath = filePath;
    final file = File(filePath);
    if (!await file.exists()) {
      throw FileSystemException('AndroidManifest.xml not found', filePath);
    }
    
    final content = await file.readAsString();
    return parseString(content);
  }

  /// Parse AndroidManifest.xml from string content
  DecompiledManifestInfo parseString(String content) {
    _document = XmlDocument.parse(content);
    return _extractManifestInfo();
  }

  /// Extract comprehensive manifest information
  DecompiledManifestInfo _extractManifestInfo() {
    if (_document == null) {
      throw StateError('No document loaded');
    }

    final manifest = _document!.rootElement;
    if (manifest.name.local != 'manifest') {
      throw FormatException('Root element must be <manifest>');
    }

    // Parse manifest attributes
    final packageName = manifest.getAttribute('package') ?? '';
    final versionCode = _parseIntAttr(manifest, 'versionCode');
    final versionName = _getAndroidAttr(manifest, 'versionName');
    final compileSdkVersion = _parseIntAttr(manifest, 'compileSdkVersion');
    final platformBuildVersionCode = _parseIntAttr(manifest, 'platformBuildVersionCode');
    final platformBuildVersionName = manifest.getAttribute('platformBuildVersionName');
    final installLocation = _getAndroidAttr(manifest, 'installLocation');

    // Parse uses-sdk
    int minSdkVersion = 1;
    int targetSdkVersion = 1;
    int? maxSdkVersion;
    final usesSdkElement = manifest.findElements('uses-sdk').firstOrNull;
    if (usesSdkElement != null) {
      minSdkVersion = _parseAndroidIntAttr(usesSdkElement, 'minSdkVersion') ?? 1;
      targetSdkVersion = _parseAndroidIntAttr(usesSdkElement, 'targetSdkVersion') ?? minSdkVersion;
      maxSdkVersion = _parseAndroidIntAttr(usesSdkElement, 'maxSdkVersion');
    }

    // Parse permissions
    final permissions = <PermissionInfo>[];
    for (final perm in manifest.findElements('uses-permission')) {
      final name = _getAndroidAttr(perm, 'name');
      if (name != null && name.isNotEmpty) {
        permissions.add(PermissionInfo(
          name: name,
          maxSdkVersion: _parseAndroidIntAttr(perm, 'maxSdkVersion'),
        ));
      }
    }

    // Parse permission definitions
    final permissionDefinitions = <PermissionDefinition>[];
    for (final perm in manifest.findElements('permission')) {
      final name = _getAndroidAttr(perm, 'name');
      if (name != null && name.isNotEmpty) {
        permissionDefinitions.add(PermissionDefinition(
          name: name,
          label: _getAndroidAttr(perm, 'label'),
          description: _getAndroidAttr(perm, 'description'),
          protectionLevel: _getAndroidAttr(perm, 'protectionLevel'),
          permissionGroup: _getAndroidAttr(perm, 'permissionGroup'),
        ));
      }
    }

    // Parse uses-feature
    final usesFeatures = <UsesFeatureInfo>[];
    for (final feature in manifest.findElements('uses-feature')) {
      final name = _getAndroidAttr(feature, 'name');
      final glEsVersion = _getAndroidAttr(feature, 'glEsVersion');
      if (name != null || glEsVersion != null) {
        usesFeatures.add(UsesFeatureInfo(
          name: name,
          required: _parseAndroidBoolAttr(feature, 'required') ?? true,
          glEsVersion: glEsVersion,
        ));
      }
    }

    // Parse queries
    final queries = _parseQueries(manifest);

    // Parse application
    ApplicationInfo? application;
    final appElement = manifest.findElements('application').firstOrNull;
    if (appElement != null) {
      application = _parseApplication(appElement, packageName);
    }

    return DecompiledManifestInfo(
      packageName: packageName,
      versionCode: versionCode,
      versionName: versionName,
      compileSdkVersion: compileSdkVersion,
      platformBuildVersionCode: platformBuildVersionCode,
      platformBuildVersionName: platformBuildVersionName,
      installLocation: installLocation,
      minSdkVersion: minSdkVersion,
      targetSdkVersion: targetSdkVersion,
      maxSdkVersion: maxSdkVersion,
      permissions: permissions,
      permissionDefinitions: permissionDefinitions,
      usesFeatures: usesFeatures,
      queries: queries,
      application: application,
      rawXml: _document!.toXmlString(pretty: true),
    );
  }

  /// Parse queries element
  QueriesInfo _parseQueries(XmlElement manifest) {
    final queriesElement = manifest.findElements('queries').firstOrNull;
    if (queriesElement == null) {
      return QueriesInfo(intents: [], packages: [], providers: []);
    }

    final intents = <IntentInfo>[];
    final packages = <String>[];
    final providers = <String>[];

    for (final child in queriesElement.children.whereType<XmlElement>()) {
      switch (child.name.local) {
        case 'intent':
          intents.add(_parseIntent(child));
          break;
        case 'package':
          final name = _getAndroidAttr(child, 'name');
          if (name != null) packages.add(name);
          break;
        case 'provider':
          final authorities = _getAndroidAttr(child, 'authorities');
          if (authorities != null) providers.add(authorities);
          break;
      }
    }

    return QueriesInfo(
      intents: intents,
      packages: packages,
      providers: providers,
    );
  }

  /// Parse application element
  ApplicationInfo _parseApplication(XmlElement appElement, String packageName) {
    final activities = <ActivityDetailInfo>[];
    final services = <ServiceInfo>[];
    final receivers = <ReceiverInfo>[];
    final providers = <ProviderInfo>[];
    final metaData = <MetaDataInfo>[];

    for (final child in appElement.children.whereType<XmlElement>()) {
      switch (child.name.local) {
        case 'activity':
        case 'activity-alias':
          activities.add(_parseActivity(child, packageName));
          break;
        case 'service':
          services.add(_parseService(child, packageName));
          break;
        case 'receiver':
          receivers.add(_parseReceiver(child, packageName));
          break;
        case 'provider':
          providers.add(_parseProvider(child, packageName));
          break;
        case 'meta-data':
          metaData.add(_parseMetaData(child));
          break;
      }
    }

    return ApplicationInfo(
      name: _resolveComponentName(_getAndroidAttr(appElement, 'name'), packageName),
      label: _getAndroidAttr(appElement, 'label'),
      icon: _getAndroidAttr(appElement, 'icon'),
      roundIcon: _getAndroidAttr(appElement, 'roundIcon'),
      theme: _getAndroidAttr(appElement, 'theme'),
      debuggable: _parseAndroidBoolAttr(appElement, 'debuggable') ?? false,
      allowBackup: _parseAndroidBoolAttr(appElement, 'allowBackup') ?? true,
      supportsRtl: _parseAndroidBoolAttr(appElement, 'supportsRtl') ?? false,
      extractNativeLibs: _parseAndroidBoolAttr(appElement, 'extractNativeLibs'),
      usesCleartextTraffic: _parseAndroidBoolAttr(appElement, 'usesCleartextTraffic'),
      networkSecurityConfig: _getAndroidAttr(appElement, 'networkSecurityConfig'),
      appComponentFactory: _getAndroidAttr(appElement, 'appComponentFactory'),
      backupAgent: _getAndroidAttr(appElement, 'backupAgent'),
      description: _getAndroidAttr(appElement, 'description'),
      activities: activities,
      services: services,
      receivers: receivers,
      providers: providers,
      metaData: metaData,
    );
  }

  /// Parse activity element
  ActivityDetailInfo _parseActivity(XmlElement element, String packageName) {
    final intentFilters = <IntentFilterInfo>[];
    final metaData = <MetaDataInfo>[];

    for (final child in element.children.whereType<XmlElement>()) {
      if (child.name.local == 'intent-filter') {
        intentFilters.add(_parseIntentFilter(child));
      } else if (child.name.local == 'meta-data') {
        metaData.add(_parseMetaData(child));
      }
    }

    return ActivityDetailInfo(
      name: _resolveComponentName(_getAndroidAttr(element, 'name'), packageName)!,
      label: _getAndroidAttr(element, 'label'),
      exported: _parseAndroidBoolAttr(element, 'exported'),
      enabled: _parseAndroidBoolAttr(element, 'enabled') ?? true,
      launchMode: _getAndroidAttr(element, 'launchMode'),
      screenOrientation: _getAndroidAttr(element, 'screenOrientation'),
      configChanges: _getAndroidAttr(element, 'configChanges'),
      theme: _getAndroidAttr(element, 'theme'),
      parentActivityName: _getAndroidAttr(element, 'parentActivityName'),
      resizeableActivity: _parseAndroidBoolAttr(element, 'resizeableActivity'),
      intentFilters: intentFilters,
      metaData: metaData,
      isAlias: element.name.local == 'activity-alias',
      targetActivity: element.name.local == 'activity-alias' 
          ? _getAndroidAttr(element, 'targetActivity') : null,
    );
  }

  /// Parse service element
  ServiceInfo _parseService(XmlElement element, String packageName) {
    final intentFilters = <IntentFilterInfo>[];
    final metaData = <MetaDataInfo>[];

    for (final child in element.children.whereType<XmlElement>()) {
      if (child.name.local == 'intent-filter') {
        intentFilters.add(_parseIntentFilter(child));
      } else if (child.name.local == 'meta-data') {
        metaData.add(_parseMetaData(child));
      }
    }

    return ServiceInfo(
      name: _resolveComponentName(_getAndroidAttr(element, 'name'), packageName)!,
      label: _getAndroidAttr(element, 'label'),
      exported: _parseAndroidBoolAttr(element, 'exported'),
      enabled: _parseAndroidBoolAttr(element, 'enabled') ?? true,
      permission: _getAndroidAttr(element, 'permission'),
      foregroundServiceType: _getAndroidAttr(element, 'foregroundServiceType'),
      intentFilters: intentFilters,
      metaData: metaData,
    );
  }

  /// Parse receiver element
  ReceiverInfo _parseReceiver(XmlElement element, String packageName) {
    final intentFilters = <IntentFilterInfo>[];
    final metaData = <MetaDataInfo>[];

    for (final child in element.children.whereType<XmlElement>()) {
      if (child.name.local == 'intent-filter') {
        intentFilters.add(_parseIntentFilter(child));
      } else if (child.name.local == 'meta-data') {
        metaData.add(_parseMetaData(child));
      }
    }

    return ReceiverInfo(
      name: _resolveComponentName(_getAndroidAttr(element, 'name'), packageName)!,
      label: _getAndroidAttr(element, 'label'),
      exported: _parseAndroidBoolAttr(element, 'exported'),
      enabled: _parseAndroidBoolAttr(element, 'enabled') ?? true,
      permission: _getAndroidAttr(element, 'permission'),
      intentFilters: intentFilters,
      metaData: metaData,
    );
  }

  /// Parse provider element
  ProviderInfo _parseProvider(XmlElement element, String packageName) {
    final metaData = <MetaDataInfo>[];

    for (final child in element.children.whereType<XmlElement>()) {
      if (child.name.local == 'meta-data') {
        metaData.add(_parseMetaData(child));
      }
    }

    return ProviderInfo(
      name: _resolveComponentName(_getAndroidAttr(element, 'name'), packageName)!,
      authorities: _getAndroidAttr(element, 'authorities') ?? '',
      exported: _parseAndroidBoolAttr(element, 'exported') ?? false,
      enabled: _parseAndroidBoolAttr(element, 'enabled') ?? true,
      grantUriPermissions: _parseAndroidBoolAttr(element, 'grantUriPermissions') ?? false,
      permission: _getAndroidAttr(element, 'permission'),
      readPermission: _getAndroidAttr(element, 'readPermission'),
      writePermission: _getAndroidAttr(element, 'writePermission'),
      metaData: metaData,
    );
  }

  /// Parse intent-filter element
  IntentFilterInfo _parseIntentFilter(XmlElement element) {
    final actions = <String>[];
    final categories = <String>[];
    final dataSchemes = <String>[];
    final dataHosts = <String>[];
    final dataPathPatterns = <String>[];
    final dataMimeTypes = <String>[];

    for (final child in element.children.whereType<XmlElement>()) {
      switch (child.name.local) {
        case 'action':
          final name = _getAndroidAttr(child, 'name');
          if (name != null) actions.add(name);
          break;
        case 'category':
          final name = _getAndroidAttr(child, 'name');
          if (name != null) categories.add(name);
          break;
        case 'data':
          final scheme = _getAndroidAttr(child, 'scheme');
          if (scheme != null) dataSchemes.add(scheme);
          final host = _getAndroidAttr(child, 'host');
          if (host != null) dataHosts.add(host);
          final pathPattern = _getAndroidAttr(child, 'pathPattern');
          if (pathPattern != null) dataPathPatterns.add(pathPattern);
          final mimeType = _getAndroidAttr(child, 'mimeType');
          if (mimeType != null) dataMimeTypes.add(mimeType);
          break;
      }
    }

    final priority = _parseAndroidIntAttr(element, 'priority');

    return IntentFilterInfo(
      actions: actions,
      categories: categories,
      dataSchemes: dataSchemes,
      dataHosts: dataHosts,
      dataPathPatterns: dataPathPatterns,
      dataMimeTypes: dataMimeTypes,
      priority: priority,
    );
  }

  /// Parse intent element (for queries)
  IntentInfo _parseIntent(XmlElement element) {
    String? action;
    String? category;
    String? data;

    for (final child in element.children.whereType<XmlElement>()) {
      switch (child.name.local) {
        case 'action':
          action = _getAndroidAttr(child, 'name');
          break;
        case 'category':
          category = _getAndroidAttr(child, 'name');
          break;
        case 'data':
          data = _getAndroidAttr(child, 'scheme') ?? 
                 _getAndroidAttr(child, 'mimeType');
          break;
      }
    }

    return IntentInfo(action: action, category: category, data: data);
  }

  /// Parse meta-data element
  MetaDataInfo _parseMetaData(XmlElement element) {
    return MetaDataInfo(
      name: _getAndroidAttr(element, 'name') ?? '',
      value: _getAndroidAttr(element, 'value'),
      resource: _getAndroidAttr(element, 'resource'),
    );
  }

  // Helper methods
  
  /// Get an android: prefixed attribute value
  String? _getAndroidAttr(XmlElement element, String name) {
    // Try with android: prefix (most common in decompiled manifests)
    return element.getAttribute('android:$name');
  }

  int? _parseIntAttr(XmlElement element, String name) {
    final value = element.getAttribute('android:$name') ??
                  element.getAttribute(name);
    if (value == null) return null;
    return int.tryParse(value);
  }

  int? _parseAndroidIntAttr(XmlElement element, String name) {
    final value = _getAndroidAttr(element, name);
    if (value == null) return null;
    return int.tryParse(value);
  }

  bool? _parseAndroidBoolAttr(XmlElement element, String name) {
    final value = _getAndroidAttr(element, name);
    if (value == null) return null;
    return value == 'true';
  }

  /// Resolve component name with package prefix if needed
  String? _resolveComponentName(String? name, String packageName) {
    if (name == null) return null;
    if (name.startsWith('.')) {
      return '$packageName$name';
    } else if (!name.contains('.')) {
      return '$packageName.$name';
    }
    return name;
  }

  /// Get the loaded XML document for editing
  XmlDocument? get document => _document;

  /// Get the file path
  String? get filePath => _filePath;
  
  /// Static method to parse from an existing XmlDocument
  /// Used by ManifestPatcher to get info from a patched document
  static DecompiledManifestInfo parseFromDocument(XmlDocument document, String filePath) {
    final parser = DecompiledManifestParser();
    parser._document = document;
    parser._filePath = filePath;
    return parser._extractManifestInfo();
  }
}

// ============================================================================
// Data Classes
// ============================================================================

/// Complete decompiled manifest information
class DecompiledManifestInfo {
  final String packageName;
  final int? versionCode;
  final String? versionName;
  final int? compileSdkVersion;
  final int? platformBuildVersionCode;
  final String? platformBuildVersionName;
  final String? installLocation;
  final int minSdkVersion;
  final int targetSdkVersion;
  final int? maxSdkVersion;
  final List<PermissionInfo> permissions;
  final List<PermissionDefinition> permissionDefinitions;
  final List<UsesFeatureInfo> usesFeatures;
  final QueriesInfo queries;
  final ApplicationInfo? application;
  final String rawXml;

  DecompiledManifestInfo({
    required this.packageName,
    this.versionCode,
    this.versionName,
    this.compileSdkVersion,
    this.platformBuildVersionCode,
    this.platformBuildVersionName,
    this.installLocation,
    required this.minSdkVersion,
    required this.targetSdkVersion,
    this.maxSdkVersion,
    required this.permissions,
    required this.permissionDefinitions,
    required this.usesFeatures,
    required this.queries,
    this.application,
    required this.rawXml,
  });

  /// Get all activities (from all apps)
  List<ActivityDetailInfo> get activities => application?.activities ?? [];

  /// Get all services
  List<ServiceInfo> get services => application?.services ?? [];

  /// Get all receivers
  List<ReceiverInfo> get receivers => application?.receivers ?? [];

  /// Get all providers
  List<ProviderInfo> get providers => application?.providers ?? [];

  /// Check if app is debuggable
  bool get debuggable => application?.debuggable ?? false;

  /// Get launcher activity
  ActivityDetailInfo? get launcherActivity {
    for (final activity in activities) {
      for (final filter in activity.intentFilters) {
        if (filter.actions.contains('android.intent.action.MAIN') &&
            filter.categories.contains('android.intent.category.LAUNCHER')) {
          return activity;
        }
      }
    }
    return null;
  }

  @override
  String toString() {
    return 'DecompiledManifestInfo('
        'package=$packageName, '
        'versionCode=$versionCode, '
        'versionName=$versionName, '
        'minSdk=$minSdkVersion, '
        'targetSdk=$targetSdkVersion, '
        'activities=${activities.length}, '
        'services=${services.length}, '
        'receivers=${receivers.length}, '
        'providers=${providers.length}, '
        'permissions=${permissions.length}'
        ')';
  }
}

/// Permission usage info
class PermissionInfo {
  final String name;
  final int? maxSdkVersion;

  PermissionInfo({
    required this.name,
    this.maxSdkVersion,
  });

  /// Get short permission name (without android.permission. prefix)
  String get shortName {
    const prefix = 'android.permission.';
    if (name.startsWith(prefix)) {
      return name.substring(prefix.length);
    }
    return name;
  }

  /// Check if this is a dangerous permission
  bool get isDangerous {
    const dangerous = [
      'READ_CALENDAR', 'WRITE_CALENDAR',
      'CAMERA',
      'READ_CONTACTS', 'WRITE_CONTACTS', 'GET_ACCOUNTS',
      'ACCESS_FINE_LOCATION', 'ACCESS_COARSE_LOCATION', 'ACCESS_BACKGROUND_LOCATION',
      'RECORD_AUDIO',
      'READ_PHONE_STATE', 'READ_PHONE_NUMBERS', 'CALL_PHONE', 'ANSWER_PHONE_CALLS',
      'READ_CALL_LOG', 'WRITE_CALL_LOG', 'ADD_VOICEMAIL', 'USE_SIP', 'PROCESS_OUTGOING_CALLS',
      'BODY_SENSORS', 'BODY_SENSORS_BACKGROUND',
      'SEND_SMS', 'RECEIVE_SMS', 'READ_SMS', 'RECEIVE_WAP_PUSH', 'RECEIVE_MMS',
      'READ_EXTERNAL_STORAGE', 'WRITE_EXTERNAL_STORAGE', 'READ_MEDIA_IMAGES',
      'READ_MEDIA_VIDEO', 'READ_MEDIA_AUDIO', 'ACCESS_MEDIA_LOCATION',
      'POST_NOTIFICATIONS',
    ];
    return dangerous.contains(shortName);
  }
}

/// Permission definition
class PermissionDefinition {
  final String name;
  final String? label;
  final String? description;
  final String? protectionLevel;
  final String? permissionGroup;

  PermissionDefinition({
    required this.name,
    this.label,
    this.description,
    this.protectionLevel,
    this.permissionGroup,
  });
}

/// Uses-feature info
class UsesFeatureInfo {
  final String? name;
  final bool required;
  final String? glEsVersion;

  UsesFeatureInfo({
    this.name,
    this.required = true,
    this.glEsVersion,
  });
}

/// Queries info (for Android 11+ package visibility)
class QueriesInfo {
  final List<IntentInfo> intents;
  final List<String> packages;
  final List<String> providers;

  QueriesInfo({
    required this.intents,
    required this.packages,
    required this.providers,
  });

  bool get isEmpty => intents.isEmpty && packages.isEmpty && providers.isEmpty;
}

/// Intent info
class IntentInfo {
  final String? action;
  final String? category;
  final String? data;

  IntentInfo({this.action, this.category, this.data});
}

/// Application info
class ApplicationInfo {
  final String? name;
  final String? label;
  final String? icon;
  final String? roundIcon;
  final String? theme;
  final bool debuggable;
  final bool allowBackup;
  final bool supportsRtl;
  final bool? extractNativeLibs;
  final bool? usesCleartextTraffic;
  final String? networkSecurityConfig;
  final String? appComponentFactory;
  final String? backupAgent;
  final String? description;
  final List<ActivityDetailInfo> activities;
  final List<ServiceInfo> services;
  final List<ReceiverInfo> receivers;
  final List<ProviderInfo> providers;
  final List<MetaDataInfo> metaData;

  ApplicationInfo({
    this.name,
    this.label,
    this.icon,
    this.roundIcon,
    this.theme,
    this.debuggable = false,
    this.allowBackup = true,
    this.supportsRtl = false,
    this.extractNativeLibs,
    this.usesCleartextTraffic,
    this.networkSecurityConfig,
    this.appComponentFactory,
    this.backupAgent,
    this.description,
    required this.activities,
    required this.services,
    required this.receivers,
    required this.providers,
    required this.metaData,
  });
}

/// Detailed activity info
class ActivityDetailInfo {
  final String name;
  final String? label;
  final bool? exported;
  final bool enabled;
  final String? launchMode;
  final String? screenOrientation;
  final String? configChanges;
  final String? theme;
  final String? parentActivityName;
  final bool? resizeableActivity;
  final List<IntentFilterInfo> intentFilters;
  final List<MetaDataInfo> metaData;
  final bool isAlias;
  final String? targetActivity;

  ActivityDetailInfo({
    required this.name,
    this.label,
    this.exported,
    this.enabled = true,
    this.launchMode,
    this.screenOrientation,
    this.configChanges,
    this.theme,
    this.parentActivityName,
    this.resizeableActivity,
    required this.intentFilters,
    required this.metaData,
    this.isAlias = false,
    this.targetActivity,
  });

  /// Check if this is the launcher activity
  bool get isLauncher {
    for (final filter in intentFilters) {
      if (filter.actions.contains('android.intent.action.MAIN') &&
          filter.categories.contains('android.intent.category.LAUNCHER')) {
        return true;
      }
    }
    return false;
  }

  /// Get short name (class name only)
  String get shortName {
    final lastDot = name.lastIndexOf('.');
    return lastDot >= 0 ? name.substring(lastDot + 1) : name;
  }
}

/// Service info
class ServiceInfo {
  final String name;
  final String? label;
  final bool? exported;
  final bool enabled;
  final String? permission;
  final String? foregroundServiceType;
  final List<IntentFilterInfo> intentFilters;
  final List<MetaDataInfo> metaData;

  ServiceInfo({
    required this.name,
    this.label,
    this.exported,
    this.enabled = true,
    this.permission,
    this.foregroundServiceType,
    required this.intentFilters,
    required this.metaData,
  });

  String get shortName {
    final lastDot = name.lastIndexOf('.');
    return lastDot >= 0 ? name.substring(lastDot + 1) : name;
  }
}

/// Receiver info
class ReceiverInfo {
  final String name;
  final String? label;
  final bool? exported;
  final bool enabled;
  final String? permission;
  final List<IntentFilterInfo> intentFilters;
  final List<MetaDataInfo> metaData;

  ReceiverInfo({
    required this.name,
    this.label,
    this.exported,
    this.enabled = true,
    this.permission,
    required this.intentFilters,
    required this.metaData,
  });

  String get shortName {
    final lastDot = name.lastIndexOf('.');
    return lastDot >= 0 ? name.substring(lastDot + 1) : name;
  }
}

/// Provider info
class ProviderInfo {
  final String name;
  final String authorities;
  final bool exported;
  final bool enabled;
  final bool grantUriPermissions;
  final String? permission;
  final String? readPermission;
  final String? writePermission;
  final List<MetaDataInfo> metaData;

  ProviderInfo({
    required this.name,
    required this.authorities,
    this.exported = false,
    this.enabled = true,
    this.grantUriPermissions = false,
    this.permission,
    this.readPermission,
    this.writePermission,
    required this.metaData,
  });

  String get shortName {
    final lastDot = name.lastIndexOf('.');
    return lastDot >= 0 ? name.substring(lastDot + 1) : name;
  }
}

/// Intent filter info
class IntentFilterInfo {
  final List<String> actions;
  final List<String> categories;
  final List<String> dataSchemes;
  final List<String> dataHosts;
  final List<String> dataPathPatterns;
  final List<String> dataMimeTypes;
  final int? priority;

  IntentFilterInfo({
    required this.actions,
    required this.categories,
    required this.dataSchemes,
    required this.dataHosts,
    required this.dataPathPatterns,
    required this.dataMimeTypes,
    this.priority,
  });

  /// Check if this filter has the MAIN/LAUNCHER combination
  bool get isLauncher =>
      actions.contains('android.intent.action.MAIN') &&
      categories.contains('android.intent.category.LAUNCHER');
}

/// Meta-data info
class MetaDataInfo {
  final String name;
  final String? value;
  final String? resource;

  MetaDataInfo({
    required this.name,
    this.value,
    this.resource,
  });
}
