/*
    John Olan S. Gomez
    Software Engineer Intern
    Dice Application
    January 24, 2024
 */

import 'package:flutter/material.dart';
import 'dart:math';

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

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //create variable
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              //onPressed function - what to do when button gets pressed
              onPressed: () {
                //see what changed, update, and redraws the entire screen
                setState(() {
                  //Random().nextInt(6) - generates numbers from 0-5
                  //Random().nextInt(6) + 1 - generates numbers from 1-6
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                //see what changed, update, and redraws the entire screen
                setState(() {
                  //Random().nextInt(6) - generates numbers from 0-5
                  //Random().nextInt(6) + 1 - generates numbers from 1-6
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
