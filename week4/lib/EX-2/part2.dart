import 'package:flutter/material.dart';

enum Product {
  dart('Dart', 'The best object language', 'assets/dart.png'),
  flutter('Flutter', 'Build beautiful apps', 'assets/flutter.png'),
  firebase(
      'Firebase', 'The platform for app development', 'assets/firebase.png');

  final String name;
  final String description;
  final String imagePath;

  const Product(this.name, this.description, this.imagePath);
}

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

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  product.imagePath,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(product.description),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
