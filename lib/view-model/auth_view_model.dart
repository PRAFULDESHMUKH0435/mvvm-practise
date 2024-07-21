import 'package:flutter/cupertino.dart';
import 'package:untitled1/repositories/auth_repository.dart';

class AuthViewModel with ChangeNotifier{

  final _repo = AuthRepository();

  Future loginApi(dynamic data,BuildContext context) async{
    _repo.getloginApi(data).then((value){
      print(value.toString());
    }).onError((error, stackTrace){
      print(error.toString());
    });
  }


}