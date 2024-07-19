import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/view/HomeScreen.dart';

class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.homescreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());

      default :
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body:  InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteNames.loginscreen);
              },
              child: Container(
                child: Center(child: Text("No Routes Found")),
              ),
            ),
          );
        });
    }
  }
}