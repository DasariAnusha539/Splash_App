import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:splash_app/FacultyFlow/FacultyLoginPage.dart';
import 'package:splash_app/NetworkHandler.dart';

class FacultyChangePasswordPage extends StatefulWidget {
  const FacultyChangePasswordPage({ Key? key }) : super(key: key);

  @override
  State<FacultyChangePasswordPage> createState() => _FacultyChangePasswordPageState();
}
 
class _FacultyChangePasswordPageState extends State<FacultyChangePasswordPage> {
  bool vis = true;
  final _globalkey = GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
  TextEditingController _facultyidcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String? errorText;
  bool validate = false;
  bool circular = false;
  final storage = new FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF09488D),
      body: Form(
        key: _globalkey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forget/Change password",
                style: TextStyle(
                  fontFamily: "MarckScript",
                  fontSize: 25,
                  color: Color(0xFFBAC3F0)
                ),
              ),
              SizedBox(height: 50),
              facultyidTextField(),
              SizedBox(height: 40),
              passwordTextField(),
              SizedBox(height:40),
              InkWell(
                onTap: () async{
                  Map<String, String> data = {
                    "password": _passwordController.text
                  };
                  print("/faculty/update/${_facultyidcontroller.text}");
                  var response = await networkHandler.patch("/faculty/update/${_facultyidcontroller.text}", data);

                  if(response.statusCode == 200 || response.statusCode == 201){
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(builder: (context)=> FacultyLoginPage()), 
                      (route) => false
                    );
                  }
                  else {
                    String output = json.decode(response.body);
                    setState(() {
                      errorText = output;
                    });
                  }
                  
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFCCD2F5)
                  ),
                  child: Center(
                    child: circular? CircularProgressIndicator() : Text(
                      "Update Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "QuickSand",
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget facultyidTextField() {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(
            color: Colors.white,
            fontFamily: "QuickSand",
            fontWeight: FontWeight.w700
          ),
          controller: _facultyidcontroller,
          decoration: InputDecoration(
            errorText: validate ? null : errorText,
            labelText: "Faculty ID",
            labelStyle: TextStyle(
              color: Color(0xFFe4e6eb)
            ),
            helperText: "Enter Faculty ID in all CAPITALS",
            helperStyle: TextStyle(
              color: Color(0xFFFFCFD8)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlueAccent,
                width: 2
              )
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              )
            ),
          ),
        )
      ],
    );
  }

  Widget passwordTextField() {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(
            color: Colors.white,
            fontFamily: "QuickSand",
            fontWeight: FontWeight.w700
          ),
          controller: _passwordController,
          obscureText: vis,
          decoration: InputDecoration(
            errorText: validate ? null : errorText,
            suffixIcon: IconButton(
              icon: Icon(vis ? Icons.visibility_off : Icons.visibility, color: Colors.lightBlueAccent,),
              onPressed: () {
                setState(() {
                  vis = !vis;
                });
              },
            ),
            labelText: "Password",
            labelStyle: TextStyle(
              color: Color(0xFFe4e6eb)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlueAccent,
                width: 2
              )
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              )
            ),
          ),
        )
      ],
    );
  }

}