/// Model for captured events during analysis
class CapturedEvent {
  final String id;
  final DateTime timestamp;
  final EventType type;
  final String source;
  final Map<String, dynamic> data;
  final String? stackTrace;

  CapturedEvent({
    required this.id,
    required this.timestamp,
    required this.type,
    required this.source,
    required this.data,
    this.stackTrace,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'timestamp': timestamp.toIso8601String(),
        'type': type.name,
        'source': source,
        'data': data,
        'stackTrace': stackTrace,
      };

  factory CapturedEvent.fromJson(Map<String, dynamic> json) => CapturedEvent(
        id: json['id'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        type: EventType.values.byName(json['type'] as String),
        source: json['source'] as String,
        data: json['data'] as Map<String, dynamic>,
        stackTrace: json['stackTrace'] as String?,
      );
}

enum EventType {
  httpRequest,
  httpResponse,
  fileRead,
  fileWrite,
  cryptoOperation,
  apiCall,
  intentSent,
  intentReceived,
  databaseQuery,
  sharedPrefAccess,
  nativeCall,
  sslPinningAttempt,
  rootDetection,
  debuggerDetection,
}

extension EventTypeExt on EventType {
  String get displayName {
    switch (this) {
      case EventType.httpRequest:
        return 'HTTP Request';
      case EventType.httpResponse:
        return 'HTTP Response';
      case EventType.fileRead:
        return 'File Read';
      case EventType.fileWrite:
        return 'File Write';
      case EventType.cryptoOperation:
        return 'Crypto Operation';
      case EventType.apiCall:
        return 'API Call';
      case EventType.intentSent:
        return 'Intent Sent';
      case EventType.intentReceived:
        return 'Intent Received';
      case EventType.databaseQuery:
        return 'Database Query';
      case EventType.sharedPrefAccess:
        return 'SharedPrefs Access';
      case EventType.nativeCall:
        return 'Native Call';
      case EventType.sslPinningAttempt:
        return 'SSL Pinning';
      case EventType.rootDetection:
        return 'Root Detection';
      case EventType.debuggerDetection:
        return 'Debugger Detection';
    }
  }

  String get color {
    switch (this) {
      case EventType.httpRequest:
      case EventType.httpResponse:
        return '#3498db';
      case EventType.fileRead:
      case EventType.fileWrite:
        return '#9b59b6';
      case EventType.cryptoOperation:
        return '#e74c3c';
      case EventType.apiCall:
        return '#2ecc71';
      case EventType.intentSent:
      case EventType.intentReceived:
        return '#f39c12';
      case EventType.databaseQuery:
        return '#1abc9c';
      case EventType.sharedPrefAccess:
        return '#34495e';
      case EventType.nativeCall:
        return '#e67e22';
      case EventType.sslPinningAttempt:
      case EventType.rootDetection:
      case EventType.debuggerDetection:
        return '#c0392b';
    }
  }
}
