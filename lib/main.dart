import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/utils/Routes/Routes.dart';
import 'package:untitled1/view-model/Auth_View_Model.dart';
import 'package:untitled1/view-model/home_view_model.dart';
import 'package:untitled1/view-model/register_view_model.dart';
import 'package:untitled1/view-model/splash_view_model.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>AuthViewModel()),
          ChangeNotifierProvider(create: (_)=>HomeViewModel()),
          ChangeNotifierProvider(create: (_)=>SplashViewModel()),
          ChangeNotifierProvider(create: (_)=>RegisterViewModel()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteNames.splashscreen,
          onGenerateRoute: Routes.generateRoutes,
        ),
    );
  }
}
