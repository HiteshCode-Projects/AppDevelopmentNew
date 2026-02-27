import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: WelcomeScreen());
  }
}

//Welcome Screen
class WelcomeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(title: Text("Visitor Welcome"), centerTitle: true),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              //Image
              Image.network(
                "https://cdn-icons-png.flaticon.com/128/3596/3596091.png",
                height: 100,
              ),

              SizedBox(height: 15),

              //Input Feild
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter you name",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              //Button
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context, 
                    builder: (_) => AlertDialog(
                      title: Text("Welcome"),
                      content: Text(
                        "Hello ${nameController.text}, Welcome To Our Event!",
                      ),
                    ),
                  );
                },
                child: Text("Generate Welcome", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
