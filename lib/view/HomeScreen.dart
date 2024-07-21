import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/res/Components/AppUrl.dart';
import 'package:untitled1/res/Components/SingleContainer.dart';
import '../view-model/home_view_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FutureBuilder<dynamic>(
            future: provider.getMoviesList(AppUrl.moviesapiendpoint),
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }else if(snapshot.connectionState==ConnectionState.done){
                  return ListView.builder(
                      itemCount: provider.movieslist.length,
                      itemBuilder:(context,index){
                        final movie = provider.movieslist[index];
                        print("Movie ${movie}");
                        return SingleMovieContainer(
                            name: movie['title'],
                            storyline: movie['storyline'],
                            imageurl:movie['posterurl']);
                      });
              }
              else{
                return Center(child: Text("SomeThing Went Wrong"));
              }
            }),
      ),
    );
  }
}
