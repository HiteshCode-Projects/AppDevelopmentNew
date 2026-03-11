import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(ApiExample());
}

class ApiExample extends StatefulWidget {
  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  //Logic
  String data = "Loading...";

  Future<void> fetchData() async {
    var response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos/1"),
    );

    setState(() {
      data = response.body;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Async Example")),

        body: Center(child: Text(data, style: TextStyle(fontSize: 22))),
      ),
    );
  }
}
