// import 'package:flutter/material.dart';

// void main() {
//   runApp(CounterApp());
// }

// class CounterApp extends StatefulWidget {
//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int count = 0;

//   void increaseCount() {
//     setState(() {
//       count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(

//       appBar: AppBar(title: Text("Counter")),

//       body: Center(
//          child: Text(
//           "Count : $count",
//           style: TextStyle(fontSize: 24),
//          ),

//       ),
//       floatingActionButton: FloatingActionButton(onPressed: increaseCount , child: Icon(Icons.add),
//       ),

//       ),

//     );
//   }
// }

//Example - 2
import 'package:flutter/material.dart';

void main() {
  runApp(LikeApp());
}

class LikeApp extends StatefulWidget {
  @override
  State<LikeApp> createState() => _LikeAppState();
}

class _LikeAppState extends State<LikeApp> {
  int likes = 10;

  void addLike() {
    setState(() {
      likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     home:Scaffold(

     appBar: AppBar(title: Icon(Icons.add_a_photo)),

     body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          
          children: [

           Icon(Icons.favorite , color: Colors.red , size:50),
           Text(  
            "$likes Likes",
            style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: addLike, child: Text("Like 💓") )

           




          ],






     ),






     ),



    );
  }
}
