import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num=2;
  int num1=4;

  void func(){
    setState((){
      num=Random().nextInt(6)+1;
      num1=Random().nextInt(6)+1;
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
                print('left button pressed');
                func();
              },
              child: Image.asset('images/dice$num.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('right button pressed');
                func();
              },
              child:Image.asset('images/dice$num1.png'),
            ),
          ),
        ],
      ),
    );
  }
}


