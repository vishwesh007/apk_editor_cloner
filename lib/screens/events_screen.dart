import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../providers/frida_provider.dart';
import '../models/captured_event.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  EventType? _filterType;
  String _searchQuery = '';
  CapturedEvent? _selectedEvent;

  @override
  Widget build(BuildContext context) {
    return Consumer<FridaProvider>(
      builder: (context, provider, child) {
        final filteredEvents = provider.events.where((e) {
          if (_filterType != null && e.type != _filterType) return false;
          if (_searchQuery.isNotEmpty) {
            final data = e.data.toString().toLowerCase();
            final source = e.source.toLowerCase();
            final query = _searchQuery.toLowerCase();
            return data.contains(query) || source.contains(query);
          }
          return true;
        }).toList();

        return Row(
          children: [
            // Events List
            Expanded(
              flex: 2,
              child: Card(
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Header
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.timeline),
                              const SizedBox(width: 8),
                              const Text(
                                'Captured Events',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '${filteredEvents.length} events',
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              const SizedBox(width: 16),
                              IconButton(
                                icon: const Icon(Icons.delete_outline),
                                onPressed: provider.clearEvents,
                                tooltip: 'Clear events',
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              // Search
                              Expanded(
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Search events...',
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(),
                                    isDense: true,
                                  ),
                                  onChanged: (value) {
                                    setState(() => _searchQuery = value);
                                  },
                                ),
                              ),
                              const SizedBox(width: 16),
                              // Filter
                              DropdownButton<EventType?>(
                                value: _filterType,
                                hint: const Text('All Types'),
                                items: [
                                  const DropdownMenuItem(
                                    value: null,
                                    child: Text('All Types'),
                                  ),
                                  ...EventType.values.map(
                                    (type) => DropdownMenuItem(
                                      value: type,
                                      child: Text(type.displayName),
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() => _filterType = value);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    // Events List
                    Expanded(
                      child: filteredEvents.isEmpty
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.inbox,
                                    size: 64,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    provider.isAttached
                                        ? 'Waiting for events...'
                                        : 'Attach to a process to capture events',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : ListView.builder(
                              itemCount: filteredEvents.length,
                              itemBuilder: (context, index) {
                                final event = filteredEvents[index];
                                final isSelected =
                                    event.id == _selectedEvent?.id;
                                return _EventListTile(
                                  event: event,
                                  isSelected: isSelected,
                                  onTap: () {
                                    setState(() => _selectedEvent = event);
                                  },
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ),

            // Event Details
            Expanded(
              flex: 1,
              child: Card(
                margin: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                child: _selectedEvent == null
                    ? const Center(
                        child: Text(
                          'Select an event to view details',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : _buildEventDetails(_selectedEvent!),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEventDetails(CapturedEvent event) {
    final timeFormat = DateFormat('HH:mm:ss.SSS');

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getEventColor(event.type).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getEventIcon(event.type),
                  color: _getEventColor(event.type),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.type.displayName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      timeFormat.format(event.timestamp),
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Source
          _DetailSection(
            title: 'Source',
            content: event.source,
          ),

          const SizedBox(height: 16),

          // Data
          _DetailSection(
            title: 'Data',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                _formatJson(event.data),
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
            ),
          ),

          // Stack Trace
          if (event.stackTrace != null) ...[
            const SizedBox(height: 16),
            _DetailSection(
              title: 'Stack Trace',
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SelectableText(
                  event.stackTrace!,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _formatJson(Map<String, dynamic> data) {
    final buffer = StringBuffer();
    data.forEach((key, value) {
      buffer.writeln('$key: $value');
    });
    return buffer.toString();
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

  IconData _getEventIcon(EventType type) {
    switch (type) {
      case EventType.httpRequest:
      case EventType.httpResponse:
        return Icons.http;
      case EventType.fileRead:
        return Icons.file_download;
      case EventType.fileWrite:
        return Icons.file_upload;
      case EventType.cryptoOperation:
        return Icons.lock;
      case EventType.apiCall:
        return Icons.api;
      case EventType.intentSent:
      case EventType.intentReceived:
        return Icons.send;
      case EventType.databaseQuery:
        return Icons.storage;
      case EventType.sharedPrefAccess:
        return Icons.settings;
      case EventType.nativeCall:
        return Icons.memory;
      case EventType.sslPinningAttempt:
        return Icons.security;
      case EventType.rootDetection:
        return Icons.admin_panel_settings;
      case EventType.debuggerDetection:
        return Icons.bug_report;
    }
  }
}

class _EventListTile extends StatelessWidget {
  final CapturedEvent event;
  final bool isSelected;
  final VoidCallback onTap;

  const _EventListTile({
    required this.event,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm:ss');
    final color = _getColor(event.type);

    return ListTile(
      selected: isSelected,
      selectedTileColor: color.withOpacity(0.1),
      leading: Container(
        width: 8,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      title: Text(
        event.type.displayName,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        event.source,
        style: const TextStyle(fontSize: 11),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        timeFormat.format(event.timestamp),
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey.shade500,
        ),
      ),
      onTap: onTap,
    );
  }

  Color _getColor(EventType type) {
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
}

class _DetailSection extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? child;

  const _DetailSection({
    required this.title,
    this.content,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(height: 8),
        if (child != null)
          child!
        else
          Text(
            content ?? '',
            style: const TextStyle(fontSize: 14),
          ),
      ],
    );
  }
}
