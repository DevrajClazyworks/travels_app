import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelsapp/View/Splashview.dart';
import 'package:travelsapp/View/loginscreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
    title: 'Prodigious',
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}