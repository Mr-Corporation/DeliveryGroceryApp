import 'dart:io';

import 'package:deliverygorceryapp/constant_widget/popup_menu.dart';
import 'package:deliverygorceryapp/constant_widget/text_field.dart';
import 'package:deliverygorceryapp/delivery_app/sign_up/driver_info_controller.dart';
import 'package:deliverygorceryapp/delivery_app/sign_up/submit_document.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_button/app_button.dart';

class DriverInfo extends StatefulWidget {
  const DriverInfo({super.key});

  @override
  State<DriverInfo> createState() => _DriverInfoState();
}

class _DriverInfoState extends State<DriverInfo> {
  TextEditingController tcSelectOption = TextEditingController();
  final driverInfoController = Get.put(DriverInfoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color_small,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.white_color_small,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.primary_color,
          ),
        ),
        title: AppText(
          title: "Sign Up",
          size: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25, bottom: 25, top: 10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: AppText(
                        title: "Register Yourself",
                        size: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    VSpace(MarginConst.m10),
                    Center(
                      child: AppText(
                        textAlign: TextAlign.center,
                        title:
                            "Upload your documents now to begin an amazing journey",
                        size: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black.withOpacity(0.65),
                      ),
                    ),
                    VSpace(MarginConst.m32),
                    leadingTextField(text: "Account holder name"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your license ID"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Transaction Number"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your license ID"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Institute Number"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your license ID"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Bank Account Number"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your license ID"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Driving License ID"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your license ID"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "ID Proof"),
                    VSpace(MarginConst.m10),
                    ProvinceView(
                        controller: tcSelectOption,
                        list: ['pan card', 'aadhar card', 'voter card'],
                        emptyText: "Select option"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Unique ID Number"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your Unique ID"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Delivery Vehicle"),
                    VSpace(MarginConst.m10),
                    ProvinceView(
                        controller: tcSelectOption,
                        list: ['pan card', 'aadhar card', 'voter card'],
                        emptyText: "Select option"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Vehicle Name"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your vehicle name"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Vehicle Number"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your vehicle number"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Upload Driving License Images"),
                    VSpace(MarginConst.m10),
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: AppColor.borderColor),
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: Obx(
                                  () => ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        driverInfoController.imagelist.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            right: MarginConst.m10),
                                        child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.file(
                                                  File(driverInfoController
                                                      .imagelist[index]!.path),
                                                  fit: BoxFit.fill,
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    driverInfoController
                                                        .imagelist
                                                        .removeAt(index);
                                                  },
                                                  child: Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(360),
                                                        color: AppColors
                                                            .primary_color),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.close,
                                                        size: 10,
                                                        color: AppColors
                                                            .white_color,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )),
                          ),
                          AppButton(
                              buttonWidth: 122,
                              buttonHeight: 38,
                              buttonRadius: BorderRadius.circular(19),
                              buttonName: "Upload",
                              buttonColor: AppColors.primary_color,
                              textColor: Colors.white,
                              onTap: () {
                                driverInfoController.pickImage();
                              }),
                          VSpace(MarginConst.m10)
                        ],
                      ),
                    ),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Upload Registration Copy"),
                    VSpace(MarginConst.m10),
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: AppColor.borderColor),
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: Obx(
                                  () => ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        driverInfoController.imagelist1.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            right: MarginConst.m10),
                                        child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.file(
                                                  File(driverInfoController
                                                      .imagelist1[index]!.path),
                                                  fit: BoxFit.fill,
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    driverInfoController
                                                        .imagelist1
                                                        .removeAt(index);
                                                  },
                                                  child: Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(360),
                                                        color: AppColors
                                                            .primary_color),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.close,
                                                        size: 10,
                                                        color: AppColors
                                                            .white_color,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )),
                          ),
                          AppButton(
                              buttonWidth: 122,
                              buttonHeight: 38,
                              buttonRadius: BorderRadius.circular(19),
                              buttonName: "Upload",
                              buttonColor: AppColors.primary_color,
                              textColor: Colors.white,
                              onTap: () {
                                driverInfoController.pickImage1();
                              }),
                          VSpace(MarginConst.m10)
                        ],
                      ),
                    ),
                    VSpace(MarginConst.m10),
                  ],
                ),
              ),
            ),
            AppButton(
                buttonWidth: double.infinity,
                buttonRadius: BorderRadius.circular(6),
                buttonName: "Next",
                buttonHeight: 57,
                buttonColor: AppColors.primary_color,
                textColor: Colors.white,
                onTap: () {
                  Get.to(SubmitDocument());
                }),
          ],
        ),
      ),
    );
  }
}
