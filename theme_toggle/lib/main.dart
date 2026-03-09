import 'package:flutter/material.dart';

void main() {
  runApp(ThemeApp());
}

class ThemeApp extends StatefulWidget {
  @override
  State<ThemeApp> createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  bool isDark = false;

  void toogleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),

      home: Scaffold(
        appBar: AppBar(title: Text("Theme App")),

        body: Center(
          child: Switch(
            value: isDark,
            onChanged: (value) {
              toogleTheme();
            },
          ),
        ),
      ),
    );
  }
}
