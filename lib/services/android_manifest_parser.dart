import 'dart:typed_data';

/// Parser for Android Binary XML (AXML) format
/// This parses the compiled AndroidManifest.xml found in APK files
class AndroidManifestParser {
  // Resource types
  static const int RES_NULL_TYPE = 0x0000;
  static const int RES_STRING_POOL_TYPE = 0x0001;
  static const int RES_TABLE_TYPE = 0x0002;
  static const int RES_XML_TYPE = 0x0003;

  // Chunk types
  static const int RES_XML_START_NAMESPACE_TYPE = 0x0100;
  static const int RES_XML_END_NAMESPACE_TYPE = 0x0101;
  static const int RES_XML_START_ELEMENT_TYPE = 0x0102;
  static const int RES_XML_END_ELEMENT_TYPE = 0x0103;
  static const int RES_XML_CDATA_TYPE = 0x0104;
  static const int RES_XML_RESOURCE_MAP_TYPE = 0x0180;

  late ByteData _data;
  int _offset = 0;
  List<String> _stringPool = [];
  
  // Parsed manifest data
  String packageName = '';
  String appName = '';
  String versionName = '1.0';
  int versionCode = 1;
  int minSdkVersion = 1;
  int targetSdkVersion = 1;
  List<String> permissions = [];
  List<ActivityInfo> activities = [];
  List<String> services = [];
  List<String> receivers = [];
  List<String> providers = [];
  bool debuggable = false;
  String? backupAgent;
  String? process;
  List<UsesFeature> usesFeatures = [];
  List<UsesLibrary> usesLibraries = [];

  /// Parse Android Binary XML
  ManifestInfo parse(List<int> bytes) {
    _data = ByteData.view(Uint8List.fromList(bytes).buffer);
    _offset = 0;
    _stringPool = [];
    
    // Reset parsed data
    packageName = '';
    appName = '';
    versionName = '1.0';
    versionCode = 1;
    minSdkVersion = 1;
    targetSdkVersion = 1;
    permissions = [];
    activities = [];
    services = [];
    receivers = [];
    providers = [];

    try {
      // Read header
      final type = _readUint16();
      _readUint16(); // headerSize
      _readUint32(); // size

      if (type != RES_XML_TYPE) {
        // Not a valid AXML file
        return _createManifestInfo();
      }

      // Parse chunks
      while (_offset < bytes.length) {
        _parseChunk();
      }
    } catch (e) {
      // Parsing error - return what we have
    }

    return _createManifestInfo();
  }

  ManifestInfo _createManifestInfo() {
    return ManifestInfo(
      packageName: packageName,
      appName: appName,
      versionName: versionName,
      versionCode: versionCode,
      minSdkVersion: minSdkVersion,
      targetSdkVersion: targetSdkVersion,
      permissions: permissions,
      activities: activities,
      services: services,
      receivers: receivers,
      providers: providers,
      debuggable: debuggable,
      backupAgent: backupAgent,
      process: process,
      usesFeatures: usesFeatures,
      usesLibraries: usesLibraries,
    );
  }

  void _parseChunk() {
    if (_offset + 8 > _data.lengthInBytes) return;
    
    final chunkType = _readUint16();
    final headerSize = _readUint16();
    final chunkSize = _readUint32();
    
    final chunkStart = _offset - 8;
    final chunkEnd = chunkStart + chunkSize;

    switch (chunkType) {
      case RES_STRING_POOL_TYPE:
        _parseStringPool(headerSize, chunkSize);
        break;
      case RES_XML_START_ELEMENT_TYPE:
        _parseStartElement(headerSize);
        break;
      case RES_XML_END_ELEMENT_TYPE:
        // Skip end element
        _offset = chunkEnd;
        break;
      case RES_XML_START_NAMESPACE_TYPE:
      case RES_XML_END_NAMESPACE_TYPE:
      case RES_XML_RESOURCE_MAP_TYPE:
      case RES_XML_CDATA_TYPE:
      default:
        // Skip unknown chunks
        _offset = chunkEnd;
        break;
    }
    
    // Ensure we're at the correct position
    if (_offset < chunkEnd) {
      _offset = chunkEnd;
    }
  }

  void _parseStringPool(int headerSize, int chunkSize) {
    final stringCount = _readUint32();
    final styleCount = _readUint32();
    final flags = _readUint32();
    _readUint32(); // stringsStart
    _readUint32(); // stylesStart

    final isUtf8 = (flags & (1 << 8)) != 0;

    // Read string offsets
    final stringOffsets = <int>[];
    for (var i = 0; i < stringCount; i++) {
      stringOffsets.add(_readUint32());
    }

    // Skip style offsets
    _offset += styleCount * 4;

    // Parse strings
    final stringsDataStart = _offset;
    _stringPool = [];
    
    for (var i = 0; i < stringCount; i++) {
      _offset = stringsDataStart + stringOffsets[i];
      final str = isUtf8 ? _readUtf8String() : _readUtf16String();
      _stringPool.add(str);
    }
  }

  String _readUtf8String() {
    // First two bytes are length info in UTF-8 encoding
    var charLen = _readUint8();
    if ((charLen & 0x80) != 0) {
      charLen = ((charLen & 0x7F) << 8) | _readUint8();
    }
    
    var byteLen = _readUint8();
    if ((byteLen & 0x80) != 0) {
      byteLen = ((byteLen & 0x7F) << 8) | _readUint8();
    }

    final bytes = <int>[];
    for (var i = 0; i < byteLen && _offset < _data.lengthInBytes; i++) {
      final b = _readUint8();
      if (b == 0) break;
      bytes.add(b);
    }
    
    return String.fromCharCodes(bytes);
  }

  String _readUtf16String() {
    var len = _readUint16();
    if ((len & 0x8000) != 0) {
      len = ((len & 0x7FFF) << 16) | _readUint16();
    }

    final chars = <int>[];
    for (var i = 0; i < len && _offset + 1 < _data.lengthInBytes; i++) {
      final char = _readUint16();
      if (char == 0) break;
      chars.add(char);
    }
    
    return String.fromCharCodes(chars);
  }

  void _parseStartElement(int headerSize) {
    _readUint32(); // lineNumber
    _readUint32(); // comment
    _readUint32(); // ns
    final name = _readUint32();
    _readUint16(); // attrStart
    _readUint16(); // attrSize
    final attrCount = _readUint16();
    _readUint16(); // idIndex
    _readUint16(); // classIndex
    _readUint16(); // styleIndex

    final elementName = _getString(name);
    
    // Parse attributes
    final attributes = <String, String>{};
    for (var i = 0; i < attrCount; i++) {
      _readUint32(); // attrNs
      final attrName = _readUint32();
      final attrRawValue = _readUint32();
      _readUint16(); // attrTypeSize
      _readUint8(); // attrRes0
      final attrDataType = _readUint8();
      final attrData = _readUint32();

      final attrNameStr = _getString(attrName);
      String attrValue;
      
      if (attrRawValue != 0xFFFFFFFF) {
        attrValue = _getString(attrRawValue);
      } else {
        attrValue = _resolveAttributeValue(attrDataType, attrData);
      }
      
      attributes[attrNameStr] = attrValue;
    }

    // Process based on element type
    switch (elementName) {
      case 'manifest':
        packageName = attributes['package'] ?? '';
        if (attributes.containsKey('versionCode')) {
          versionCode = int.tryParse(attributes['versionCode']!) ?? 1;
        }
        if (attributes.containsKey('versionName')) {
          versionName = attributes['versionName']!;
        }
        break;
      case 'uses-permission':
        final perm = attributes['name'] ?? '';
        if (perm.isNotEmpty) permissions.add(perm);
        break;
      case 'uses-sdk':
        if (attributes.containsKey('minSdkVersion')) {
          minSdkVersion = int.tryParse(attributes['minSdkVersion']!) ?? 1;
        }
        if (attributes.containsKey('targetSdkVersion')) {
          targetSdkVersion = int.tryParse(attributes['targetSdkVersion']!) ?? 1;
        }
        break;
      case 'application':
        appName = attributes['label'] ?? '';
        break;
      case 'activity':
        final name = attributes['name'] ?? '';
        if (name.isNotEmpty) activities.add(name);
        break;
      case 'service':
        final name = attributes['name'] ?? '';
        if (name.isNotEmpty) services.add(name);
        break;
      case 'receiver':
        final name = attributes['name'] ?? '';
        if (name.isNotEmpty) receivers.add(name);
        break;
      case 'provider':
        final name = attributes['name'] ?? '';
        if (name.isNotEmpty) providers.add(name);
        break;
    }
  }

  String _resolveAttributeValue(int dataType, int data) {
    switch (dataType) {
      case 0x03: // TYPE_STRING
        return _getString(data);
      case 0x10: // TYPE_INT_DEC
        return data.toString();
      case 0x11: // TYPE_INT_HEX
        return '0x${data.toRadixString(16)}';
      case 0x12: // TYPE_INT_BOOLEAN
        return data != 0 ? 'true' : 'false';
      default:
        return data.toString();
    }
  }

  String _getString(int index) {
    if (index < 0 || index >= _stringPool.length) return '';
    return _stringPool[index];
  }

  int _readUint8() {
    final value = _data.getUint8(_offset);
    _offset += 1;
    return value;
  }

  int _readUint16() {
    final value = _data.getUint16(_offset, Endian.little);
    _offset += 2;
    return value;
  }

  int _readUint32() {
    final value = _data.getUint32(_offset, Endian.little);
    _offset += 4;
    return value;
  }
}

/// Parsed manifest information
class ManifestInfo {
  final String packageName;
  final String appName;
  final String versionName;
  final int versionCode;
  final int minSdkVersion;
  final int targetSdkVersion;
  final List<String> permissions;
  final List<ActivityInfo> activities;
  final List<String> services;
  final List<String> receivers;
  final List<String> providers;
  final bool debuggable;
  final String? backupAgent;
  final String? process;
  final List<UsesFeature> usesFeatures;
  final List<UsesLibrary> usesLibraries;

  ManifestInfo({
    required this.packageName,
    required this.appName,
    required this.versionName,
    required this.versionCode,
    required this.minSdkVersion,
    required this.targetSdkVersion,
    required this.permissions,
    required this.activities,
    required this.services,
    required this.receivers,
    required this.providers,
    this.debuggable = false,
    this.backupAgent,
    this.process,
    this.usesFeatures = const [],
    this.usesLibraries = const [],
  });

  // Create a copy with modifications
  ManifestInfo copyWith({
    String? packageName,
    String? appName,
    String? versionName,
    int? versionCode,
    int? minSdkVersion,
    int? targetSdkVersion,
    List<String>? permissions,
    List<ActivityInfo>? activities,
    List<String>? services,
    List<String>? receivers,
    List<String>? providers,
    bool? debuggable,
    String? backupAgent,
    String? process,
    List<UsesFeature>? usesFeatures,
    List<UsesLibrary>? usesLibraries,
  }) {
    return ManifestInfo(
      packageName: packageName ?? this.packageName,
      appName: appName ?? this.appName,
      versionName: versionName ?? this.versionName,
      versionCode: versionCode ?? this.versionCode,
      minSdkVersion: minSdkVersion ?? this.minSdkVersion,
      targetSdkVersion: targetSdkVersion ?? this.targetSdkVersion,
      permissions: permissions ?? this.permissions,
      activities: activities ?? this.activities,
      services: services ?? this.services,
      receivers: receivers ?? this.receivers,
      providers: providers ?? this.providers,
      debuggable: debuggable ?? this.debuggable,
      backupAgent: backupAgent ?? this.backupAgent,
      process: process ?? this.process,
      usesFeatures: usesFeatures ?? this.usesFeatures,
      usesLibraries: usesLibraries ?? this.usesLibraries,
    );
  }
}

/// Activity information with intent filters
class ActivityInfo {
  final String name;
  final bool exported;
  final bool enabled;
  final String? launchMode;
  final String? screenOrientation;
  final List<IntentFilter> intentFilters;

  ActivityInfo({
    required this.name,
    this.exported = false,
    this.enabled = true,
    this.launchMode,
    this.screenOrientation,
    this.intentFilters = const [],
  });
}

/// Intent filter information
class IntentFilter {
  final List<String> actions;
  final List<String> categories;
  final List<String> dataSchemes;
  final List<String> dataTypes;

  IntentFilter({
    this.actions = const [],
    this.categories = const [],
    this.dataSchemes = const [],
    this.dataTypes = const [],
  });
}

/// Uses-feature information
class UsesFeature {
  final String name;
  final bool required;
  final int? glEsVersion;

  UsesFeature({
    required this.name,
    this.required = false,
    this.glEsVersion,
  });
}

/// Uses-library information
class UsesLibrary {
  final String name;
  final bool required;

  UsesLibrary({
    required this.name,
    this.required = false,
  });
}
