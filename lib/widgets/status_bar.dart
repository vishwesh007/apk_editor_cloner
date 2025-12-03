import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/device_provider.dart';
import '../providers/frida_provider.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isCompact = screenWidth < 600;

    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: const Color(0xFF161B22),
      child: Row(
        children: [
          // Device Status
          Expanded(
            child: Consumer<DeviceProvider>(
              builder: (context, provider, child) {
                final device = provider.selectedDevice;
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 14,
                      color: device != null ? Colors.green : Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        device?.model ?? 'No device',
                        style: TextStyle(
                          fontSize: 10,
                          color: device != null ? Colors.white : Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (device?.isRooted == true && !isCompact) ...[
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 1,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'ROOT',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ],
                );
              },
            ),
          ),
          // Frida Status (hide on very compact screens)
          if (!isCompact) ...[
            Container(
              width: 1,
              height: 16,
              color: Colors.grey.shade800,
            ),
            const SizedBox(width: 8),
            Consumer<FridaProvider>(
              builder: (context, provider, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.bug_report,
                      size: 14,
                      color: provider.isAttached ? Colors.green : Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      provider.isAttached
                          ? 'Attached'
                          : provider.isFridaInstalled
                              ? 'Ready'
                              : 'N/A',
                      style: TextStyle(
                        fontSize: 10,
                        color: provider.isAttached ? Colors.green : Colors.grey,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
          const SizedBox(width: 8),
          // App Title
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.security,
                size: 14,
                color: Color(0xFF00D084),
              ),
              const SizedBox(width: 4),
              Text(
                isCompact ? 'DA' : 'DroidAnalyst',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00D084),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
