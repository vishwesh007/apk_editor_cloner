/// Model representing an analyzed APK
class ApkInfo {
  final String filePath;
  final String packageName;
  final String appName;
  final String versionName;
  final int versionCode;
  final int minSdkVersion;
  final int targetSdkVersion;
  final List<String> permissions;
  final List<String> activities;
  final List<String> services;
  final List<String> receivers;
  final List<String> providers;
  final List<String> nativeLibraries;
  final List<SuspiciousIndicator> suspiciousIndicators;
  final Map<String, List<String>> extractedStrings;
  final DateTime analyzedAt;

  ApkInfo({
    required this.filePath,
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
    required this.nativeLibraries,
    required this.suspiciousIndicators,
    required this.extractedStrings,
    required this.analyzedAt,
  });

  int get riskScore {
    int score = 0;
    // Dangerous permissions
    const dangerousPerms = [
      'android.permission.READ_SMS',
      'android.permission.SEND_SMS',
      'android.permission.READ_CONTACTS',
      'android.permission.RECORD_AUDIO',
      'android.permission.CAMERA',
      'android.permission.ACCESS_FINE_LOCATION',
      'android.permission.READ_CALL_LOG',
      'android.permission.PROCESS_OUTGOING_CALLS',
    ];
    for (var perm in permissions) {
      if (dangerousPerms.contains(perm)) score += 10;
    }
    // Native code
    if (nativeLibraries.isNotEmpty) score += 15;
    // Suspicious indicators
    score += suspiciousIndicators.length * 20;
    return score.clamp(0, 100);
  }

  String get riskLevel {
    if (riskScore < 30) return 'Low';
    if (riskScore < 60) return 'Medium';
    if (riskScore < 80) return 'High';
    return 'Critical';
  }

  Map<String, dynamic> toJson() => {
        'filePath': filePath,
        'packageName': packageName,
        'appName': appName,
        'versionName': versionName,
        'versionCode': versionCode,
        'minSdkVersion': minSdkVersion,
        'targetSdkVersion': targetSdkVersion,
        'permissions': permissions,
        'activities': activities,
        'services': services,
        'receivers': receivers,
        'providers': providers,
        'nativeLibraries': nativeLibraries,
        'suspiciousIndicators':
            suspiciousIndicators.map((e) => e.toJson()).toList(),
        'extractedStrings': extractedStrings,
        'analyzedAt': analyzedAt.toIso8601String(),
      };
}

class SuspiciousIndicator {
  final String type;
  final String description;
  final String location;
  final SeverityLevel severity;

  SuspiciousIndicator({
    required this.type,
    required this.description,
    required this.location,
    required this.severity,
  });

  Map<String, dynamic> toJson() => {
        'type': type,
        'description': description,
        'location': location,
        'severity': severity.name,
      };
}

enum SeverityLevel { info, low, medium, high, critical }
