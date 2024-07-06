import 'package:flutter/material.dart';
import 'screens/items_list_screen.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: ThemeData(
        backgroundColor: Colors.lightBlue,
        primarySwatch: Colors.blue,
      ),
      home: items_list_screen(),
    );
  }
}