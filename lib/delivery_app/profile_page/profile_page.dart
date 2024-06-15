import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/constant_widget/text_field.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';

import '../../utils/app_button/app_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Profile",
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VSpace(MarginConst.m20),
                    Center(
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Colors.grey.withOpacity(0.4)),
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
              )),
              AppButton(
                  buttonWidth: double.infinity,
                  buttonRadius: BorderRadius.circular(6),
                  buttonName: "Update Profile",
                  buttonHeight: 57,
                  buttonColor: AppColors.primary_color,
                  textColor: Colors.white,
                  onTap: () {}),
              VSpace(MarginConst.m10),
            ],
          ),
        ));
  }
}
