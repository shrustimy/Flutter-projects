import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                        'Register',
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: FlatButton(onPressed: (){},
                    color: Colors.deepPurple,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    shape:  StadiumBorder(),
                    minWidth: 300.0,
                    height: 60.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Registered? ",
                      style: TextStyle(color: Colors.black87,
                         fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'login_screen');
                      },
                      child: Text(
                          'Login here',
                        style: TextStyle(color: Colors.deepPurple,
                                 fontWeight: FontWeight.normal,
                      ),
                    ),
                    ),
                      ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
