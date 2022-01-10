import 'package:flutter/material.dart';
import 'package:food_delivery_exam/models/food_model.dart';
import 'package:food_delivery_exam/pages/home/components/popular_item.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PopularItem(food: foodList[0],),
          PopularItem(food: foodList[1],),
          PopularItem(food: foodList[2],),

        ],
      ),
    );
  }
}
