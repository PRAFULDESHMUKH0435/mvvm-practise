import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/utils/Routes/Route_Names.dart';
import 'package:untitled1/view-model/register_view_model.dart';
import '../res/Components/Round_Button.dart';
import '../res/Styles/App_Style.dart';
import '../utils/Utils.dart';
class RegisterScreen extends StatelessWidget {

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RegisterViewModel>(context);
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
              title: "Register",
              ontap: (){
                  Map<String,String> userdata = {
                    "email": "eve.holt@reqres.in",
                    "password": "pistol"
                  };
                  provider.RegisterApi(userdata).then((value){
                    Utils.FlushBar(context, "User Registered Successfully", Colors.green);
                    Navigator.pushNamed(context, RouteNames.homescreen);
                  }).onError((error, stackTrace){
                    Utils.FlushBar(context, "Something Went Wrong", Colors.red);
                  });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Already't Have An Account?"),
              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteNames.loginscreen);
                  },
                  child: Text("Login",style: AppStyle.loginbtnstyle,))
            ],
          )
        ],
      ),
    );
  }
}
