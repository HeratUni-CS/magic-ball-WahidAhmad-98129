import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MAGICBALL());

class MAGICBALL extends StatefulWidget {
  @override
  State<MAGICBALL> createState() => _MAGICBALLState();
}

class _MAGICBALLState extends State<MAGICBALL> {
  @override
  int ballNumber = 1;

  void changeBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('MAGIC BALL APPLICATION'),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 35, 39, 38),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    changeBallNumber();
                  });
                },
                child: Center(
                  child: Image.asset('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
