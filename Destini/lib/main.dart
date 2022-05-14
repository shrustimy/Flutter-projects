import 'package:flutter/material.dart';
import 'storybrain.dart';
import 'package:flutter/cupertino.dart';

StoryBrain stb=StoryBrain();

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/background.png'),
        fit: BoxFit.cover,
    ),
        ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Destinio(),
          ),
        ),
      ),

    );
  }
}

class Destinio extends StatefulWidget {
  const Destinio({Key? key}) : super(key: key);

  @override
  State<Destinio> createState() => _DestinioState();
}

class _DestinioState extends State<Destinio> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex : 5,
          child:
          Center(
            child: Text(
              stb.getStoryText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            color: Colors.blue,
            onPressed:(){
              setState(() {
                stb.story(1);
                print('button pressed');
              });
            },
            child: Text(
             stb.getChoice1(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Expanded(
          child: Visibility(
            visible: stb.visibli(),
            child: FlatButton(
              color: Colors.red,
              onPressed:(){
                print('button pressed');
                setState((){
                  stb.story(2);
                });
              } ,
              child: Text(
                stb.getChoice2(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



