import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakey_app/screens/Profile.dart';
import 'package:wakey_app/screens/alarm.dart';
import 'package:wakey_app/utils/style.dart';
import 'package:wakey_app/widgets/tab.dart';

import '../widgets/custom_onboard.dart';

class Subscribe extends StatelessWidget {
  const Subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: Get.height * 0.4,
                width: Get.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/sun 1.png"),
                        fit: BoxFit.cover)),
              ),
              // ignore: prefer_collection_literals
              Positioned(
                  top: Get.height * 0.10,
                  right: 10,
                  child: TextButton(
                      onPressed: () => Get.to(Profile()),
                      child: Text(
                        "X",
                        style: customTextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      )))
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Healthy And activte life Become a Premium member",
                  style: customTextStyle(),
                ),
                const SizedBox(
                  width: 10.0,
                  height: 20.0,
                ),
                tab(Icons.article, "Daily Articles"),
                tab(Icons.fitness_center,
                    "Workout for healthy life, calories burn and muscles\nbuilding"),
                tab(Icons.alarm, "Unlock more alarm"),
                tab(Icons.forward_10, "Ad free"),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
            width: 10.0,
          ),
          customOnboardBtn(
            text: "Start 1-Week Free Trial",
            onPressed: () => Get.to(Profile()),
          ),
          TextButton(
              onPressed: () => Get.to(Alarm()),
              child: Text(
                "\$28/month after",
                style: TextStyle(
                  fontFamily: "Oxygen",
                  fontSize: 12,
                  color: Color(0xffffffff),
                ),
              ))

          // onPressed: () => Get.to(Set()))
        ],
      ),
    );
  }
}
