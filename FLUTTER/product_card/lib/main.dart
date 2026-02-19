import 'package:flutter/material.dart';

void main() {
  runApp(ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Product Store")),

        body: Center(
          child: Container(
            width: 250,
            padding: EdgeInsets.all(16),

            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/61XsQKDblwL._AC_UL1250_FMwebp_QL65_.jpg",
                  height: 120,
                ),
                SizedBox(height: 10),

                Text(
                  "Wireless Headphone",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),

                Text("Rs 2000 "),
                SizedBox(height: 10),

                Row(
                  children: [
                    Icon(Icons.shopping_cart),
                    SizedBox(width: 8),
                    Text("Add To Cart"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
