import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/view/HomeScreen.dart';
import 'package:untitled1/view/Splash_Screen.dart';

// class Routes{
//   static Route<dynamic> generateRoutes(RouteSettings settings){
//     switch(settings.name){
//       case RouteNames.homescreen:
//         return MaterialPageRoute(builder: (context)=>HomeScreen());
//
//       case RouteNames.loginscreen:
//         return MaterialPageRoute(builder: (context)=>LoginScreen());
//
//       case RouteNames.registerscreen:
//         return MaterialPageRoute(builder: (context)=>RegisterScreen());
//
//       case RouteNames.splashscreen:
//         return MaterialPageRoute(builder: (context)=>SplashScreen());
//
//       default :
//         return MaterialPageRoute(builder: (context){
//           return Scaffold(
//             body:  Container(
//               child: Center(child: Text("No Routes Found")),
//             ),
//           );
//         });
//     }
//   }
// }


class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.splashscreen:
        return MaterialPageRoute(builder: (context)=>SplashScreen());

      case RouteNames.homescreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());

      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(child: Text("No Route Found")),
          );
        });
    }
  }
}