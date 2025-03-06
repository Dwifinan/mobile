import 'package:flutter/material.dart';

class CanteenMenuScreen extends StatelessWidget {
  final String storeName;

  CanteenMenuScreen({Key? key, required this.storeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$storeName Menu'),
      ),
      body: Center(
        child: Text('Menu items for $storeName will be displayed here.'),
      ),
    );
  }
}
