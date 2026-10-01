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
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int studentCount = 0;

  void addStudent() {
    setState(() {
      studentCount++;
    });
  }

  void removeStudent() {
    setState(() {
      if (studentCount > 0) {
        studentCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Campus Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Student Management',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Students: $studentCount',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: addStudent,
                  child: const Text('Add Student'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: removeStudent,
                  child: const Text('Remove Student'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


