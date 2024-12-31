import 'package:flutter/material.dart';
import 'package:wakey_app/utils/style.dart';

Row tab(IconData? icon, String? txt) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0), // Padding for spacing
        child: Icon(
          icon,
          color: Colors.white,
        ), // Ensure the icon is properly padded
      ),
      Flexible(
        // Prevent overflow for long text
        child: Text(
          txt ?? "Text should be here",
          style: customTextStyle(fontSize: 12.0),
          overflow: TextOverflow.ellipsis, // Handle text overflow gracefully
        ),
      ),
    ],
  );
}
