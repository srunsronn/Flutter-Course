import 'dart:math';

import 'package:flutter/material.dart';

// const String diceImage2 = 'assets/images/dice-2.png';
// const String diceImage4 = 'assets/images/dice-4.png';

// String activeDiceImage = diceImage2;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var count = 2;

  void rollDice() {
    //  Display the dice 4 !
    setState(() {
      count = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            rollDice();
          },
          child: Image.asset(
            "assets/images/dice-$count.png",
            width: 200,
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));
