import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scorebar(),
  ));
}

class Scorebar extends StatefulWidget {
  Scorebar({super.key});

  @override
  State<Scorebar> createState() => _ScorebarState();
}

class _ScorebarState extends State<Scorebar> {
  late double _width = 0;

  void _increase() {
    setState(() {
      _width += MediaQuery.of(context).size.width / 10;
      print(_width);
    });
  }

  // void _descrese() {
  //   setState(() {
  //     _width -= MediaQuery.of(context).size.width / 10;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[400],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      "My Score Card",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.remove),
                        ),
                        IconButton(
                          onPressed: _increase,
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: (MediaQuery.of(context).size.width),
                      decoration: BoxDecoration(
                        // color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        children: [
                          Bar(widths: _width),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  double widths;
  Bar({super.key, required this.widths});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widths,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
      ),
    );
  }
}

// class ParentBar extends StatelessWidget {
//   double width;
//   ParentBar({super.key, required this.width});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
