import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import '../services/android_platform_service.dart';

/// Screen showing installed apps on the current Android device
class InstalledAppsScreen extends StatefulWidget {
  const InstalledAppsScreen({super.key});

  @override
  State<InstalledAppsScreen> createState() => _InstalledAppsScreenState();
}

class _InstalledAppsScreenState extends State<InstalledAppsScreen>
    with SingleTickerProviderStateMixin {
  final _platformService = AndroidPlatformService();
  List<InstalledApp> _allApps = [];
  List<InstalledApp> _filteredApps = [];
  DeviceInfo? _deviceInfo;
  bool _isLoading = true;
  bool _showSystemApps = true; // Show all apps by default
  String _searchQuery = '';
  String _sortBy = 'name'; // name, package, date, permissions
  final _searchController = TextEditingController();
  late TabController _tabController;
  InstalledApp? _selectedApp;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    
    final apps = await _platformService.getInstalledPackages();
    final deviceInfo = await _platformService.getDeviceInfo();
    
    // Debug logging
    debugPrint('[InstalledApps] Total apps retrieved: ${apps.length}');
    debugPrint('[InstalledApps] System apps: ${apps.where((a) => a.isSystem).length}');
    debugPrint('[InstalledApps] User apps: ${apps.where((a) => !a.isSystem).length}');
    
    setState(() {
      _allApps = apps;
      _deviceInfo = deviceInfo;
      _isLoading = false;
      _applyFilters();
    });
  }

  void _applyFilters() {
    var filtered = _allApps.where((app) {
      // Filter system apps
      if (!_showSystemApps && app.isSystem) return false;
      
      // Search filter
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        return app.appName.toLowerCase().contains(query) ||
            app.packageName.toLowerCase().contains(query);
      }
      
      return true;
    }).toList();

    // Sort
    switch (_sortBy) {
      case 'name':
        filtered.sort((a, b) => a.appName.toLowerCase().compareTo(b.appName.toLowerCase()));
        break;
      case 'package':
        filtered.sort((a, b) => a.packageName.compareTo(b.packageName));
        break;
      case 'date':
        filtered.sort((a, b) => b.lastUpdateTime.compareTo(a.lastUpdateTime));
        break;
      case 'permissions':
        filtered.sort((a, b) => b.permissions.length.compareTo(a.permissions.length));
        break;
    }

    setState(() => _filteredApps = filtered);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading installed apps...'),
          ],
        ),
      );
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    if (isMobile) {
      return _buildMobileLayout();
    } else {
      return _buildDesktopLayout();
    }
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        // Device Info Header
        if (_deviceInfo != null) _buildDeviceHeader(),
        
        // Search and Filter
        _buildSearchBar(),
        
        // Tabs
        TabBar(
          controller: _tabController,
          labelColor: const Color(0xFF00D084),
          tabs: [
            Tab(text: 'Apps (${_filteredApps.length})'),
            const Tab(text: 'Details'),
            const Tab(text: 'Permissions'),
          ],
        ),
        
        // Content
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildAppsList(),
              _selectedApp != null
                  ? _buildAppDetails(_selectedApp!)
                  : const Center(child: Text('Select an app')),
              _selectedApp != null
                  ? _buildPermissionsView(_selectedApp!)
                  : const Center(child: Text('Select an app')),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        // Left: Apps list
        SizedBox(
          width: 350,
          child: Column(
            children: [
              if (_deviceInfo != null) _buildDeviceHeader(),
              _buildSearchBar(),
              Expanded(child: _buildAppsList()),
            ],
          ),
        ),
        
        // Right: Details
        Expanded(
          child: _selectedApp != null
              ? SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAppDetails(_selectedApp!),
                      const SizedBox(height: 16),
                      _buildPermissionsView(_selectedApp!),
                    ],
                  ),
                )
              : const Center(
                  child: Text('Select an app to view details'),
                ),
        ),
      ],
    );
  }

  Widget _buildDeviceHeader() {
    final device = _deviceInfo!;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        border: Border(bottom: BorderSide(color: Colors.grey.shade800)),
      ),
      child: Row(
        children: [
          Icon(
            device.isEmulator ? Icons.computer : Icons.phone_android,
            color: const Color(0xFF00D084),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${device.manufacturer} ${device.model}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Android ${device.androidVersion} (API ${device.sdkVersion})',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          if (device.isEmulator)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                'EMULATOR',
                style: TextStyle(fontSize: 10, color: Colors.orange),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.refresh, size: 20),
            onPressed: _loadData,
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search apps...',
                prefixIcon: const Icon(Icons.search, size: 20),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear, size: 18),
                        onPressed: () {
                          _searchController.clear();
                          _searchQuery = '';
                          _applyFilters();
                        },
                      )
                    : null,
              ),
              onChanged: (value) {
                _searchQuery = value;
                _applyFilters();
              },
            ),
          ),
          const SizedBox(width: 8),
          PopupMenuButton<String>(
            icon: const Icon(Icons.sort),
            tooltip: 'Sort',
            onSelected: (value) {
              _sortBy = value;
              _applyFilters();
            },
            itemBuilder: (context) => [
              CheckedPopupMenuItem(
                value: 'name',
                checked: _sortBy == 'name',
                child: const Text('Name'),
              ),
              CheckedPopupMenuItem(
                value: 'package',
                checked: _sortBy == 'package',
                child: const Text('Package'),
              ),
              CheckedPopupMenuItem(
                value: 'date',
                checked: _sortBy == 'date',
                child: const Text('Last Updated'),
              ),
              CheckedPopupMenuItem(
                value: 'permissions',
                checked: _sortBy == 'permissions',
                child: const Text('Permissions'),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              _showSystemApps ? Icons.apps : Icons.apps_outlined,
              color: _showSystemApps ? const Color(0xFF00D084) : null,
            ),
            tooltip: _showSystemApps ? 'Hide system apps' : 'Show system apps',
            onPressed: () {
              _showSystemApps = !_showSystemApps;
              _applyFilters();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAppsList() {
    if (_filteredApps.isEmpty) {
      return Center(
        child: Text(
          _searchQuery.isNotEmpty
              ? 'No apps match your search'
              : 'No apps found',
          style: TextStyle(color: Colors.grey.shade500),
        ),
      );
    }

    return ListView.builder(
      itemCount: _filteredApps.length,
      itemBuilder: (context, index) {
        final app = _filteredApps[index];
        final isSelected = _selectedApp?.packageName == app.packageName;
        
        return ListTile(
          dense: true,
          selected: isSelected,
          selectedTileColor: const Color(0xFF00D084).withOpacity(0.1),
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: app.isSystem 
                ? Colors.grey.shade700 
                : const Color(0xFF00D084).withOpacity(0.2),
            child: Text(
              app.appName.isNotEmpty ? app.appName[0].toUpperCase() : '?',
              style: TextStyle(
                fontSize: 12,
                color: app.isSystem ? Colors.grey : const Color(0xFF00D084),
              ),
            ),
          ),
          title: Text(
            app.appName,
            style: const TextStyle(fontSize: 14),
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            app.packageName,
            style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (app.permissions.length > 5)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '${app.permissions.length}',
                    style: const TextStyle(fontSize: 10, color: Colors.orange),
                  ),
                ),
              if (app.isSystem)
                const Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Icon(Icons.android, size: 16, color: Colors.grey),
                ),
            ],
          ),
          onTap: () {
            setState(() => _selectedApp = app);
            if (MediaQuery.of(context).size.width < 600) {
              _tabController.animateTo(1);
            }
          },
        );
      },
    );
  }

  Widget _buildAppDetails(InstalledApp app) {
    final dateFormat = DateFormat('MMM d, yyyy HH:mm');
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: app.isSystem 
                      ? Colors.grey.shade700 
                      : const Color(0xFF00D084).withOpacity(0.2),
                  child: Text(
                    app.appName.isNotEmpty ? app.appName[0].toUpperCase() : '?',
                    style: TextStyle(
                      fontSize: 20,
                      color: app.isSystem ? Colors.grey : const Color(0xFF00D084),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        app.appName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'v${app.versionName} (${app.versionCode})',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                if (app.isSystem)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'SYSTEM',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
              ],
            ),
            const Divider(height: 24),
            _detailRow('Package', app.packageName),
            _detailRow('Version', '${app.versionName} (${app.versionCode})'),
            _detailRow('APK Path', app.sourceDir, isPath: true),
            _detailRow('Installed', dateFormat.format(app.firstInstallTime)),
            _detailRow('Updated', dateFormat.format(app.lastUpdateTime)),
            _detailRow('Enabled', app.enabled ? 'Yes' : 'No'),
            _detailRow('Permissions', '${app.permissions.length}'),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _analyzeApk(app),
                    icon: const Icon(Icons.search, size: 16),
                    label: const Text('Analyze APK'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailRow(String label, String value, {bool isPath = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 12,
                fontFamily: isPath ? 'monospace' : null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPermissionsView(InstalledApp app) {
    final dangerous = <String>[];
    final normal = <String>[];
    
    for (final perm in app.permissions) {
      if (_isDangerousPermission(perm)) {
        dangerous.add(perm);
      } else {
        normal.add(perm);
      }
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.security, size: 20),
                const SizedBox(width: 8),
                const Text(
                  'Permissions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (dangerous.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '${dangerous.length} Dangerous',
                      style: const TextStyle(fontSize: 10, color: Colors.red),
                    ),
                  ),
              ],
            ),
            const Divider(height: 16),
            if (dangerous.isNotEmpty) ...[
              const Text(
                'Dangerous Permissions',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              ...dangerous.map((p) => _permissionTile(p, isDangerous: true)),
              const SizedBox(height: 16),
            ],
            if (normal.isNotEmpty) ...[
              Text(
                'Other Permissions (${normal.length})',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              ...normal.take(20).map((p) => _permissionTile(p)),
              if (normal.length > 20)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    '... and ${normal.length - 20} more',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
            ],
            if (app.permissions.isEmpty)
              Text(
                'No permissions requested',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _permissionTile(String permission, {bool isDangerous = false}) {
    final shortName = permission.split('.').last;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(
            isDangerous ? Icons.warning : Icons.check_circle_outline,
            size: 14,
            color: isDangerous ? Colors.red : Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Tooltip(
              message: permission,
              child: Text(
                shortName,
                style: TextStyle(
                  fontSize: 11,
                  color: isDangerous ? Colors.red.shade300 : null,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isDangerousPermission(String permission) {
    const dangerous = [
      'CAMERA',
      'READ_CONTACTS',
      'WRITE_CONTACTS',
      'READ_CALENDAR',
      'WRITE_CALENDAR',
      'READ_CALL_LOG',
      'WRITE_CALL_LOG',
      'PROCESS_OUTGOING_CALLS',
      'RECORD_AUDIO',
      'READ_PHONE_STATE',
      'READ_PHONE_NUMBERS',
      'CALL_PHONE',
      'ADD_VOICEMAIL',
      'USE_SIP',
      'BODY_SENSORS',
      'SEND_SMS',
      'RECEIVE_SMS',
      'READ_SMS',
      'RECEIVE_WAP_PUSH',
      'RECEIVE_MMS',
      'READ_EXTERNAL_STORAGE',
      'WRITE_EXTERNAL_STORAGE',
      'ACCESS_FINE_LOCATION',
      'ACCESS_COARSE_LOCATION',
      'ACCESS_BACKGROUND_LOCATION',
      'ACTIVITY_RECOGNITION',
    ];
    return dangerous.any((d) => permission.contains(d));
  }

  void _analyzeApk(InstalledApp app) {
    // Navigate to analysis screen with this APK
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Analyzing ${app.appName}...'),
        backgroundColor: const Color(0xFF00D084),
      ),
    );
    
    // TODO: Integrate with APK analysis screen
    // For now, we can trigger analysis directly
  }
}
