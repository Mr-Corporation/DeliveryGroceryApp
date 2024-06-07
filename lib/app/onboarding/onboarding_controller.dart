import 'package:deliverygorceryapp/utils/app_constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_constants/const_images.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      // Get.toNamed(AppRoutes.signIn);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  void handleAppBarTap() {
    if (selectedPageIndex.value > 0) {
      pageController.previousPage(
          duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnBoardingInfo> onboardingPages = [
    OnBoardingInfo(ImageConst.onboarding_1, ConstantStrings.title1,
        ConstantStrings.subTitle1),
    OnBoardingInfo(ImageConst.onboarding_2, ConstantStrings.title2,
        ConstantStrings.subTitle2),
    OnBoardingInfo(ImageConst.onboarding_3, ConstantStrings.title3,
        ConstantStrings.subTitle3),
  ];
}

class OnBoardingInfo {
  var imageAsset;
  var title;
  var description;

  OnBoardingInfo(this.imageAsset, this.title, this.description);
}
