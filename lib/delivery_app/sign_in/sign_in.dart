import 'package:country_picker/country_picker.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  Country? selectedCountry;
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color_small,
      appBar: AppBar(
        backgroundColor: AppColors.white_color_small,
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColors.primary_color,
        ),
        title: AppText(
          title: "Sign In",
          size: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            VSpace(MarginConst.m20),
            AppText(
              title: "Sign In Your Account",
              size: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            VSpace(MarginConst.m20),
            AppText(
              title: "Sign In now to begin an amazing journey",
              size: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.black.withOpacity(0.65),
            ),
            VSpace(MarginConst.m20),
            Row(
              children: [
                AppText(
                  title: "Phone",
                  size: 11,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ],
            ),
            VSpace(MarginConst.m20),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white_color,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        showPhoneCode: true,
                        onSelect: (Country country) {
                          setState(() {
                            selectedCountry = country;
                            print(selectedCountry);
                          });
                        },
                      );
                    },
                    child: Row(
                      children: [
                        if (selectedCountry != null) ...[
                          Container(
                            height: 57,
                            decoration: BoxDecoration(
                                color: Color(0xffECECEC),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    bottomLeft: Radius.circular(7))),
                            width: 80,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 18.0, bottom: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Image.asset(
                                      "icons/flags/png100px/${selectedCountry!.countryCode.toLowerCase()}.png",
                                      package: 'country_icons',
                                      width: 32,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ),
                        ] else ...[
                          Container(
                            height: 57,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Color(0xffECECEC),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    bottomLeft: Radius.circular(7))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 18.0, bottom: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Image.asset(
                                      "icons/flags/png100px/in.png",
                                      package: 'country_icons',
                                      width: 32,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter phone number',
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                    ),
                  ),
                ],
              ),
            ),
            VSpace(MarginConst.m24),
            AppButton(
                buttonWidth: double.infinity,
                buttonRadius: BorderRadius.circular(7),
                buttonName: "Send OTP",
                buttonHeight: 57,
                buttonColor: AppColors.primary_color,
                textColor: Colors.white,
                onTap: () {
                  //  Get.to(SignInView());
                }),
            VSpace(MarginConst.m20),
            Row(
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color(0xffC7C7C7),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AppText(
                    title: "Or Continue With",
                    size: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color(0xffC7C7C7),
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
            VSpace(MarginConst.m20),
            Row(
              children: [
                Spacer(),
                Spacer(),
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      color: AppColors.white_color),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/google_logo.png'),
                  ),
                ),
                Spacer(),
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      color: AppColors.white_color),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/apple_logo.png'),
                  ),
                ),
                Spacer(),
                Spacer(),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                AppText(
                  title: "Don’t Have an Account? ",
                  size: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
                AppText(
                  title: "Create Account",
                  size: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary_color,
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
