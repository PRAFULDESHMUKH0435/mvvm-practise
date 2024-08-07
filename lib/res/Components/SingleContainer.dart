import 'package:flutter/material.dart';
class SingleMovieContainer extends StatelessWidget {
  String name;
  String storyline;
  String imageurl;

  SingleMovieContainer({required this.name,required this.storyline,required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal:15.0,vertical: 8.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text(storyline.toString()),
        leading: CircleAvatar(
          radius: 22,
          child: Image.network(imageurl??"null",height: 50,width: 50,),
        ),
      ),
    );
  }
}
