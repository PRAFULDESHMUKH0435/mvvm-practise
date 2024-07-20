import 'package:flutter/material.dart';
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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<AuthViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.green,
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
          RoundButton(title: "Login", ontap: (){
            if(_emailcontroller.text.toString().isEmpty){
              // Utils.FlushBar(context,"Email Is Required");
              Utils.ShowSnackBar(context);
            }else if(_passwordcontroller.text.toString().isEmpty){
              Utils.FlushBar(context,"Password Is Required");
            }else if(_passwordcontroller.text.toString().length<6){
              Utils.FlushBar(context,"Password Must Be More Than 6 Characters");
            }
          })
        ],
      ),
    );
  }
}
