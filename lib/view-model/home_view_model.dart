import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:untitled1/repositories/home_repository.dart';

class HomeViewModel with ChangeNotifier{
  final _homerepo = HomeRepository();
  List _movieslist = [];
  List get movieslist => _movieslist;

  set movieslist(List value) {
    _movieslist = value;
  }



  Future<dynamic> getMoviesList(String url) async{
   await _homerepo.getMoviesList(url).then((value){
      if (kDebugMode) {
        print("Movies Data ${value}");
        print(value.toString());
        movieslist=value['movies'];
        print("MoviesList Are ${_movieslist}");
      }
    }).onError((error, stackTrace){
      print(error.toString());
    });
  }
}