import 'package:flutter/material.dart';

TextStyle customTextStyle(
    {Color? color, double? fontSize, FontWeight? fontWeight}) {
  return TextStyle(
      color: color ?? const Color.fromARGB(255, 255, 255, 255),
      fontSize: fontSize ?? 28,
      fontFamily: 'Raleway',
      fontWeight: fontWeight ?? FontWeight.bold);
}
