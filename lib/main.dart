import 'package:flutter/material.dart';

void main() => runApp(MAGICBALL());

class MAGICBALL extends StatefulWidget {
  @override
  State<MAGICBALL> createState() => _MAGICBALLState();
}

class _MAGICBALLState extends State<MAGICBALL> {
  @override
  int blaaNumber = 1;
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
              Center(
                child: Image.asset('images/ball$blaaNumber.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
