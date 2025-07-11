import 'package:flutter/material.dart';
import 'package:flutter_router_starter_kit/theme/theme.dart';
import 'package:flutter_router_starter_kit/routes/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      builder: (context, child) {
        final brightness = MediaQuery.of(context).platformBrightness;

        AppTheme.setSystemUIOverlayStyle(brightness);

        return child!;
      },
    );
  }
}
