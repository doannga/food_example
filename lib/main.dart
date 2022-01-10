import 'package:flutter/material.dart';
import 'package:food_delivery_exam/pages/cart/cart_screen.dart';
import 'package:food_delivery_exam/pages/home/home_screen.dart';
import 'package:food_delivery_exam/pages/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CartScreen(),
    );
  }
}
