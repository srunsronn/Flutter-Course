import 'package:flutter/material.dart';
import 'package:s2_practice_manipulate_basic_widget/EX-4/customcard.dart';
import 'package:s2_practice_manipulate_basic_widget/W4-S1/gradientcolor.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      color: Colors.grey.shade500,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCard(text: "OOP", color: Colors.blue[100]),
          CustomCard(text: "DART", color: Colors.blue[300]),
          CustomCard(
            text: "FLUTTER",
            gradient:
                LinearGradient(
                  colors: [Colors.blue[300]!, Colors.blue[800]!], 
                  ),
          ),
          const GradientColor(title: "hi bro",),
        ],
      ),
    ),
  ));
}
