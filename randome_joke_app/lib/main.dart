import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(JokeApp());
}

class JokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: JokeScreen());
  }
}

class JokeScreen extends StatefulWidget {
  @override
  State<JokeScreen> createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  
  String setup = "Loading ....";
  String punchline = "";

  Future<void> fetchJoke() async {
    final response = await http.get(
      Uri.parse("http://www.official-joke-api.appspot.com/random_joke"),
    );

    final data = json.decode(response.body);

    setState(() {
      setup = data["setup"];
      punchline = data["punchline"];
    });
  }

  @override
  void initState() {
    super.initState();
    fetchJoke();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Joke App 😂")),

      body: Center(

     child: Padding(padding: EdgeInsets.all(20),
     
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

        Text(
          setup ,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 20),


        
        Text(
          punchline ,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 20),

       ElevatedButton(onPressed: fetchJoke, child: Text("Get New Joke"),
       )


        ],

    ),
     
     
     ),




      ),




    );
  }
}
