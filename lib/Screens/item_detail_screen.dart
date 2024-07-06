import 'package:flutter/material.dart';
import '../models/delivery_item.dart';

class ItemDetailScreen extends StatelessWidget {
  final DeliveryItem item;

  ItemDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(item.description),
            SizedBox(height: 16),
            Text('\$${item.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}