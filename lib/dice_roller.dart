import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
@override
  State<DiceRoller> createState() {
    return _DicerRollerState();
  }
}



class _DicerRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;


  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
  });
}

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
Image.asset(
  'assets/dice-$currentDiceRoll.png',
  width: 200,
),
TextButton(
  onPressed: rollDice,
  style: TextButton.styleFrom(
    padding: const EdgeInsets.only(top:20),
    foregroundColor: Color.fromARGB(249, 253, 253, 253),
    textStyle: const TextStyle(
      fontSize:38
      ),
),
child: const Text('Roll Dice'),)
        ],
        );

  }

}