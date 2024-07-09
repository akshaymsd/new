import 'package:flutter/material.dart';
import 'package:max/Auth/login.dart';
import 'package:max/widgets/Button_widget.dart';
import 'package:max/widgets/textField_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController Pass=TextEditingController();
  TextEditingController Age=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextfieldWidget(name: "Enter Name",controller: name),
          SizedBox(height: 10,),
          TextfieldWidget(name: "Enter Email",controller: Email),SizedBox(height: 10,),
          TextfieldWidget(name: "Enter Age",controller: Age),
          SizedBox(height: 10,),
          TextfieldWidget(name: "Enter Password",controller: Pass,),
          SizedBox(height: 20,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
            Text("Already have an Account!"),TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));


              }, child: Text("Login",style: TextStyle(color:Colors.indigo),))
          ],),
          buttonWidget(tap: () {
          },
              txt: "Submit")


        ],
      ) ),
    );
  }
}
