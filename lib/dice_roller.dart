import 'dart:math';

import 'package:flutter/material.dart';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  int randomNumber = 3;

  void rollDice() {
    setState(() {
      // var activeDiceImage = 'assets/images/dice-3.png';
      randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$randomNumber.png',
        // activeDiceImage,
        width: 250,
      ),
      SizedBox(
        height: 100,
      ),
      ElevatedButton(
          // onPressed: () {
          //   // print('button pressed');

          // },
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.yellow[300],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 2, 2, 2)),
          ),
          child: Text(
            'Roll Dice',
          ))
    ]);
  }
}
