import 'package:flutter/material.dart';
import '../models/deliveryItem.dart';

class items_list_screen extends StatefulWidget {
  @override
  _ItemsListScreenState createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<items_list_screen> {
  final List<DeliveryItem> items = [
    DeliveryItem(
      id: '1',
      title: 'Pizza 🍕',
      description: 'Margherita pizza',
      price: 9.99,
    ),
    DeliveryItem(
      id: '2',
      title: 'Burger 🍔',
      description: 'Juicy beef burger',
      price: 7.99,
    ),
    DeliveryItem(
      id: '3',
      title: 'Reina Pepiada 🫓',
      description: 'Arepa de reina pepiada, mmm que rico',
      price: 20.76,
    ),
  ];

  int? _selectedIndex;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery App 😎',style: TextStyle(
            fontFamily: 'Times New Roman',
        fontSize:24,
        color: Colors.white
        ),
    ),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;

              });
              print("button ${items[index].title} pressed!");
            },
            child: Container(
              color: _selectedIndex == index ? Colors.blue.shade100 : Colors.white,
              child: ListTile(
                title: Text(items[index].title),
                subtitle: Text(items[index].description),
                trailing: Text('\$${items[index].price.toStringAsFixed(2)}'),
              ),
            ),
          );
        },
      ),
    );
  }
}