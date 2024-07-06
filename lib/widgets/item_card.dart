import 'package:flutter/material.dart';
import '../models/delivery_item.dart';

class ItemCard extends StatelessWidget {
  final DeliveryItem item;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.description),
        trailing: Text('\$${item.price.toStringAsFixed(2)}'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ItemDetailScreen(item: item),
            ),
          );
        },
      ),
    );
  }
}