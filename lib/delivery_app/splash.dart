import 'dart:async';

import 'package:deliverygorceryapp/delivery_app/on_boarding.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return OnBoardingScreen();
        },
      ));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white_color,
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
            scale: 3,
          ),
        ));
  }
}
