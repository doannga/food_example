import 'package:flutter/material.dart';
import '../styles.dart';
Widget buildAppBar(String title){
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xFF323335),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios, color: Colors.white),),
        Text(title, style: mTitleAppBar),
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz, color: Colors.white),),
      ],
    ),
  );
}