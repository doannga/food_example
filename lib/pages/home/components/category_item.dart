import 'package:flutter/cupertino.dart';

import '../../../styles.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const CategoryItem({Key? key,
    required this.title,
    this.isActive = false,
    required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isActive)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color(0xFFEDF0F5),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 8,
                  spreadRadius: 0,
                  color: Color(0xFFF8F8FB),
                )
              ],
            ),
          ),
        Text(
          title,
          style: isActive ? mItemIsActive : mItemIsNotActive,
        ),
      ],
    );
  }
}
