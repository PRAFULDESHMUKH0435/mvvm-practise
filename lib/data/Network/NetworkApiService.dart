import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled1/data/Network/BaseApiServices.dart';
import 'package:untitled1/data/app_exception.dart';

class NetworkApiServices extends BaseApiServices{

  Future<dynamic>  getApiResponse(String url) async{
    dynamic jsonResponse;
     try{
       final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
       jsonResponse = getResponse(response);
     }on SocketException{
       throw DataException("Error During Communication");
     }
     return jsonResponse;
  }


  Future<dynamic>  postApiResponse(String url,dynamic body) async{
    dynamic jsonResponse;
    try{
      final response = await http.post(Uri.parse(url),body: jsonEncode(body)).timeout(Duration(seconds: 10));
      jsonResponse = getResponse(response);
    }on SocketException{
      throw DataException("Error During Communication");
    }
    return jsonResponse;
  }


  getResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responsedata = jsonDecode(response.body);
        return responsedata;

      case 400:
      case 404:
          throw AppException("UnAuthorized Or Invalid", "Error");
      default:
        throw DataException("Exception With Status Code ${response.statusCode} And Message ${response.body}");
    }
  }
}