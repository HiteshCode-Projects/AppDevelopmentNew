import 'package:flutter/material.dart';

void main() {
  runApp(ProfileHeaderApp());
}

class ProfileHeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 30, child: Icon(Icons.person)),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, //Align Left
                    children: [
                      Text(
                        "John Mike",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Flutter Developer"),
                    ],
                  ),
                  Spacer(),  //Push Button to right
                  ElevatedButton(onPressed: () {}, child: Text("Follow")),
                ],
              ),
              SizedBox(height: 20),
              Text("Welcome To my Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
