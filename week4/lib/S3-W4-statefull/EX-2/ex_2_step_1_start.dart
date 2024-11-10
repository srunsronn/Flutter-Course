import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Favorite cards"),
        backgroundColor: Colors.blue[800],
      ),
      body: const Column(
        children: [
          FavoriteCard(),
          FavoriteCard(),
          FavoriteCard(),
        ],
      ),
    ),
  ));
}

class FavoriteCard extends StatefulWidget {
  // bool isFavorite = false;

  const FavoriteCard({super.key});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;

  void _handleChangeIcon() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: Colors.grey),
      )),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "title",
                  style: TextStyle(color: Colors.blue[600]),
                ),
                const Text("description"),
              ],
            ),
          ),
          IconButton(
              onPressed: _handleChangeIcon,
              icon: Icon(
                Icons.favorite,
                color: _isFavorite ? Colors.red : Colors.grey,
              )),
        ],
      ),
    );
  }
}
