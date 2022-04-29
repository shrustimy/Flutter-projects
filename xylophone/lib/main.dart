import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  Expanded func(Color col ,int n){
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: (){
          final player=AudioCache();
          player.play('note$n.wav');
        },
        child: Text(' '),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              func(Colors.blue,1),
              func(Colors.red,2),
              func(Colors.green,3),
              func(Colors.yellow,4),
              func(Colors.pink,5),
              func(Colors.purple,6),
              func(Colors.orange,7),
          ],
          ),
        ),
      ),
    );
  }
}

