import 'dart:io';

import 'package:untitled1/data/Network/BaseApiServices.dart';
import 'package:untitled1/data/Network/NetworkApiService.dart';

class RegisterRepository {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> RegisterApi(String url,dynamic body) async{
    try{
      final response = await _apiServices.postApiResponse(url, body);
      return response;
    }on SocketException{
      throw Exception("No Internet Connection");
    }
  }

}