import 'package:flutter/material.dart';

void main() {
  runApp(const SmartCampusApp());
}

class SmartCampusApp extends StatelessWidget {
  const SmartCampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Campus Management',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smart Campus Management'),
        ),
        body: const Center(
          child: Text(
            'Welcome to Smart Campus',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}