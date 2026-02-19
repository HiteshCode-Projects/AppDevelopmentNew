import 'package:flutter/material.dart';

void main() {
  runApp(LikedApp());
}

class LikedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Liked Button")),

        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //Elevated Button
              ElevatedButton(
                onPressed: () {
                  print("Liked");
                },
                child: Text("Like"),
              ),

              SizedBox(height: 20),

              TextButton(onPressed: (){
                 print("Change or update");
              },
               child: Text("Forget Password")
              ),

              SizedBox(height: 20),

              IconButton(onPressed: (){
                print("Liked");
              }, icon: Icon(Icons.favorite , color: Colors.red , size:30)),


            ],
          ),
        ),
      ),
    );
  }
}
