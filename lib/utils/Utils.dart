import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Utils{

  static void FlushBar(BuildContext context,String message){
    showFlushbar(context: context,
        flushbar: Flushbar(
          message: message,
          backgroundColor: CupertinoColors.systemRed,
          duration: Duration(seconds: 3),
          margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          flushbarPosition: FlushbarPosition.BOTTOM,
          icon: Icon(Icons.error),
        )..show(context),
    );
  }


  static ShowSnackBar(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hi"),));
  }
}