import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.white,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onTap: () {
                setState(() {
                  changeFaceOfDices();
                });
              },
            ),
          )),
          Expanded(
              child: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
            onTap: () {
              setState(() {
                changeFaceOfDices();
              });
            },
          ))
        ],
      ),
    );
  }

  void changeFaceOfDices() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
}
