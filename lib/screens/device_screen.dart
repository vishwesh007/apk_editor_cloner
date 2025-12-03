import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/device_provider.dart';
import '../models/device.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  List<String> _packages = [];
  bool _loadingPackages = false;
  String _shellOutput = '';
  final _shellController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Consumer<DeviceProvider>(
      builder: (context, deviceProvider, child) {
        if (isMobile) {
          // Mobile: Single column with device list and details
          return _buildMobileLayout(deviceProvider);
        } else {
          // Desktop: Side-by-side layout
          return _buildDesktopLayout(deviceProvider);
        }
      },
    );
  }

  Widget _buildMobileLayout(DeviceProvider deviceProvider) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          // Compact device selector
          Card(
            child: ExpansionTile(
              leading: Icon(
                Icons.phone_android,
                color: deviceProvider.selectedDevice != null
                    ? Colors.green
                    : Colors.grey,
              ),
              title: Text(
                deviceProvider.selectedDevice?.model ?? 'Select Device',
                style: const TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: deviceProvider.selectedDevice != null
                  ? Text(
                      deviceProvider.selectedDevice!.id,
                      style: const TextStyle(fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    )
                  : null,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${deviceProvider.devices.length}',
                      style: TextStyle(color: Colors.grey.shade500)),
                  IconButton(
                    icon: deviceProvider.isLoading
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.refresh, size: 18),
                    onPressed: deviceProvider.refreshDevices,
                  ),
                ],
              ),
              children: deviceProvider.devices.isEmpty
                  ? [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'No devices found',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                    ]
                  : deviceProvider.devices.map((device) {
                      final isSelected =
                          device.id == deviceProvider.selectedDevice?.id;
                      return ListTile(
                        dense: true,
                        selected: isSelected,
                        selectedTileColor:
                            const Color(0xFF00D084).withOpacity(0.1),
                        leading: Icon(
                          Icons.phone_android,
                          size: 18,
                          color: device.status == DeviceStatus.connected
                              ? Colors.green
                              : Colors.grey,
                        ),
                        title: Text(device.model,
                            style: const TextStyle(fontSize: 13)),
                        subtitle:
                            Text(device.id, style: const TextStyle(fontSize: 10)),
                        onTap: () {
                          deviceProvider.selectDevice(device);
                          _loadPackages();
                        },
                      );
                    }).toList(),
            ),
          ),
          const SizedBox(height: 8),
          // Device details
          if (deviceProvider.selectedDevice != null)
            _buildMobileDeviceDetails(deviceProvider)
          else
            const Card(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Center(
                  child: Text(
                    'Tap above to select a device',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMobileDeviceDetails(DeviceProvider deviceProvider) {
    final device = deviceProvider.selectedDevice!;
    return Column(
      children: [
        // Device Info Card
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.phone_android, size: 32),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(device.model,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis),
                          Text(device.id,
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey.shade500),
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                    _StatusChip(
                      label: device.status.name.toUpperCase(),
                      color: device.status == DeviceStatus.connected
                          ? Colors.green
                          : Colors.red,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Info row - wrapped for mobile
                Wrap(
                  spacing: 16,
                  runSpacing: 8,
                  children: [
                    _CompactInfoChip(
                        icon: Icons.android,
                        label: 'v${device.androidVersion}'),
                    _CompactInfoChip(
                      icon: Icons.admin_panel_settings,
                      label: device.isRooted ? 'Rooted' : 'Not Rooted',
                      color: device.isRooted ? Colors.orange : null,
                    ),
                    _CompactInfoChip(
                      icon: Icons.bug_report,
                      label: device.fridaServerRunning ? 'Frida On' : 'Frida Off',
                      color:
                          device.fridaServerRunning ? Colors.green : Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Action buttons
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (!device.fridaServerRunning)
                      ElevatedButton.icon(
                        onPressed: () async {
                          final success = await deviceProvider.startFridaServer();
                          if (!success && mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Failed to start Frida server')),
                            );
                          }
                        },
                        icon: const Icon(Icons.play_arrow, size: 16),
                        label: const Text('Start Frida', style: TextStyle(fontSize: 12)),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                        ),
                      ),
                    ElevatedButton.icon(
                      onPressed: () => deviceProvider.forwardFridaPort(),
                      icon: const Icon(Icons.swap_horiz, size: 16),
                      label: const Text('Forward Port', style: TextStyle(fontSize: 12)),
                      style: ElevatedButton.styleFrom(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Shell access (mobile-friendly)
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Shell', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _shellController,
                        decoration: const InputDecoration(
                          hintText: 'Command...',
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                        ),
                        style: const TextStyle(fontSize: 12),
                        onSubmitted: (_) => _executeShell(deviceProvider),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () => _executeShell(deviceProvider),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                      ),
                      child: const Text('Run', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                if (_shellOutput.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(maxHeight: 150),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: SingleChildScrollView(
                      child: SelectableText(
                        _shellOutput,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 10,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout(DeviceProvider deviceProvider) {
    return Row(
      children: [
        // Device List
        SizedBox(
          width: 280,
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          'Connected Devices',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: deviceProvider.isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.refresh),
                        onPressed: deviceProvider.refreshDevices,
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: deviceProvider.devices.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone_android,
                                  size: 48, color: Colors.grey.shade700),
                              const SizedBox(height: 16),
                              Text('No devices found',
                                  style: TextStyle(color: Colors.grey.shade500)),
                              const SizedBox(height: 8),
                              Text('Connect via USB or ADB WiFi',
                                  style: TextStyle(
                                      color: Colors.grey.shade600, fontSize: 12)),
                            ],
                          ),
                        )
                      : ListView.builder(
                          itemCount: deviceProvider.devices.length,
                          itemBuilder: (context, index) {
                            final device = deviceProvider.devices[index];
                            final isSelected = device.id ==
                                deviceProvider.selectedDevice?.id;
                            return _DeviceListTile(
                              device: device,
                              isSelected: isSelected,
                              onTap: () {
                                deviceProvider.selectDevice(device);
                                _loadPackages();
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
        // Device Details
        Expanded(
          child: deviceProvider.selectedDevice == null
              ? const Center(
                  child: Text('Select a device to view details',
                      style: TextStyle(color: Colors.grey)),
                )
              : _buildDeviceDetails(deviceProvider),
        ),
      ],
    );
  }

  Widget _buildDeviceDetails(DeviceProvider deviceProvider) {
    final device = deviceProvider.selectedDevice!;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Device Info Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.phone_android, size: 48),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              device.model,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              device.id,
                              style: TextStyle(color: Colors.grey.shade500),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      _StatusChip(
                        label: device.status.name.toUpperCase(),
                        color: device.status == DeviceStatus.connected
                            ? Colors.green
                            : Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      _InfoTile(
                        icon: Icons.android,
                        label: 'Android',
                        value: device.androidVersion,
                      ),
                      _InfoTile(
                        icon: Icons.admin_panel_settings,
                        label: 'Root',
                        value: device.isRooted ? 'Yes' : 'No',
                        valueColor: device.isRooted ? Colors.orange : null,
                      ),
                      _InfoTile(
                        icon: Icons.bug_report,
                        label: 'Frida Server',
                        value: device.fridaServerRunning ? 'Running' : 'Stopped',
                        valueColor: device.fridaServerRunning
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      if (!device.fridaServerRunning)
                        ElevatedButton.icon(
                          onPressed: () async {
                            final success =
                                await deviceProvider.startFridaServer();
                            if (!success && mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Failed to start Frida server',
                                  ),
                                ),
                              );
                            }
                          },
                          icon: const Icon(Icons.play_arrow),
                          label: const Text('Start Frida Server'),
                        ),
                      ElevatedButton.icon(
                        onPressed: () => deviceProvider.forwardFridaPort(),
                        icon: const Icon(Icons.swap_horiz),
                        label: const Text('Forward Port'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Installed Packages
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          'Installed Packages (3rd Party)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${_packages.length} apps',
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: _loadingPackages
                                ? const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Icon(Icons.refresh, size: 20),
                            onPressed: _loadPackages,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                SizedBox(
                  height: 200,
                  child: _packages.isEmpty
                      ? const Center(child: Text('No packages loaded'))
                      : ListView.builder(
                          itemCount: _packages.length,
                          itemBuilder: (context, index) {
                            final pkg = _packages[index];
                            return ListTile(
                              dense: true,
                              leading: const Icon(Icons.android, size: 20),
                              title: Text(
                                pkg,
                                style: const TextStyle(fontSize: 13),
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.play_arrow, size: 18),
                                    onPressed: () =>
                                        deviceProvider.startApp(pkg),
                                    tooltip: 'Start',
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.stop, size: 18),
                                    onPressed: () =>
                                        deviceProvider.stopApp(pkg),
                                    tooltip: 'Stop',
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Shell Access
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shell Access',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _shellController,
                          decoration: const InputDecoration(
                            hintText: 'Enter shell command...',
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                          onSubmitted: (_) => _executeShell(deviceProvider),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () => _executeShell(deviceProvider),
                        child: const Text('Run'),
                      ),
                    ],
                  ),
                  if (_shellOutput.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(maxHeight: 200),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SingleChildScrollView(
                        child: SelectableText(
                          _shellOutput,
                          style: const TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 12,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _loadPackages() async {
    setState(() => _loadingPackages = true);
    final provider = context.read<DeviceProvider>();
    final packages = await provider.getInstalledPackages();
    setState(() {
      _packages = packages;
      _loadingPackages = false;
    });
  }

  Future<void> _executeShell(DeviceProvider provider) async {
    if (_shellController.text.isEmpty) return;
    final output = await provider.executeShell(_shellController.text);
    setState(() => _shellOutput = output);
  }
}

class _DeviceListTile extends StatelessWidget {
  final AndroidDevice device;
  final bool isSelected;
  final VoidCallback onTap;

  const _DeviceListTile({
    required this.device,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: const Color(0xFF00D084).withOpacity(0.1),
      leading: Icon(
        Icons.phone_android,
        color: device.status == DeviceStatus.connected
            ? Colors.green
            : Colors.grey,
      ),
      title: Text(
        device.model,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        device.id,
        style: const TextStyle(fontSize: 11),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (device.isRooted)
            const Icon(Icons.admin_panel_settings,
                size: 16, color: Colors.orange),
          if (device.fridaServerRunning)
            const Padding(
              padding: EdgeInsets.only(left: 4),
              child: Icon(Icons.bug_report, size: 16, color: Colors.green),
            ),
        ],
      ),
      onTap: onTap,
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String label;
  final Color color;

  const _StatusChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey.shade500,
              ),
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
      ],
    );
  }
}

class _CompactInfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _CompactInfoChip({
    required this.icon,
    required this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final chipColor = color ?? Colors.grey;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: chipColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: chipColor.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: chipColor),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(fontSize: 11, color: chipColor),
          ),
        ],
      ),
    );
  }
}
