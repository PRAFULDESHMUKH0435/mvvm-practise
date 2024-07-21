import 'package:untitled1/data/Network/BaseApiServices.dart';
import 'package:untitled1/data/Network/NetworkApiService.dart';
import 'package:http/http.dart' as http;
class HomeRepository{

  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> getMoviesList(String url) async{
    try{
      final response = await _apiServices.getApiResponse(url);
      return response;
    }catch(e){
      throw e;
    }
  }
}