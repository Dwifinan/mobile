import 'package:flutter/material.dart';
import 'canteen_menu_screen.dart'; // Ensure to import the CanteenMenuScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Horizon University Canteen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Canteen!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CanteenMenuScreen(storeName: "Canteen 1"), // Pass the store name

                  ),
                );
              },
              child: const Text('View Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
