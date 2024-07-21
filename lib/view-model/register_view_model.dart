import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/res/Components/AppUrl.dart';

import '../repositories/register_repository.dart';

class RegisterViewModel with ChangeNotifier{

  final _registerRepo = RegisterRepository();

  Future<dynamic> RegisterApi(dynamic data) async{
    SharedPreferences sp =await SharedPreferences.getInstance();
     await _registerRepo.RegisterApi(AppUrl.registerapi,data).then((value){
      print("Registration Successful ${value}");
      print(value['token']);
      sp.setString("Usertoken", value['token']);
    }).onError((error, stackTrace){
      print("Error ${error.toString()}");
    });
  }

}