import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakey_app/screens/Profile.dart';
import 'package:wakey_app/screens/subscription.dart';
import 'package:wakey_app/utils/style.dart';
import 'package:wakey_app/widgets/elipse.dart';
import 'package:wakey_app/widgets/custom_onboard.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = const [
    OnboardContent1(),
    OnboardContent2(),
    OnboardContent3(),
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 10, 10),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: _onPageChanged,
            children: _pages,
          ),
          Positioned(
            top: Get.height * 0.1,
            right: 10,
            child: TextButton(
              onPressed: () {
                Get.to(Profile());
              },
              child: Text("Skip", style: customTextStyle(fontSize: 14)),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    elipse(
                        colors: _currentPage == 0
                            ? const Color(0xff7853F7)
                            : Colors.grey),
                    elipse(
                        colors: _currentPage == 1
                            ? const Color(0xff7853F7)
                            : Colors.grey),
                    elipse(
                        colors: _currentPage == 2
                            ? const Color(0xff7853F7)
                            : Colors.grey),
                  ],
                ),
                const SizedBox(height: 20),
                customOnboardBtn(
                  text: _currentPage == 2 ? "Next" : "Find out more",
                  onPressed: () {
                    if (_currentPage < 2) {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    } else {
                      Get.to(const Subscribe());
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Content of Screen 1
class OnboardContent1 extends StatelessWidget {
  const OnboardContent1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.6,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/morninggif1 1.png"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: "Morning habit",
                  style: customTextStyle(
                    color: const Color.fromRGBO(185, 143, 254, 100),
                    fontSize: 30.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          " can make a big difference in your entire day choose wisely.",
                      style: customTextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Wakey is based on your behavioral psychology and Artificial intelligence.",
                style: customTextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Content of Screen 2
class OnboardContent2 extends StatelessWidget {
  const OnboardContent2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.6,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/morning walk gif 1.png"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: "As per research",
                  style: customTextStyle(
                    color: const Color.fromRGBO(185, 143, 254, 100),
                    fontSize: 30.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "  Healthy morning routine makes people Active and Successful.",
                      style: customTextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Wakey helps to achieve your goals by making you wake and active.",
                style: customTextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Content of Screen 3
class OnboardContent3 extends StatelessWidget {
  const OnboardContent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.6,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Mask group.png"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: "Start a",
                  style: customTextStyle(fontSize: 24),
                  children: <TextSpan>[
                    TextSpan(
                      text: " healthy life",
                      style: customTextStyle(
                        color: const Color.fromRGBO(185, 143, 254, 100),
                        fontSize: 30.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          " setup your goal get motivated and achieve all you success you deserve.",
                      style: customTextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Wakey helps to achieve your goals by making you wake and active.",
                style: customTextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
