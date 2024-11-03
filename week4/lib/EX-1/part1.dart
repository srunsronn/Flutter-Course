import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Hobbies'),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.grey[600],
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20), 
                      Text(
                        'Travelling',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
