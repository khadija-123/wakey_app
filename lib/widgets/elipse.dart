import 'package:flutter/material.dart';

Container elipse({Color? colors}) {
  return Container(
    margin: const EdgeInsets.all(6.0),
    height: 8.0,
    width: 8.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: colors ?? const Color.fromRGBO(255, 255, 255, 100),
    ),
  );
}
