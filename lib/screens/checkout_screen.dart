import 'package:flutter/material.dart';

import '../models/cart.dart'; // Import the Cart model

class CheckoutScreen extends StatelessWidget {
  final Cart cart; // Declare a Cart instance

  CheckoutScreen({Key? key, required this.cart}) : super(key: key); // Update constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enter Your Details',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Select Payment Method',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle cash payment
              },
              child: const Text('Cash'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle QRIS payment
              },
              child: const Text('QRIS'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Confirm order functionality
                // Display cart items for confirmation
                for (var item in cart.items) {
                  print(item); // Replace with actual confirmation logic
                }
              },
              child: const Text('Confirm Order'),
            ),
          ],
        ),
      ),
    );
  }

}
