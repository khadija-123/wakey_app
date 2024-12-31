import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakey_app/screens/welcome1.dart';
import 'package:wakey_app/utils/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.to(Welcome1()));
    // Timer(const Duration(seconds: 5), () {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (_) => const Welcome1()),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: height,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Splash screen (2).png'),
                    fit: BoxFit.cover)),
            child: Padding(
                padding: EdgeInsets.only(top: height * 0.2),
                child: Text(
                  "Wakey",
                  textAlign: TextAlign.center,
                  style: customTextStyle(
                      fontSize: 60.0, fontWeight: FontWeight.bold),
                ))));
  }
}
