import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Label("Method 1: Loop in Array", bold: true),
            // TODO
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // can not use for loop
                // for (var i; i < colors.length; i++) Text(colors[i]),
                for (var color in colors) Text(color)
              ],
            ),
            const Label("Method 2: Map", bold: true),
            // TODO
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...colors.map((color) => Text(color)).toList(),
              ],
            ),
            const Label("Method 3: Dedicated Function", bold: true),
            // TODO
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getColor(),
            ),
          ],
        ),
      ),
    ),
  ));
}

//dedicated function
List<Widget> getColor() {
  return colors.map((color) => Text(color)).toList();
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: (bold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
