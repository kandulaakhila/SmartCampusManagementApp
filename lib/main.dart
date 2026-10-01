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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Smart Campus Dashboard',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _dashboardItem(Icons.school, 'Students'),
                  _dashboardItem(Icons.person, 'Faculty'),
                  _dashboardItem(Icons.event, 'Events'),
                ],
              ),

              const SizedBox(height: 30),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                  ),
                  const Column(
                    children: [
                      Icon(
                        Icons.location_city,
                        size: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Smart Campus',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _dashboardItem(IconData icon, String title) {
    return Column(
      children: [
        Icon(icon, size: 40),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}