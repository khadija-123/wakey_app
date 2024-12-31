import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakey_app/screens/splash_screen.dart';
// import 'package:wakey_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: const Color.fromRGBO(185, 143, 254, 100),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
