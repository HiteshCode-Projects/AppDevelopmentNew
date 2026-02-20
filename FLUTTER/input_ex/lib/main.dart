import 'package:flutter/material.dart';

void main() {
  runApp(InputApp());
}

class InputApp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Input Example")),

        body: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),

                TextField(
                
                obscureText: true,  //hide the data of password
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),


               TextField(
                
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 20),

             
             TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search Products",
                border: OutlineInputBorder(),
              ),
             ),

              ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
