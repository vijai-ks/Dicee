import 'package:flutter/material.dart';

void main() {
  runApp(Dicee());
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
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
                        print("Clicked 1");
                      },
                      child: Image(
                        image: AssetImage('images/dice1.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        print('Pressed 2');
                      },
                      child: Image(
                        image: AssetImage('images/dice2.png'),
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
