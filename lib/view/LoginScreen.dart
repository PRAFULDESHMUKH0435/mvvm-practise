
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/res/Styles/App_Style.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/utils/Utils.dart';
import 'package:untitled1/view-model/Auth_View_Model.dart';
import '../res/Components/Round_Button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthViewModel>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Email",
                  label: Text("Email"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  )
              ),
              controller: _emailcontroller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  label: Text("Password"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  )
              ),

              controller: _passwordcontroller,
            ),
          ),
          SizedBox(height: 50),
          RoundButton(
              loading: false,
              title: "Login",
              ontap: (){
            if(_emailcontroller.text.toString().isEmpty){
              Utils.ShowSnackBar(context);
            }else if(_passwordcontroller.text.toString().isEmpty){
              Utils.FlushBar(context,"Password Is Required",Colors.red);
            }else if(_passwordcontroller.text.toString().length<6){
              Utils.FlushBar(context,"Password Must Be More Than 6 Characters",Colors.red);
            }else{

              
               Map<String,String> userdata = {
                 "email": "eve.holt@reqres.in",
                 "password": "cityslicka"
               };

              provider.loginApi(userdata).then((value){
                Utils.FlushBar(context, "Login Successful",Colors.green);
                Navigator.pushNamed(context, RouteNames.homescreen);
              }).onError((error, stackTrace){
                Utils.FlushBar(context, "Error",Colors.red);
              });
            };
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Don't Have An Account?"),
              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,RouteNames.registerscreen);
                  },
                  child: Text("Create One",style: AppStyle.loginbtnstyle,))
            ],
          )
        ],
      ),
    );
  }
}
