import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/utils/Routes/Routes.dart';
import 'package:untitled1/view-model/Auth_View_Model.dart';


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
        ],
        child: MaterialApp(
          initialRoute: RouteNames.loginscreen,
          onGenerateRoute: Routes.generateRoutes,
        ),
    );
  }
}
