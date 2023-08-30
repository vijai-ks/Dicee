import 'package:flutter/material.dart';

void main() {
  runApp(Dicee());
}

class Dicee extends StatelessWidget {
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
            child: Row(
              children: [
                Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('images/dice2.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
