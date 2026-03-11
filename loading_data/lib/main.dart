import 'package:flutter/material.dart';

void main() {
  runApp(AysncDemo());
}

class AysncDemo extends StatefulWidget {
  @override
  State<AysncDemo> createState() => _AysncDemoState();
}

class _AysncDemoState extends State<AysncDemo> {
  //Logic
  String message = "Loading...";

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      message = "Data Loaded";
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Async Example")),

        body: Center(
          child: Text( message,  style: TextStyle(fontSize: 22),  ),
        ),
      ),
    );
  }
}
