import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../app/profile_type/profile_type_controller.dart';
import '../app_button/app_button.dart';
import '../app_colors/app_colors.dart';
import '../app_text/app_text.dart';

class ProfileVerifySheet extends StatelessWidget {
  const ProfileVerifySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileTypeController>(
        autoRemove: false,
        builder: (controller) => Container(
              height: 430,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppText(
                            title: "Add new card",
                            size: 22,
                            fontWeight: FontWeight.w500,
                            color: AppColors.light_grey_color,
                          ),
                          Gap(24),
                        ],
                      ),
                    ),
                  ),
                  AppButton(buttonName: "Saved Card", onTap: () {}),
                ],
              ),
            ));
  }
}
