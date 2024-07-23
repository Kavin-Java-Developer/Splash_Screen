import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_learn/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initialData();
    // TODO: implement initState
    super.initState();
  }

  Future<void> initialData() async {
    print('initial Data');
    await Future.delayed(Duration(seconds: 2));
    getData();
    await Future.delayed(Duration(seconds: 4));
    imageData();
    Get.to(() => HomeScreen(),
        transition: Transition.fadeIn, duration: Duration(seconds: 1));
  }

  Future<void> getData() async {
    print('getData');
  }

  Future<void> imageData() async {
    print('images');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          height: 200,
        ),
      ),
    );
  }
}
