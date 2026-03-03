import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(ProfileLoaderApp());
}

class ProfileLoaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileScreen());
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
bool isLoading = true;

@override
  void initState(){
    super.initState();

    //Simulate API Delay
    Future.delayed(Duration(seconds: 2) , (){
       setState(() {
         isLoading = false;
       });
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Profile")),

    body: Center(
        child: isLoading ? CircularProgressIndicator()  : Text("Welcome User" , style: TextStyle(fontSize: 22),),


    ),



    );
  }
}
