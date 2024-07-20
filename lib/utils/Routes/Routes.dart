import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/view/HomeScreen.dart';
import 'package:untitled1/view/LoginScreen.dart';

class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.homescreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());


      case RouteNames.loginscreen:
        return MaterialPageRoute(builder: (context)=>LoginScreen());

      default :
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body:  Container(
              child: Center(child: Text("No Routes Found")),
            ),
          );
        });
    }
  }
}