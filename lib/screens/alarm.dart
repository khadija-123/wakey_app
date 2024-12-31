import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  const Alarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text(
          "5 : 30",
          style: TextStyle(
            fontFamily: "Oxygen",
            fontSize: 50,
          ),
        ),
      )),
    );
  }
}
