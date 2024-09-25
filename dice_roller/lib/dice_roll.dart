import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

//private classes are identified by "_" at the beginning
class _DiceRollState extends State<DiceRoll> {
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; //the function generates a random number from 0-5, + 1 means 1-6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice!'),
        )
      ],
    );
  }
}
