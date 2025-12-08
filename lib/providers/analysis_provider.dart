import 'dart:io';
import 'package:flutter/foundation.dart';
import '../models/apk_info.dart';
import '../services/apk_analyzer_service.dart';

class AnalysisProvider extends ChangeNotifier {
  final ApkAnalyzerService _analyzerService = ApkAnalyzerService();

  final List<ApkInfo> _analyzedApks = [];
  ApkInfo? _currentApk;
  bool _isAnalyzing = false;
  double _progress = 0;
  String? _error;

  List<ApkInfo> get analyzedApks => _analyzedApks;
  ApkInfo? get currentApk => _currentApk;
  bool get isAnalyzing => _isAnalyzing;
  double get progress => _progress;
  String? get error => _error;

  Future<ApkInfo?> analyzeApk(String apkPath) async {
    _isAnalyzing = true;
    _progress = 0;
    _error = null;
    notifyListeners();

    try {
      _progress = 0.1;
      notifyListeners();

      // Verify file exists
      final file = File(apkPath);
      if (!await file.exists()) {
        _error = 'File not found: $apkPath';
        _isAnalyzing = false;
        notifyListeners();
        return null;
      }

      _progress = 0.3;
      notifyListeners();

      // Analyze APK
      final apkInfo = await _analyzerService.analyzeApk(apkPath);

      _progress = 0.7;
      notifyListeners();

      if (apkInfo != null) {
        _currentApk = apkInfo;
        
        // Add to history if not already present
        final exists = _analyzedApks.any(
          (a) => a.filePath == apkPath,
        );
        if (!exists) {
          _analyzedApks.insert(0, apkInfo);
        }

        _progress = 1.0;
      } else {
        _error = 'Failed to analyze APK';
      }
    } catch (e) {
      _error = 'Analysis error: $e';
    }

    _isAnalyzing = false;
    notifyListeners();
    return _currentApk;
  }

  Future<Map<String, String>?> getHashes(String apkPath) async {
    try {
      return await _analyzerService.getFileHashes(apkPath);
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, String>?> getSignatureInfo(String apkPath) async {
    try {
      return await _analyzerService.getSignatureInfo(apkPath);
    } catch (e) {
      return null;
    }
  }

  void selectApk(ApkInfo apk) {
    _currentApk = apk;
    notifyListeners();
  }

  void clearCurrent() {
    _currentApk = null;
    _error = null;
    notifyListeners();
  }

  void removeFromHistory(String filePath) {
    _analyzedApks.removeWhere((a) => a.filePath == filePath);
    if (_currentApk?.filePath == filePath) {
      _currentApk = null;
    }
    notifyListeners();
  }

  void clearHistory() {
    _analyzedApks.clear();
    _currentApk = null;
    notifyListeners();
  }

  /// Export analysis report to JSON
  String exportToJson() {
    if (_currentApk == null) return '{}';
    return _currentApk!.toJson().toString();
  }
}
