import 'package:flutter/material.dart';

class CanteenCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  const CanteenCard({
    Key? key,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        onTap: onTap,
      ),
    );
  }
}
