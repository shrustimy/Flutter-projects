import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questionbank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizbr=QuizBrain();
void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(
              child: Text(
                'Quizzler App',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'RobotoSlab-Regular'
                ),
              ),
            ),
          ),
          body: Quizpage() ,
        ),
    );
  }
}


class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Icon> scoreKeeper=[];
  void scoreBar(bool ans){
    if(quizbr.addScore()==true) {
      if (quizbr.getQuestionAnswer() == ans) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      }
      else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
    }
    else{
      Alert(context: context, title: "Quiz completed", desc: "You have reached end of quiz!").show();
      quizbr.reset();
      scoreKeeper=[];
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Center(
                    child: Text(
                      quizbr.getQuestionText(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0
                      ),
                    ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0,35.0,15.5,15.0),
                  child: FlatButton(
                    color: Colors.green,
                     child: Center(
                      child: Text('True',
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 20.0,
                      ),
                      )
                  ),
               onPressed: () {
                 setState(() {
                 scoreBar(true);
                 print('True button pressed');
                   quizbr.nextque();
                 });
               },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.0,15.5,15.0,35.0),
                  child: FlatButton(
                      color: Colors.red,
                        child: Center(
                          child: Text('False',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                    onPressed: (){
                      setState(() {
                      scoreBar(false);
                      print('False button pressed');
                        quizbr.nextque();
                      });
                    },
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
    );
  }
}





