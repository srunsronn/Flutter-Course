import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  final String? title;

  const GradientColor({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [Colors.red[400]!, Colors.blue[600]!, Colors.black45],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          title!,
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
