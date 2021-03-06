import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final void Function() onPressed;
  final Color backgroundColor;
  final double radius;
  final Color colorShadow;
  final Offset offset;
  final double spreadRadius;
  final double blurRadius;


  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.transparent,
    required this.radius,
    this.colorShadow = Colors.transparent,
    required this.offset,
    required this.blurRadius,
    required this.spreadRadius,

  }) : super(key: key);

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
      child: InkWell(
        onTap: onPressed ?? (){},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: icon,
        ),
      ),
    );
  }
}
