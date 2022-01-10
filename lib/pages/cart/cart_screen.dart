import 'package:flutter/material.dart';
import 'package:food_delivery_exam/components/app_bar_component.dart';
import 'package:food_delivery_exam/models/food_model.dart';

import 'components/detail_bill.dart';
import 'components/food_item_cart.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            buildAppBar('My Cart'),
            Container(
              color: const Color(0xFFFAFAFF),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(34), topRight: Radius.circular(34))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FoodItemCart(food: foodList[0],),
                  FoodItemCart(food: foodList[1],),
                  FoodItemCart(food: foodList[2],),
                ],
              ),
            ),
            DetailBill(),
          ],
        ),

    );
  }
}
