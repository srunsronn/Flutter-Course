import 'package:flutter/material.dart';
import 'package:week4/S1-W4/EX-3/custombutton.dart';

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
          title: const Text("Custom Buttons"),
        ),
        body: Container(
          color: Colors.grey.shade300,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  label: "Submit",
                  icon: Icons.check,
                  buttonType: ButtonType.primary,
                ),
                SizedBox(height: 20),
                CustomButton(
                  label: "Time",
                  icon: Icons.timelapse,
                  buttonType: ButtonType.secondary,
                  iconPosition: IconPosition.right,
                ),
                SizedBox(height: 20),
                CustomButton(
                  label: "Account",
                  icon: Icons.block,
                  buttonType: ButtonType.disabled,
                  iconPosition: IconPosition.right,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
