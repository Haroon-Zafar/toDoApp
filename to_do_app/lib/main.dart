import 'package:flutter/material.dart';
import 'package:to_do_app/auth/authform.dart';
import 'package:to_do_app/auth/authscreen.dart';
import 'package:to_do_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.purple,
      ),
    );
  }
}
