import 'package:flutter/material.dart';
import 'package:max/Auth/Register.dart';
import 'package:max/screens/home_screen.dart';

import '../widgets/Button_widget.dart';
import '../widgets/textField_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController text1=TextEditingController();
  TextEditingController text2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextfieldWidget(controller: text1,
          name: "Enter Email",
          Picon: Icon(Icons.mail),
        ),
        SizedBox(
          height: 20,
        ),
        TextfieldWidget(controller: text2,
          name: "Enter password",
          Picon: Icon(Icons.password),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
            children: [
          Text("Dont have an Account?"),TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));

          }, child: Text("Register",style: TextStyle(color:Colors.indigo),))
        ],),
        SizedBox(
          height: 30,
        ),
        buttonWidget(tap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));

        },
          txt: "Submit",)
      ],
    ));
  }
}
