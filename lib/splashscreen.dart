import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.lightBlue[50]),
      child: Text(
        "DICE",
        style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: Colors.yellow[600]),
      ),
    );
  }
}
