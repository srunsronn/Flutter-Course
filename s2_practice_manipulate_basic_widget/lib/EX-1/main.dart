import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp( 
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello, My name is Bert!',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    ),
  );
}