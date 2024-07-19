import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/view/HomeScreen.dart';

class Routes{
  generatedRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.homescreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());

      default :
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body:  Container(
              child: Text("No Routes Found"),
            ),
          );
        });
    }
  }
}