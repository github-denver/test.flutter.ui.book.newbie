import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildShoppingCartAppbar(),
        body: Column(
          children: [
            ShoppingCartHeader(),
            Spacer(),
            ShoppingCartDetail(),
          ],
        ));
  }
}

AppBar _buildShoppingCartAppbar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
      SizedBox(width: 16),
    ],
    elevation: 0.0,
  );
}
