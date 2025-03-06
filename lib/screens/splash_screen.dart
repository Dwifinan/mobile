import 'package:flutter/material.dart';
import 'dart:async';
import 'main_menu_screen.dart'; // Import the main menu screen
import '../models/cart.dart'; // Correct the import path


class SplashScreen extends StatelessWidget {
  final Cart cart = Cart(); // Create a shared instance of Cart

  SplashScreen({Key? key}) : super(key: key); // Constructor

  @override
  Widget build(BuildContext context) {
    // Navigate to the main menu after 2 seconds
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainMenuScreen(cart: cart)), // Pass the Cart instance
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Welcome to Horizon University Canteen',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(), // Loading indicator
          ],
        ),
      ),
    );
  }
}
