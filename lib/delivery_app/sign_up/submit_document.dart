import 'dart:async';

import 'package:deliverygorceryapp/delivery_app/sign_up/verify_otp.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SubmitDocument extends StatefulWidget {
  const SubmitDocument({super.key});

  @override
  State<SubmitDocument> createState() => _SubmitDocumentState();
}

class _SubmitDocumentState extends State<SubmitDocument> {
  bool isSuccessful = false;
  Timer? timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (isSuccessful) {
        Get.offAll(VerifyOtpScreen());
      }
      isSuccessful = true;

      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            height: 57,
            width: 57,
            isSuccessful
                ? 'assets/images/successfully.json'
                : 'assets/images/checking.json',
          ),
          VSpace(MarginConst.m10),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: AppText(
                textAlign: TextAlign.center,
                title: isSuccessful
                    ? "your documents are submitted successfully it takes 45 day to approve from admin"
                    : "your documents are underway please wait...",
                size: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.white_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
