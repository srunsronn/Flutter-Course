import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      color: Colors.grey.shade500,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blue[100],
            ),
            child: const Center(
              child: Text(
                "OOP",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blue[300],
            ),
            child: const Center(
              child: Text(
                "DART",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                colors: [Colors.blue[300]!, Colors.blue[600]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Center(
              child: Text(
                "FLUTTER",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
