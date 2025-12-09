import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb, defaultTargetPlatform, TargetPlatform;
import 'apk_analysis_screen.dart';
import 'device_screen.dart';
import 'frida_screen.dart';
import 'events_screen.dart';
import 'reports_screen.dart';
import 'installed_apps_screen.dart';
import 'termux_screen.dart';
import 'apk_repacker_screen.dart';
import 'antisplit_screen.dart';
import '../widgets/status_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  // Check if running on Android natively (not web)
  bool get _isAndroid => !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  List<NavigationItem> get _navItems {
    if (_isAndroid) {
      // Android-specific navigation: show installed apps instead of ADB devices
      return [
        NavigationItem(
          icon: Icons.apps,
          label: 'Apps',
          screen: const InstalledAppsScreen(),
        ),
        NavigationItem(
          icon: Icons.search,
          label: 'Analyze',
          screen: const ApkAnalysisScreen(),
        ),
        NavigationItem(
          icon: Icons.build,
          label: 'Repacker',
          screen: const ApkRepackerScreen(),
        ),
        NavigationItem(
          icon: Icons.call_split,
          label: 'AntiSplit',
          screen: const AntiSplitScreen(),
        ),
        NavigationItem(
          icon: Icons.bug_report,
          label: 'Runtime',
          screen: const FridaScreen(),
        ),
        NavigationItem(
          icon: Icons.terminal,
          label: 'Termux',
          screen: const TermuxScreen(),
        ),
        NavigationItem(
          icon: Icons.assessment,
          label: 'Reports',
          screen: const ReportsScreen(),
        ),
      ];
    } else {
      // Desktop/Web: Use ADB-based device management
      return [
        NavigationItem(
          icon: Icons.phone_android,
          label: 'Devices',
          screen: const DeviceScreen(),
        ),
        NavigationItem(
          icon: Icons.search,
          label: 'APK',
          screen: const ApkAnalysisScreen(),
        ),
        NavigationItem(
          icon: Icons.bug_report,
          label: 'Frida',
          screen: const FridaScreen(),
        ),
        NavigationItem(
          icon: Icons.timeline,
          label: 'Events',
          screen: const EventsScreen(),
        ),
        NavigationItem(
          icon: Icons.assessment,
          label: 'Reports',
          screen: const ReportsScreen(),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    if (isMobile) {
      return _buildMobileLayout();
    } else {
      return _buildDesktopLayout();
    }
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      body: Column(
        children: [
          const StatusBar(),
          const Divider(height: 1),
          Expanded(
            child: _navItems[_selectedIndex].screen,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0D1117),
        selectedItemColor: const Color(0xFF00D084),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: _navItems
            .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.icon, size: 20),
                  label: item.label,
                ))
            .toList(),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          // Side Navigation
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() => _selectedIndex = index);
            },
            extended: false,
            backgroundColor: const Color(0xFF0D1117),
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00D084).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.security,
                      color: Color(0xFF00D084),
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Droid\nAnalyst',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            destinations: _navItems
                .map(
                  (item) => NavigationRailDestination(
                    icon: Icon(item.icon),
                    selectedIcon: Icon(
                      item.icon,
                      color: const Color(0xFF00D084),
                    ),
                    label: Text(item.label),
                  ),
                )
                .toList(),
          ),
          const VerticalDivider(width: 1, thickness: 1),
          // Main Content
          Expanded(
            child: Column(
              children: [
                // Status Bar
                const StatusBar(),
                const Divider(height: 1),
                // Screen Content
                Expanded(
                  child: _navItems[_selectedIndex].screen,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String label;
  final Widget screen;

  NavigationItem({
    required this.icon,
    required this.label,
    required this.screen,
  });
}
