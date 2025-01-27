import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sahara_homepage/signinpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => signinpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Lottie.asset(
            'assets/animationlottie/InShot_20250106_221031045.mp4.lottie.json',
            fit: BoxFit.contain,
          ),
          /*Lottie.asset(
            'assets/animationlottie/lottiefileanimation.json',
            fit: BoxFit.contain,
          ),*/
        ),
      ),
    );
  }
}
