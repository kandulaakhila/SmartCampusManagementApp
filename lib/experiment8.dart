
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Experiment8(),
    ),
  );
}

class Experiment8 extends StatefulWidget {
  const Experiment8({super.key});

  @override
  State<Experiment8> createState() => _Experiment8State();
}

class _Experiment8State extends State<Experiment8> {
  bool expanded = false;
  double opacity = 1.0;
  bool moved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 8 - Animations'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                '1. Animated Container',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 15),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: expanded ? 180 : 100,
                height: expanded ? 180 : 100,
                decoration: BoxDecoration(
                  color: expanded ? Colors.green : Colors.blue,
                  borderRadius: BorderRadius.circular(
                    expanded ? 30 : 5,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
                child: const Text('Animate Container'),
              ),
              const Divider(height: 30),
              const Text(
                '2. Fade Animation',
                style: TextStyle(fontSize: 18),
              ),
              AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(size: 100),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    opacity = opacity == 1.0 ? 0.0 : 1.0;
                  });
                },
                child: const Text('Fade In / Out'),
              ),
              const Divider(height: 30),
              const Text(
                '3. Slide Animation',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 100,
                width: 300,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      left: moved ? 200 : 0,
                      top: 10,
                      child: Container(
                        width: 70,
                        height: 70,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    moved = !moved;
                  });
                },
                child: const Text('Move Box'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
