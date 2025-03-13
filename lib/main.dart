import 'package:flutter/material.dart';

void main() {
  runApp(FlutterYSApp());
}

class FlutterYSApp extends StatelessWidget {
  const FlutterYSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Placeholder(),
    );
  }
}
