import 'package:flutter/material.dart';
import 'package:week4/S1-W4/EX-1/hobbiecard.dart';

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
          padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
          color: Colors.grey[800],
          child: const Center(
            child: Column(
              children: [
                HobbyCard(
                  title: 'Travelling',
                  icon: Icons.public,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 20,
                ),
                HobbyCard(
                  title: 'Skating',
                  icon: Icons.skateboarding,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
