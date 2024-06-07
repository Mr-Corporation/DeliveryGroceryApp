import 'package:deliverygorceryapp/app/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/app_button/app_button.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_text/app_text.dart';
import '../../utils/appbars/main_appbar.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
        autoRemove: true,
        builder: (controller) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                forceMaterialTransparency: true,
                title: Obx(() {
                  return controller.selectedPageIndex.value == 0
                      ? SizedBox.shrink()
                      : MainAppBar(
                          title: "",
                          width: 5,
                          onTap: () {
                            controller.handleAppBarTap();
                          },
                        );
                }),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                          physics: BouncingScrollPhysics(),
                          controller: controller.pageController,
                          onPageChanged: controller.selectedPageIndex,
                          itemCount: controller.onboardingPages.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Center(
                                  child: Image.asset(
                                    controller
                                        .onboardingPages[index].imageAsset,
                                    height: 290,
                                  ),
                                ),
                                Gap(92),
                                AppText(
                                  title:
                                      controller.onboardingPages[index].title,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  height: 1.2,
                                  size: 25,
                                ),
                                Gap(12),
                                AppText(
                                  title: controller
                                      .onboardingPages[index].description,
                                  textAlign: TextAlign.left,
                                  height: 1.4,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                  size: 16,
                                ),
                              ],
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        controller.onboardingPages.length,
                        (index) => Obx(() {
                          return Container(
                            margin: const EdgeInsets.all(3),
                            width: controller.selectedPageIndex.value == index
                                ? 28
                                : 9,
                            height: 5,
                            decoration: BoxDecoration(
                                color:
                                    controller.selectedPageIndex.value == index
                                        ? AppColors.secondary_color
                                        : AppColors.indicator_inactive_color,
                                borderRadius: BorderRadius.circular(
                                    controller.selectedPageIndex.value == index
                                        ? 5
                                        : 5)),
                          );
                        }),
                      ),
                    ),
                    Gap(110),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            buttonName: "Skip",
                            onTap: () {},
                            buttonColor: AppColors.light_grey_color,
                            textColor: AppColors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Obx(() {
                          return AppButton(
                            buttonName: "Next",
                            onTap: controller.forwardAction,
                            textColor: controller.isLastPage
                                ? AppColors.white_color
                                : AppColors.white_color,
                          );
                        })),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
