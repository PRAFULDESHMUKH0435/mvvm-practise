import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/view/HomeScreen.dart';
import 'package:untitled1/view/LoginScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
