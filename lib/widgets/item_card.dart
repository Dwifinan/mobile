import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemDescription;
  final String itemPrice;
  final VoidCallback onTap;

  const ItemCard({
    Key? key,
    required this.itemName,
    required this.itemDescription,
    required this.itemPrice,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(itemName),
        subtitle: Text(itemDescription),
        trailing: Text(itemPrice),
        onTap: onTap,
      ),
    );
  }
}
