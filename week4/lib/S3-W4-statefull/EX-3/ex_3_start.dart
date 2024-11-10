import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: CircleCarousel(),
    ));

class CircleCarousel extends StatefulWidget {
  const CircleCarousel({super.key});

  @override
  State<CircleCarousel> createState() => _CircleCarouselState();
}

class _CircleCarouselState extends State<CircleCarousel> {
  int _index = 0;

  void _previous() {
    setState(() {
      if (_index > 0) {
        _index--;
      } else {
        _index += images.length - 1;
      }
    });
  }

  void _next() {
    setState(() {
      if (_index < images.length - 1) {
        _index++;
      } else {
        _index -= images.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: _previous,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: _next,
            ),
          ),
        ],
      ),
      body: Image.asset(images[_index]),
    );
  }
}
