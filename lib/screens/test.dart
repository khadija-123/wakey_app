import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          color: Colors.black45,
        ),
      ),
    );
  }
}
