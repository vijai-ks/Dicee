import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dicee());
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int firstDice = 1;
  int secondDice = 1;

  void generateRandomNumber() {
    setState(() {
      firstDice = Random().nextInt(5) + 1;
      secondDice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text("Dicee"),
          ),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        generateRandomNumber();
                      },
                      child: Image(
                        image: AssetImage('images/dice$firstDice.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        generateRandomNumber();
                      },
                      child: Image(
                        image: AssetImage('images/dice$secondDice.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
