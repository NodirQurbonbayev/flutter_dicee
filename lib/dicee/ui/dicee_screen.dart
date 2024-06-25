import 'dart:math';
import 'package:flutter/material.dart';

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftImageNumber = 1; 
  int rightImageNumber = 1; 

  void rollDice() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1; 
      rightImageNumber = Random().nextInt(6) + 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Dicee"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: rollDice,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset("assets/images/dice$leftImageNumber.png"),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: rollDice,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset("assets/images/dice$rightImageNumber.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
