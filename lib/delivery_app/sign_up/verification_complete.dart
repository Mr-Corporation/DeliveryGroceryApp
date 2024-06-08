import 'dart:async';

import 'package:deliverygorceryapp/delivery_app/sign_in/sign_in.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VerificationSuccessful extends StatefulWidget {
  const VerificationSuccessful({super.key});

  @override
  State<VerificationSuccessful> createState() => _VerificationSuccessfulState();
}

class _VerificationSuccessfulState extends State<VerificationSuccessful> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 10), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return SignInView();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        title: AppText(
            title: "OTP Verification",
            color: Colors.black,
            size: 13,
            fontWeight: FontWeight.w400),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    VSpace(MarginConst.m26),
                    Lottie.asset(
                      'assets/images/verifySuccessful.json',
                    ),
                    AppText(
                      title: "Verification Completed",
                      size: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    VSpace(MarginConst.m26),
                    AppText(
                      title:
                          "You've successfully Verified your account now please enjoy your journey",
                      size: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000).withOpacity(0.58),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
