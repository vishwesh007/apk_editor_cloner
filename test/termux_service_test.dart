import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:droid_analyst/services/termux_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channelName = 'com.droidanalyst/termux';
  const outputChannelName = 'com.droidanalyst/termux_output';

  group('TermuxService basic behavior', () {
    final termuxService = TermuxService();

    setUp(() {
      // Default mock handler doing simple echo-style responses
      const MethodChannel channel = MethodChannel(channelName);
      channel.setMockMethodCallHandler((MethodCall call) async {
        switch (call.method) {
          case 'checkTermuxInstallation':
            return {'termux': true, 'termux_api': true};
          case 'runCommand':
          case 'runTaskerCommand':
          case 'runScript':
          case 'runLocalShell':
            return true;
          case 'getTermuxHomePath':
            return '/data/data/com.termux/files/home';
          default:
            return null;
        }
      });
    });

    tearDown(() {
      const MethodChannel channel = MethodChannel(channelName);
      channel.setMockMethodCallHandler(null);
    });

    test('singleton returns same instance', () {
      final instance1 = TermuxService();
      final instance2 = TermuxService();
      expect(identical(instance1, instance2), isTrue);
    });

    test('checkTermuxInstallation returns true when mocked as installed', () async {
      final installed = await termuxService.checkTermuxInstallation();
      expect(installed['termux'], isTrue);
      expect(installed['termux_api'], isTrue);
    });

    test('runCommand completes successfully via mock', () async {
      final success = await termuxService.runCommand('echo test');
      expect(success, isTrue);
    });

    test('runLocalShell completes successfully via mock', () async {
      final success = await termuxService.runLocalShell('echo local');
      expect(success, isTrue);
    });

    test('getTermuxHomePath returns mocked value', () async {
      final path = await termuxService.getTermuxHomePath();
      expect(path, equals('/data/data/com.termux/files/home'));
    });
  });

  group('TermuxService output stream wiring', () {
    test('outputStream can be listened to without native event source', () async {
      final service = TermuxService();

      // There is no real EventChannel in tests, but listening should not throw.
      final sub = service.outputStream.listen((_) {});
      await Future<void>.delayed(const Duration(milliseconds: 10));
      await sub.cancel();
    });
  });
}
