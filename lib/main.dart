import 'package:flutter/material.dart';
import 'package:river_app/config/config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData,
      home: const Scaffold(
        body: Center(
          child: Text('Hello Test!'),
        ),
      ),
    );
  }
}
