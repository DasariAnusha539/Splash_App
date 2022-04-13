import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:splash_app/NetworkHandler.dart';

class AdminChangePasswordPage extends StatefulWidget {
  const AdminChangePasswordPage({ Key? key }) : super(key: key);

  @override
  State<AdminChangePasswordPage> createState() => _AdminChangePasswordPageState();
}

class _AdminChangePasswordPageState extends State<AdminChangePasswordPage> {
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
    return Container(
      
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
            labelText: "Admin ID",
            labelStyle: TextStyle(
              color: Color(0xFFe4e6eb)
            ),
            helperText: "Enter Admin ID",
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