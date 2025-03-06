import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project1_2/main.dart';
import 'package:project1_2/models/cart.dart'; // Import the Cart model
import 'package:project1_2/screens/main_menu_screen.dart'; // Import the MainMenuScreen

void main() {
  testWidgets('MainMenuScreen displays correctly', (WidgetTester tester) async {
    // Create a Cart instance
    final cart = Cart();

    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: MainMenuScreen(cart: cart), // Pass the Cart instance
    ));

    // Verify that the title is displayed.
    expect(find.text('Select a Store'), findsOneWidget);
  });
}
