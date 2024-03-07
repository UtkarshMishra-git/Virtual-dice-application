import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:virtual_dice_app/dice_roller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget build(BuildContext context) {
    return Center(child: DiceRoller());
  }
}
