import 'package:flutter/material.dart';
import 'package:untitled1/res/Styles/App_Style.dart';
class RoundButton extends StatelessWidget {
  String title;
  final VoidCallback ontap;
  RoundButton({required this.title,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(14.0))
      ),
      margin: EdgeInsets.all(14.0),
      child: Center(child: Text(title,style:AppStyle.loginbtnstyle,)),
    );
  }
}
