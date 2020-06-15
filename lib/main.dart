import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    )
  );
}
class DiceApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DiceApp> {
    int leftDicenumber = 1;
    int rightDicenumber =1;

    void changeDice(){
      setState(() {
        leftDicenumber = Random().nextInt(6) +1;
        rightDicenumber = Random().nextInt(6)+1;
      });
    }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$leftDicenumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$rightDicenumber.png'),
              ),
            )
          ],
        ),
      );
  }
}


