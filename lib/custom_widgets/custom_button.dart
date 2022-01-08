import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Text text;
  final Color backgroundColor;
  final double radius;
  final Color colorShadow;
  final Offset offset;
  final double spreadRadius;
  final double blurRadius;
  const CustomButton({Key? key, required this.text, required this.backgroundColor, required this.radius, required this.colorShadow,required this.offset, required this.spreadRadius,required this.blurRadius, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [BoxShadow(
            offset: Offset(offset.dx, offset.dy),
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
            color: colorShadow,
          ),]
      ),
      color: backgroundColor,
      child: ElevatedButton(
        onPressed: onPressed ?? (){},
        child: text
      ),
    );
  }
}
