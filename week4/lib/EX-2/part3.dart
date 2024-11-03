import 'package:flutter/material.dart';
import 'package:week4/EX-2/productcard.dart';
import 'product.dart'; 


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Products"),
        ),
        body: Container(
          color: Colors.blue[600], 
          width: double.infinity, 
          height: double.infinity, 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: Product.values.map((product) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20), 
                    child: ProductCard(product: product), 
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
