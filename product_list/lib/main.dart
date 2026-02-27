import 'package:flutter/material.dart';

void main() {
  runApp(ProductListApp());
}

class ProductListApp extends StatelessWidget {
  final List<String> products = [
    "Mobile",
    "laptop",
    "Headphones",
    "Smart Watch",
    "Tablet",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text("Products")),

        // body: ListView.builder(
        //   itemCount: products.length,

        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: Icon(Icons.shopping_cart),
        //       title: Text(products[index]),
        //       trailing: Icon(Icons.arrow_forward),
        //       onTap: () {
        //         print("Product Cliced ${products[index]}");
        //       },
        //     );
        //   },
        // ),


        //Chat List
         appBar: AppBar(title: Text("Whatsapp")),

        body: ListView(

          children: [

            ListTile(
              leading: CircleAvatar(child:Icon(Icons.person) ),
              title: Text("Harsih"),
              subtitle: Text("Hey How are you?"),
              trailing: Text("2.30 Pm"),
            ),

            ListTile(
               leading: CircleAvatar(child:Icon(Icons.person) ),
                title: Text("Leeena"),
              subtitle: Text("Hello Morning"),
              trailing: Text("10.00 am"),
            ),

            ListTile(
               leading: CircleAvatar(child:Icon(Icons.person) ),
                title: Text("Divj"),
              subtitle: Text("Hey How are you?"),
              trailing: Text("1.30 Pm"),
            ),


            ListTile(
               leading: CircleAvatar(child:Icon(Icons.person) ),
                title: Text("Jagruthi"),
              subtitle: Text("Hello How are you?"),
              trailing: Text("1.00 Pm"),
            ),


          ],

         ),

         
      ),
    );
  }
}
