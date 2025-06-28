import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        final isDarkMode =
            MediaQuery.of(context).platformBrightness == Brightness.dark;

        final systemUiStyle = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              isDarkMode ? Brightness.light : Brightness.dark,
          systemNavigationBarColor:
              isDarkMode ? Colors.grey[850]! : Colors.white,
          systemNavigationBarIconBrightness:
              isDarkMode ? Brightness.light : Brightness.dark,
        );

        SystemChrome.setSystemUIOverlayStyle(systemUiStyle);

        return child!;
      },
    );
  }
}
