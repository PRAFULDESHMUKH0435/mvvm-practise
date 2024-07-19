import 'dart:io';

class AppException implements Exception{
  String? _message;
  String? _prefix;
  AppException(this._message,this._prefix);

  String ToString(){
    return "$_message $_prefix";
  }
}


class DataException extends AppException{
  DataException(String? message):super("Error","Error During Communication");
}


class SocketException extends AppException{
  SocketException(String? message):super("No Internet Available","Error");
}