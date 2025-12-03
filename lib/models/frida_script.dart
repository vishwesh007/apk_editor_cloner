/// Model for Frida script management
class FridaScript {
  final String id;
  final String name;
  final String description;
  final String code;
  final ScriptCategory category;
  final bool isBuiltIn;
  final DateTime createdAt;
  final DateTime? lastUsedAt;

  FridaScript({
    required this.id,
    required this.name,
    required this.description,
    required this.code,
    required this.category,
    this.isBuiltIn = false,
    required this.createdAt,
    this.lastUsedAt,
  });

  FridaScript copyWith({
    String? id,
    String? name,
    String? description,
    String? code,
    ScriptCategory? category,
    bool? isBuiltIn,
    DateTime? createdAt,
    DateTime? lastUsedAt,
  }) {
    return FridaScript(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      code: code ?? this.code,
      category: category ?? this.category,
      isBuiltIn: isBuiltIn ?? this.isBuiltIn,
      createdAt: createdAt ?? this.createdAt,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'code': code,
        'category': category.name,
        'isBuiltIn': isBuiltIn,
        'createdAt': createdAt.toIso8601String(),
        'lastUsedAt': lastUsedAt?.toIso8601String(),
      };

  factory FridaScript.fromJson(Map<String, dynamic> json) => FridaScript(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        code: json['code'] as String,
        category: ScriptCategory.values.byName(json['category'] as String),
        isBuiltIn: json['isBuiltIn'] as bool? ?? false,
        createdAt: DateTime.parse(json['createdAt'] as String),
        lastUsedAt: json['lastUsedAt'] != null
            ? DateTime.parse(json['lastUsedAt'] as String)
            : null,
      );
}

enum ScriptCategory {
  network,
  crypto,
  filesystem,
  api,
  antiDebug,
  custom,
}

extension ScriptCategoryExt on ScriptCategory {
  String get displayName {
    switch (this) {
      case ScriptCategory.network:
        return 'Network Monitoring';
      case ScriptCategory.crypto:
        return 'Crypto Hooks';
      case ScriptCategory.filesystem:
        return 'File System';
      case ScriptCategory.api:
        return 'API Tracing';
      case ScriptCategory.antiDebug:
        return 'Anti-Debug Detection';
      case ScriptCategory.custom:
        return 'Custom';
    }
  }

  String get icon {
    switch (this) {
      case ScriptCategory.network:
        return '🌐';
      case ScriptCategory.crypto:
        return '🔐';
      case ScriptCategory.filesystem:
        return '📁';
      case ScriptCategory.api:
        return '⚡';
      case ScriptCategory.antiDebug:
        return '🛡️';
      case ScriptCategory.custom:
        return '📝';
    }
  }
}
