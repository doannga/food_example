import 'package:flutter/material.dart';
import 'package:food_delivery_exam/custom_widgets/custom_button.dart';

import '../styles.dart';
Widget buildButton(String btnName){
  return CustomButton(text: Text(btnName, style: mTextButton,), backgroundColor: const Color(0xFFFFC445), radius: 18, colorShadow: const Color.fromRGBO(255, 196, 69, 0.44), offset: const Offset(0,4), spreadRadius: -10, blurRadius: 32, onPressed: (){});
}
