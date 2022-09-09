import 'package:flutter/material.dart';
import 'package:login_signup/register_screen.dart';
import 'login_screen.dart';


void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        initialRoute: 'login_screen',
      routes: {
        'login_screen': (context) => login(),
        'register_screen': (context) => Register(),
      },
    );
  }
}



