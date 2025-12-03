/// Model representing a connected Android device
class AndroidDevice {
  final String id;
  final String model;
  final String androidVersion;
  final bool isRooted;
  final bool fridaServerRunning;
  final DeviceStatus status;

  AndroidDevice({
    required this.id,
    required this.model,
    required this.androidVersion,
    this.isRooted = false,
    this.fridaServerRunning = false,
    this.status = DeviceStatus.disconnected,
  });

  AndroidDevice copyWith({
    String? id,
    String? model,
    String? androidVersion,
    bool? isRooted,
    bool? fridaServerRunning,
    DeviceStatus? status,
  }) {
    return AndroidDevice(
      id: id ?? this.id,
      model: model ?? this.model,
      androidVersion: androidVersion ?? this.androidVersion,
      isRooted: isRooted ?? this.isRooted,
      fridaServerRunning: fridaServerRunning ?? this.fridaServerRunning,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'model': model,
        'androidVersion': androidVersion,
        'isRooted': isRooted,
        'fridaServerRunning': fridaServerRunning,
        'status': status.name,
      };

  factory AndroidDevice.fromJson(Map<String, dynamic> json) => AndroidDevice(
        id: json['id'] as String,
        model: json['model'] as String,
        androidVersion: json['androidVersion'] as String,
        isRooted: json['isRooted'] as bool? ?? false,
        fridaServerRunning: json['fridaServerRunning'] as bool? ?? false,
        status: DeviceStatus.values.byName(json['status'] as String),
      );
}

enum DeviceStatus {
  connected,
  disconnected,
  unauthorized,
  offline,
}
