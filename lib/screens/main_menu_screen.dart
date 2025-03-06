import 'package:flutter/material.dart';
import 'store_menu_screen.dart'; // Import the StoreMenuScreen
import 'cart_screen.dart'; // Import the CartScreen
import '../models/cart.dart'; // Import the Cart model
import 'canteen_menu_screen.dart'; // Import the CanteenMenuScreen

class MainMenuScreen extends StatefulWidget {
  final Cart cart; // Accept Cart instance

  MainMenuScreen({Key? key, required this.cart}) : super(key: key); // Ensure cart is a required parameter

  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: widget.cart), // Navigate to CartScreen
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Recommended Shop", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              ShopList(),
              SizedBox(height: 20),
              const Text("Recommended for you", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              MenuList(addToCart: (item) {
                setState(() {
                  widget.cart.addItem(item); // Add item to cart
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopList extends StatelessWidget {
  final List<Map<String, String>> shops = [
    {"image": "assets/images/canteen1.png", "name": "Canteen 1"},
    {"image": "assets/images/canteen2.png", "name": "Canteen 2"},
    {"image": "assets/images/canteen3.png", "name": "Canteen 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: shops.map((shop) {
          return ShopCard(
            image: shop["image"]!,
            storeName: shop["name"]!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CanteenMenuScreen(storeName: shop["name"]!), // Pass the store name
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class ShopCard extends StatelessWidget {
  final String image;
  final String storeName;
  final Function onTap;

  ShopCard({required this.image, required this.storeName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(), // Navigate to the store menu
      child: Card(
        child: Column(
          children: [
            Image.asset(image, width: 100, height: 100, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(storeName, style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  final Function(String) addToCart;
  MenuList({required this.addToCart});

  final List<Map<String, String>> menuItems = [
    {"image": "images/nasi_goreng.png", "name": "Nasi Goreng"},
    {"image": "images/cold_coffee.png", "name": "Cold Coffee"},
    {"image": "images/sate.png", "name": "Sate"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: menuItems.map((item) => MenuItemCard(item["image"]!, item["name"]!, addToCart)).toList(),
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final String image;
  final String name;
  final Function(String) addToCart;

  MenuItemCard(this.image, this.name, this.addToCart);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image, width: 100, height: 100, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(name, style: TextStyle(fontSize: 16)), // Display the name
          ),
          ElevatedButton(
            onPressed: () => addToCart(name), // Add item to cart
            child: Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
