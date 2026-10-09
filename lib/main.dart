import 'package:flutter/material.dart';

import 'screens/student_registration_screen.dart';

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
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home: const StudentRegistrationScreen(),
    );
  }
}
