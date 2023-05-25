import 'package:flutter/material.dart';

Widget buildCTAButton(
Function()? onTap,
String title,
double height,
double width,
Color color) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Text(title, style: const TextStyle(color: Colors.white),),
    ),
  );
}
