import 'package:flutter/cupertino.dart';
import 'package:untitled1/repositories/auth_repository.dart';
import 'package:untitled1/utils/Utils.dart';

class AuthViewModel with ChangeNotifier{

  final _repo = AuthRepository();

  Future loginApi(dynamic data) async{
    await _repo.getloginApi(data).then((value){
      print(value.toString());
    }).onError((error, stackTrace){
      print(error.toString());
    });
  }


}