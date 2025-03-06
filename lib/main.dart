import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // Import the splash screen
import 'models/cart.dart'; // Import the Cart model
import 'screens/main_menu_screen.dart'; // Import the MainMenuScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Cart cart = Cart(); // Create a shared instance of Cart

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Disable the debug banner
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainMenuScreen(
          cart: cart), // Pass the Cart instance to MainMenuScreen
    );
  }
}
