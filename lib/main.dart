import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/analysis_provider.dart';
import 'providers/device_provider.dart';
import 'providers/frida_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const DroidAnalystApp());
}

class DroidAnalystApp extends StatelessWidget {
  const DroidAnalystApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeviceProvider()),
        ChangeNotifierProvider(create: (_) => AnalysisProvider()),
        ChangeNotifierProvider(create: (_) => FridaProvider()),
      ],
      child: MaterialApp(
        title: 'DroidAnalyst',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF00D084),
            brightness: Brightness.dark,
          ),
          fontFamily: 'Consolas',
          scaffoldBackgroundColor: const Color(0xFF0D1117),
          cardTheme: const CardThemeData(
            color: Color(0xFF161B22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
