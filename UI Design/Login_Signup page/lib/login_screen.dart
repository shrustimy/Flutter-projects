import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0 ,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body:
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 150.0,
                      child:  Image.asset('assets/work-from-home.png')),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      children: [
                        Text(
                          'Login Now',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Please enter the details below to continue.',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Username'
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password'
                        ),
                        obscureText: true,
                      ),
                      Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('Forgot Password?',
                            style: TextStyle(
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: FlatButton(onPressed: (){
                      Navigator.pushNamed(context, 'register_screen');
                    },
                      color: Colors.deepPurple,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      shape:  StadiumBorder(),
                      minWidth: 300.0,
                      height: 60.0,
                    ),
                  ),
                  RichText(text: TextSpan(
                    text: "Don't have an account! " ,
                    style: TextStyle(color: Colors.black87,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Register' ,
                        style: TextStyle(color: Colors.deepPurple,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  )),


                ],
              ),
            ),
          ),
        ),
      );

  }
}