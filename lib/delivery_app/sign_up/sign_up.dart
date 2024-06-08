import 'dart:io';

import 'package:deliverygorceryapp/constant_widget/text_field.dart';
import 'package:deliverygorceryapp/delivery_app/sign_up/driver_info.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color_small,
      appBar: AppBar(
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
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          _pickImage();
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: AppColors.white_color_small,
                              image: imageFile == null
                                  ? DecorationImage(
                                      image: AssetImage(
                                          'assets/images/UserImage.png'),
                                      fit: BoxFit.fill)
                                  : DecorationImage(
                                      image: FileImage(File(imageFile!)),
                                      fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(360),
                                  color: AppColors.white_color_small,
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                      'assets/images/add_photo_icon.png'),
                                ))),
                          ),
                        ),
                      ),
                    ),
                    VSpace(MarginConst.m28),
                    leadingTextField(text: "Username"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your name"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Email"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your email"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Mobile Number"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your mobile number"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Occupation"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your best skill"),
                    VSpace(MarginConst.m10),
                    leadingTextField(text: "Province"),
                    VSpace(MarginConst.m10),
                    commonTextField(hint_text: "Enter your province"),
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
                  Get.to(DriverInfo());
                }),
            VSpace(MarginConst.m10),
          ],
        ),
      ),
    );
  }

  Future _pickImage() async {
    var pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 20);

    if (pickedFile != null) {
      setState(() {
        File imageFile12 = File(pickedFile.path);
        imageFile = imageFile12.path;
      });
    }
  }
}
