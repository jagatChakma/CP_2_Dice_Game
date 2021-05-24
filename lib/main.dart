import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void randomDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Dice Game"),
      ),
      body: Center(
        child: Row(
          children: [
            // Image(image: image)AssetImage("images/dice1.png"),
            Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  randomDice();
                },
                child: Image(
                  image: AssetImage("images/dice$leftDiceNumber.png"),
                ),
              ),
            ),
            Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  randomDice();
                },
                child: Image(
                  image: AssetImage("images/dice$rightDiceNumber.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
