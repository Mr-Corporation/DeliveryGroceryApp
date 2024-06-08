import 'package:deliverygorceryapp/delivery_app/sign_in/sign_in.dart';
import 'package:deliverygorceryapp/delivery_app/sign_up/sign_up.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color_small,
      body: Column(
        children: [
          Lottie.asset(
            'assets/images/Hello.json',
          ),
          Spacer(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.white_color,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppText(
                        title: "Welcome to ",
                        size: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                      AppText(
                        title: "MR",
                        size: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary_color,
                      ),
                    ],
                  ),
                  VSpace(MarginConst.m6),
                  AppText(
                    title: "Get started!",
                    size: 31,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                  VSpace(MarginConst.m6),
                  AppText(
                    title:
                        "At the heart of our business is a commitment to redefining your grocery experience. By offering premium grocery services, we aim to simplify your shopping needs, ensuring quality products are delivered to your doorstep.",
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black.withOpacity(0.33),
                  ),
                  VSpace(MarginConst.m24),
                  AppButton(
                      buttonWidth: double.infinity,
                      buttonRadius: BorderRadius.circular(6),
                      buttonName: "Sign in as rider",
                      buttonHeight: 57,
                      buttonColor: AppColors.primary_color,
                      textColor: Colors.white,
                      onTap: () {
                        Get.to(SignInView());
                      }),
                  VSpace(MarginConst.m24),
                  AppButton(
                      buttonWidth: double.infinity,
                      buttonRadius: BorderRadius.circular(6),
                      buttonName: "Create an account",
                      buttonHeight: 57,
                      borderWidth: 1.2,
                      borderColor: AppColors.primary_color,
                      buttonColor: AppColors.white_color,
                      textColor: AppColors.primary_color,
                      onTap: () {
                        Get.to(SignUpView());
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
