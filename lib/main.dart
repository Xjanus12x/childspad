import 'package:childspad/screens/home.dart';
import 'package:childspad/screens/login.dart';
import 'package:flutter/material.dart';
import 'screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        '/register': (context) => const Register(),
      },
    );
  }
}
