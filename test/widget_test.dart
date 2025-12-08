// Basic smoke test for Droid Analyst app

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:droid_analyst/providers/device_provider.dart';
import 'package:droid_analyst/screens/apk_repacker_screen.dart';

void main() {
  testWidgets('APK Repacker screen basic test', (WidgetTester tester) async {
    // Build the APK Repacker screen which doesn't require all providers
    await tester.pumpWidget(
      MaterialApp(
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => DeviceProvider()),
          ],
          child: const ApkRepackerScreen(),
        ),
      ),
    );

    // Verify tabs exist
    expect(find.text('Decompile'), findsOneWidget);
    expect(find.text('Edit'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Strings'), findsOneWidget);
    
    // Verify APK selection
    expect(find.text('No APK selected'), findsOneWidget);
  });
}
