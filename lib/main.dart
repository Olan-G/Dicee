/*
    John Olan S. Gomez
    Software Engineer Intern
    Dice Application
    January 24, 2024
 */

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1, //takes up twice the width
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'),
        ),
      ],
    );
  }
}
