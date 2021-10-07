import 'package:flutter/material.dart';
import 'Dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red.shade300,
          appBar: AppBar(
            backgroundColor: Colors.red.shade400,
            title: Text(
              "Dice",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          body: Dice()),
    );
  }
}

// class Dice extends StatelessWidget {
// }

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  //creting a value thatwill keep track of the click event
  int dice_number = 1;
  int right_dice = 1;
  void randome_genaration() {
    setState(() {
      //  we are going to add something in here
      dice_number = Random().nextInt(6) + 1;
      right_dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randome_genaration();
              },
              child: Image.asset("images/dice${dice_number}.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randome_genaration();
                // print("The right button is preswsed");
              },
              child: Image.asset("images/dice${right_dice}.png"),
            ),
          )
        ],
      ),
    );
  }
}
