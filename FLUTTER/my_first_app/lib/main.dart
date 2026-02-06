//Without main() function, the Flutter app cannot run.
import 'package:flutter/material.dart';

void main() {
  // Entry point of the Flutter application
  // without runApp(), the app won't start.
  // runApp(Text("Hello , Flutter!"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return MaterialApp(
        home: Scaffold(body: Center(child: Text("Hello, Flutter!" , style: TextStyle(fontSize: 24.0),))),
      );
    }
  }
}
