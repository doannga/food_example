import 'package:flutter/cupertino.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CategoryItem(title: 'Burger', press: (){}, isActive: true,),
          CategoryItem(title: 'Salad', press: (){}, isActive: false,),
          CategoryItem(title: 'Fruit Item', press: (){}, isActive: false,),
          CategoryItem(title: 'ABC', press: (){}, isActive: false,),
          CategoryItem(title: 'XYZ', press: (){}, isActive: false,),
        ],
      ),
    );
  }
}
