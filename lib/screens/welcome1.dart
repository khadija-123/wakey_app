// import 'dart:math';

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:wakey_app/screens/OnboardingScreens.dart';
//import 'package:wakey_app/screens/onboard_1.dart';
import 'package:wakey_app/utils/style.dart';
import 'package:wakey_app/widgets/custom_onboard.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Welcome! Set',
                      style: customTextStyle(),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Wakey',
                            style: customTextStyle(
                                color: const Color.fromRGBO(185, 143, 254, 100),
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900)),
                        const TextSpan(
                          text: ' to Achieve your morning goals.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                    height: 20.0,
                  ),
                  Text(
                    "Let's make your morning more active and healthy.",
                    style: customTextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 255, 255, 255),
              height: height * 0.3,

              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/morning2-transformed 1.png"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 2.0,
              height: 20.0,
            ),
            customContainerBtn(
                text: "I want to wake up on time",
                onPressed: () => Get.to(const OnboardingScreen())),
            customContainerBtn(
                text: "I want to build a morning habit",
                onPressed: () => Get.to(const OnboardingScreen())),
            customContainerBtn(
                text: "I want to start my day early",
                onPressed: () => Get.to(const OnboardingScreen())),
          ],
        ),
      ),
    );
  }
}
