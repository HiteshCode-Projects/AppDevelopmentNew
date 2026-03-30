import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailConontroller = TextEditingController();
  final passwordController = TextEditingController();

  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  void signUp() async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: emailConontroller.text,
        password: passwordController.text,
      );

      //Save user in FireStore(Database)
      await firestore.collection('users').doc(user.user!.uid).set({
        'email': emailConontroller.text,
        'creaedAt': Timestamp.now(),
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login/SignUp")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: emailConontroller,
              decoration: InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: signUp, child: Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
