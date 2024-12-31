import 'package:flutter/material.dart';
import 'package:wakey_app/utils/style.dart';

customContainerBtn({String? text, VoidCallback? onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xff4D4D4D),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Text(
            text ?? "Text should be here",
            style: customTextStyle(fontSize: 14.0),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white,
          )
        ],
      ),
    ),
  );
}

customOnboardBtn({String? text, VoidCallback? onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [const Color(0xffC847F4), const Color(0xff7853F7)]),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text ?? "Text should be here",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 100),
              fontFamily: "Oxygen",
            ),
            //style: customTextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
