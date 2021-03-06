import 'package:flutter/material.dart';
import 'package:splash_app/FacultyFlow/FacultyMenuPage.dart';

class FacultyHomePage extends StatefulWidget {
  const FacultyHomePage({ Key? key }) : super(key: key);

  @override
  State<FacultyHomePage> createState() => _FacultyHomePageState();
}

class _FacultyHomePageState extends State<FacultyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF09488D),
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context)=> FacultyMenuPage()
              )
            );
          } 
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
    );
  }
}