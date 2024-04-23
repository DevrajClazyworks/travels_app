import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:travelsapp/View/loginscreen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
        startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/trackbysplash.png',
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
  void startTimer() {
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
}
}
