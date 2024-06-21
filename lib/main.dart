import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drafts App',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontFamily: 'KiwiMaru',
            fontSize: 16,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
