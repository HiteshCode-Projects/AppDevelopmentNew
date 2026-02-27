import 'package:flutter/material.dart';

// void main() {
//   runApp(ProfileAPP());
// }

// class ProfileAPP extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//     home:Scaffold(

//     appBar: AppBar(title: Text("My Profile")),

//    body: Padding(padding: EdgeInsets.all(16),

//    child: Column(
//        children: [

//            //Proile Image
//            CircleAvatar(
//             radius: 50,
//             backgroundColor: Colors.blue.shade100,
//             child: Icon(Icons.person , size:50),
//            ),

//            SizedBox(height: 10),

//            //Name
//            Text("John Doe",
//              style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold
//              ),
//            ),
//            Text("Flutter Developer"),

//             SizedBox(height: 20),

//             //Info Card
//             Card(
//              elevation: 4,
//             child: Padding(padding: EdgeInsets.all(16),
//             child: Column(
//             children: [

//            Row(children: [
//             Icon(Icons.email),
//             SizedBox(width: 10),
//             Text("john@gmail.com"),
//            ],),

//            Row(children: [
//             Icon(Icons.phone),
//             SizedBox(width: 10),
//             Text("+91 1234-567"),
//            ],),

//            Row(children: [
//             Icon(Icons.location_on),
//             SizedBox(width: 10),
//             Text("India"),
//            ],),

//             ],

//             ),
//             ),
//             ),

//             SizedBox(height: 20),

//             //Follow Button

//             ElevatedButton(onPressed: (){}, child: Text("Follow")),

//        ],

//    ),

//    ),

//     ),

//     );
//   }
//}

//Example 2 - UI Update - StatefullWidget
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
