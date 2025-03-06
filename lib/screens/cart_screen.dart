import 'package:flutter/material.dart';

import '../models/cart.dart'; // Import the Cart model
import 'checkout_screen.dart'; // Import the CheckoutScreen


class CartScreen extends StatelessWidget {
  final Cart cart; // Declare a Cart instance

  CartScreen({Key? key, required this.cart}) : super(key: key); // Update constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Cart Items',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            // Display cart items
            if (cart.items.isEmpty) 
              const Text(
                'No items in the cart.',
                style: TextStyle(fontSize: 16),
              )
            else
              ...cart.items.map((item) => Text(item)).toList(), // List cart items
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutScreen(cart: cart), // Navigate to CheckoutScreen
                  ),
                );
              },


              child: const Text('Proceed to Checkout'),
            ),
          ],
        ),
      ),
    );
  }

}
