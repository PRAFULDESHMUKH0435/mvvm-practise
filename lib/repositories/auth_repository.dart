import 'package:untitled1/data/Network/BaseApiServices.dart';
import 'package:untitled1/data/Network/NetworkApiService.dart';
import 'package:untitled1/res/Components/AppUrl.dart';

class AuthRepository{

  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> getloginApi(dynamic data) async{
    try{
      final response = await _apiServices.postApiResponse(AppUrl.loginapi,data);
      return response;
    }catch(e){
      throw e;
    }
  }


  Future<dynamic> getRegisterApi() async{
    try{
      final response = await _apiServices.getApiResponse(AppUrl.registerapi);
      return response;
    }catch(e){
      throw e;
    }
  }
}