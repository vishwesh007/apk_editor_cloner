import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../providers/analysis_provider.dart';
import '../providers/frida_provider.dart';
import '../models/captured_event.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  bool _includeApkAnalysis = true;
  bool _includeCapturedEvents = true;
  bool _includeFridaLogs = true;
  String? _lastExportPath;
  bool _exporting = false;

  @override
  Widget build(BuildContext context) {
    return Consumer2<AnalysisProvider, FridaProvider>(
      builder: (context, analysisProvider, fridaProvider, child) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Text(
                'Export Analysis Report',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Generate a comprehensive report of your analysis session',
                style: TextStyle(color: Colors.grey.shade400),
              ),
              const SizedBox(height: 32),

              // Report Options
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Options Card
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Report Contents',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            _ReportOption(
                              title: 'APK Static Analysis',
                              description:
                                  'Package info, permissions, components, suspicious indicators',
                              icon: Icons.android,
                              value: _includeApkAnalysis,
                              enabled: analysisProvider.currentApk != null,
                              onChanged: (value) {
                                setState(() => _includeApkAnalysis = value);
                              },
                            ),
                            const Divider(height: 32),
                            _ReportOption(
                              title: 'Captured Events',
                              description:
                                  '${fridaProvider.events.length} events captured during dynamic analysis',
                              icon: Icons.timeline,
                              value: _includeCapturedEvents,
                              enabled: fridaProvider.events.isNotEmpty,
                              onChanged: (value) {
                                setState(() => _includeCapturedEvents = value);
                              },
                            ),
                            const Divider(height: 32),
                            _ReportOption(
                              title: 'Frida Console Logs',
                              description:
                                  '${fridaProvider.logs.length} log entries from Frida scripts',
                              icon: Icons.terminal,
                              value: _includeFridaLogs,
                              enabled: fridaProvider.logs.isNotEmpty,
                              onChanged: (value) {
                                setState(() => _includeFridaLogs = value);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),

                  // Summary Card
                  SizedBox(
                    width: 300,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Analysis Summary',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            _SummaryItem(
                              label: 'APK Analyzed',
                              value: analysisProvider.currentApk?.appName ??
                                  'None',
                            ),
                            _SummaryItem(
                              label: 'Risk Score',
                              value: analysisProvider.currentApk != null
                                  ? '${analysisProvider.currentApk!.riskScore}/100 (${analysisProvider.currentApk!.riskLevel})'
                                  : 'N/A',
                              valueColor: analysisProvider.currentApk != null
                                  ? _getRiskColor(
                                      analysisProvider.currentApk!.riskLevel)
                                  : null,
                            ),
                            _SummaryItem(
                              label: 'Permissions',
                              value:
                                  '${analysisProvider.currentApk?.permissions.length ?? 0}',
                            ),
                            _SummaryItem(
                              label: 'Suspicious Indicators',
                              value:
                                  '${analysisProvider.currentApk?.suspiciousIndicators.length ?? 0}',
                              valueColor: (analysisProvider.currentApk
                                              ?.suspiciousIndicators.length ??
                                          0) >
                                      0
                                  ? Colors.red
                                  : null,
                            ),
                            _SummaryItem(
                              label: 'Captured Events',
                              value: '${fridaProvider.events.length}',
                            ),
                            const Divider(height: 32),
                            _SummaryItem(
                              label: 'Session Start',
                              value: DateFormat('yyyy-MM-dd HH:mm')
                                  .format(DateTime.now()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Event Statistics
              if (fridaProvider.events.isNotEmpty)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Event Statistics',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: _buildEventStats(fridaProvider.events),
                        ),
                      ],
                    ),
                  ),
                ),

              const SizedBox(height: 32),

              // Export Buttons
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: _exporting
                        ? null
                        : () => _exportJson(analysisProvider, fridaProvider),
                    icon: _exporting
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.code),
                    label: const Text('Export as JSON'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: _exporting
                        ? null
                        : () => _exportHtml(analysisProvider, fridaProvider),
                    icon: const Icon(Icons.html),
                    label: const Text('Export as HTML'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                    ),
                  ),
                ],
              ),

              if (_lastExportPath != null) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.green.withOpacity(0.3)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Report exported successfully',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              _lastExportPath!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildEventStats(List<CapturedEvent> events) {
    final stats = <EventType, int>{};
    for (final event in events) {
      stats[event.type] = (stats[event.type] ?? 0) + 1;
    }

    return stats.entries.map((entry) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: _getEventColor(entry.key).withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _getEventColor(entry.key).withOpacity(0.3),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${entry.value}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _getEventColor(entry.key),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              entry.key.displayName,
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
      );
    }).toList();
  }

  Color _getEventColor(EventType type) {
    switch (type) {
      case EventType.httpRequest:
      case EventType.httpResponse:
        return Colors.blue;
      case EventType.fileRead:
      case EventType.fileWrite:
        return Colors.purple;
      case EventType.cryptoOperation:
        return Colors.red;
      case EventType.apiCall:
        return Colors.green;
      case EventType.intentSent:
      case EventType.intentReceived:
        return Colors.orange;
      case EventType.databaseQuery:
        return Colors.teal;
      case EventType.sharedPrefAccess:
        return Colors.indigo;
      case EventType.nativeCall:
        return Colors.brown;
      case EventType.sslPinningAttempt:
      case EventType.rootDetection:
      case EventType.debuggerDetection:
        return Colors.red;
    }
  }

  Color _getRiskColor(String level) {
    switch (level) {
      case 'Low':
        return Colors.green;
      case 'Medium':
        return Colors.orange;
      case 'High':
        return Colors.deepOrange;
      case 'Critical':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Future<void> _exportJson(
    AnalysisProvider analysisProvider,
    FridaProvider fridaProvider,
  ) async {
    setState(() => _exporting = true);

    try {
      final report = <String, dynamic>{
        'generatedAt': DateTime.now().toIso8601String(),
        'tool': 'DroidAnalyst',
        'version': '1.0.0',
      };

      if (_includeApkAnalysis && analysisProvider.currentApk != null) {
        report['apkAnalysis'] = analysisProvider.currentApk!.toJson();
      }

      if (_includeCapturedEvents && fridaProvider.events.isNotEmpty) {
        report['capturedEvents'] =
            fridaProvider.events.map((e) => e.toJson()).toList();
      }

      if (_includeFridaLogs && fridaProvider.logs.isNotEmpty) {
        report['fridaLogs'] = fridaProvider.logs;
      }

      // Use user home directory for reports
      final home = Platform.environment['USERPROFILE'] ?? Platform.environment['HOME'] ?? '.';
      final reportsDir = Directory('$home/DroidAnalyst/Reports');
      if (!await reportsDir.exists()) {
        await reportsDir.create(recursive: true);
      }
      final timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      final file = File('${reportsDir.path}/droid_analyst_report_$timestamp.json');

      await file.writeAsString(
        const JsonEncoder.withIndent('  ').convert(report),
      );

      setState(() => _lastExportPath = file.path);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Export failed: $e')),
        );
      }
    }

    setState(() => _exporting = false);
  }

  Future<void> _exportHtml(
    AnalysisProvider analysisProvider,
    FridaProvider fridaProvider,
  ) async {
    setState(() => _exporting = true);

    try {
      final html = _generateHtmlReport(analysisProvider, fridaProvider);

      // Use user home directory for reports
      final home = Platform.environment['USERPROFILE'] ?? Platform.environment['HOME'] ?? '.';
      final reportsDir = Directory('$home/DroidAnalyst/Reports');
      if (!await reportsDir.exists()) {
        await reportsDir.create(recursive: true);
      }
      final timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      final file = File('${reportsDir.path}/droid_analyst_report_$timestamp.html');

      await file.writeAsString(html);

      setState(() => _lastExportPath = file.path);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Export failed: $e')),
        );
      }
    }

    setState(() => _exporting = false);
  }

  String _generateHtmlReport(
    AnalysisProvider analysisProvider,
    FridaProvider fridaProvider,
  ) {
    final buffer = StringBuffer();
    final apk = analysisProvider.currentApk;

    buffer.writeln('''
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>DroidAnalyst Report</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
      background: #0d1117;
      color: #c9d1d9;
      margin: 0;
      padding: 24px;
    }
    .container { max-width: 1200px; margin: 0 auto; }
    h1 { color: #00d084; }
    h2 { color: #58a6ff; border-bottom: 1px solid #30363d; padding-bottom: 8px; }
    .card {
      background: #161b22;
      border-radius: 8px;
      padding: 16px;
      margin-bottom: 16px;
    }
    .risk-badge {
      display: inline-block;
      padding: 4px 12px;
      border-radius: 16px;
      font-weight: bold;
    }
    .risk-low { background: #238636; }
    .risk-medium { background: #d29922; }
    .risk-high { background: #da3633; }
    .risk-critical { background: #f85149; }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      text-align: left;
      padding: 8px;
      border-bottom: 1px solid #30363d;
    }
    th { color: #8b949e; }
    .indicator {
      padding: 8px;
      margin: 4px 0;
      border-radius: 4px;
      border-left: 4px solid;
    }
    .indicator-high { background: rgba(248, 81, 73, 0.1); border-color: #f85149; }
    .indicator-medium { background: rgba(210, 153, 34, 0.1); border-color: #d29922; }
    .indicator-low { background: rgba(35, 134, 54, 0.1); border-color: #238636; }
    code {
      background: #0d1117;
      padding: 2px 6px;
      border-radius: 4px;
      font-family: monospace;
    }
    pre {
      background: #0d1117;
      padding: 16px;
      border-radius: 8px;
      overflow-x: auto;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🔍 DroidAnalyst Report</h1>
    <p>Generated: ${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())}</p>
''');

    // APK Analysis Section
    if (_includeApkAnalysis && apk != null) {
      buffer.writeln('''
    <h2>📱 APK Analysis</h2>
    <div class="card">
      <h3>${apk.appName.isNotEmpty ? apk.appName : 'Unknown App'}</h3>
      <p><strong>Package:</strong> ${apk.packageName}</p>
      <p><strong>Version:</strong> ${apk.versionName} (${apk.versionCode})</p>
      <p><strong>SDK:</strong> Min ${apk.minSdkVersion}, Target ${apk.targetSdkVersion}</p>
      <p><strong>Risk Score:</strong> <span class="risk-badge risk-${apk.riskLevel.toLowerCase()}">${apk.riskScore}/100 - ${apk.riskLevel}</span></p>
    </div>

    <h3>🔐 Permissions (${apk.permissions.length})</h3>
    <div class="card">
      <ul>
        ${apk.permissions.map((p) => '<li><code>${p.replaceFirst('android.permission.', '')}</code></li>').join('\n        ')}
      </ul>
    </div>
''');

      if (apk.suspiciousIndicators.isNotEmpty) {
        buffer.writeln('''
    <h3>⚠️ Suspicious Indicators (${apk.suspiciousIndicators.length})</h3>
    <div class="card">
      ${apk.suspiciousIndicators.map((i) => '''
      <div class="indicator indicator-${i.severity.name}">
        <strong>${i.type}</strong> - ${i.description}<br>
        <small>${i.location}</small>
      </div>''').join('\n      ')}
    </div>
''');
      }
    }

    // Events Section
    if (_includeCapturedEvents && fridaProvider.events.isNotEmpty) {
      buffer.writeln('''
    <h2>📊 Captured Events (${fridaProvider.events.length})</h2>
    <div class="card">
      <table>
        <thead>
          <tr>
            <th>Time</th>
            <th>Type</th>
            <th>Source</th>
            <th>Data</th>
          </tr>
        </thead>
        <tbody>
          ${fridaProvider.events.take(100).map((e) => '''
          <tr>
            <td>${DateFormat('HH:mm:ss').format(e.timestamp)}</td>
            <td>${e.type.displayName}</td>
            <td><code>${e.source}</code></td>
            <td><code>${e.data.toString().substring(0, e.data.toString().length.clamp(0, 100))}</code></td>
          </tr>''').join('\n          ')}
        </tbody>
      </table>
    </div>
''');
    }

    // Logs Section
    if (_includeFridaLogs && fridaProvider.logs.isNotEmpty) {
      buffer.writeln('''
    <h2>📝 Frida Logs</h2>
    <div class="card">
      <pre>${fridaProvider.logs.take(200).join('\n')}</pre>
    </div>
''');
    }

    buffer.writeln('''
  </div>
</body>
</html>
''');

    return buffer.toString();
  }
}

class _ReportOption extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;

  const _ReportOption({
    required this.title,
    required this.description,
    required this.icon,
    required this.value,
    required this.enabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1.0 : 0.5,
      child: Row(
        children: [
          Icon(icon, size: 32),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value && enabled,
            onChanged: enabled ? onChanged : null,
          ),
        ],
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _SummaryItem({
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey.shade400),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
