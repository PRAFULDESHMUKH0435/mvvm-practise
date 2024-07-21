import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';

class SplashViewModel with ChangeNotifier{

  Future<void> UserAlreadyLoggedInOrNot(BuildContext context) async{
    SharedPreferences sp =await SharedPreferences.getInstance();
    if(sp.containsKey("Usertoken")){
      Navigator.pushReplacementNamed(context, RouteNames.homescreen);
    }else{
      Navigator.pushReplacementNamed(context, RouteNames.loginscreen);
    }
  }
}