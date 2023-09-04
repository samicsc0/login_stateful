import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Login Screen',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
