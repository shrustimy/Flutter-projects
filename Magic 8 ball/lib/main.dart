import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blue,
        ),
        body: Magic(),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int num=2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: (){
            print(num);
            setState(() {
              num=Random().nextInt(5)+1;
            });
          },
            child: Image.asset('images/ball$num.png'),
        ),
      ),
    );
  }
}




