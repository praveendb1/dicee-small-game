import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game Developement'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lleftDiceNumbe = 1;
  int rightDiceNumbe = 1;


  void DiceFunction() {
    setState(() {
      lleftDiceNumbe = Random().nextInt(6) + 1;
    });
  }

  void DiceFunction2() {
    setState(() {
      rightDiceNumbe = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),                                    
              child: FlatButton(
                onPressed: () {
                  DiceFunction();
                },
                child: Image(
                  image: AssetImage('images/dice$lleftDiceNumbe.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    DiceFunction2();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumbe.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
