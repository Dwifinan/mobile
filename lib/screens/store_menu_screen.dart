import 'package:flutter/material.dart';
import '../models/cart.dart'; // Import the Cart model

class StoreMenuScreen extends StatelessWidget {
  final Cart cart; // Accept Cart instance

  StoreMenuScreen({Key? key, required this.cart}) : super(key: key); // Ensure cart is a required parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Menu Items',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cart.addItem('Item 1'); // Add item to cart
              },
              child: const Text('Item 1'),
            ),
            ElevatedButton(
              onPressed: () {
                cart.addItem('Item 2'); // Add item to cart
              },
              child: const Text('Item 2'),
            ),
            // Add more menu items as needed
          ],
        ),
      ),
    );
  }
}
