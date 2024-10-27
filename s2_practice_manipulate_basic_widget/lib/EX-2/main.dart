import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      color: Colors.blue[300],
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.all(40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue[500],
        ),
        child: const Center(
          child: Text(
            "CADT STUDENTS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    ),
  ));
}


