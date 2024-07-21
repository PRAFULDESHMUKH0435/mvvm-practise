import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/view-model/splash_view_model.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashViewModel _splashViewModel = SplashViewModel();

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      _splashViewModel.UserAlreadyLoggedInOrNot(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('Assets/Images/splash_screen.jpg'),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
