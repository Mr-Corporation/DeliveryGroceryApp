import 'package:deliverygorceryapp/delivery_app/sign_up/verification_complete.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  String code = "";
  String currentText = "";

  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        appBar: AppBar(
          backgroundColor: Color(0xffF8F8F8),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              size: 18,
              Icons.arrow_back_ios_new,
              color: AppColors.primary_color,
            ),
          ),
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
                        'assets/images/verifyOtp.json',
                      ),
                      AppText(
                        title: "Enter Code",
                        size: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      VSpace(MarginConst.m26),
                      AppText(
                        title:
                            "Please enter the code that you received in mobile number",
                        size: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000).withOpacity(0.58),
                      ),
                      VSpace(MarginConst.m26),
                      Row(
                        children: [
                          AppText(
                            title: "Enter OTP Code",
                            size: 11,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000).withOpacity(0.58),
                          ),
                        ],
                      ),
                      VSpace(MarginConst.m14),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 4,
                          autoDisposeControllers: false,
                          animationType: AnimationType.fade,
                          validator: (v) {},
                          pinTheme: PinTheme(
                              fieldHeight: Get.height * 0.06,
                              fieldWidth: Get.height * 0.06,
                              shape: PinCodeFieldShape.box,
                              borderWidth: 0,
                              activeColor: AppColors.white_color,
                              inactiveColor: AppColors.white_color,
                              inactiveFillColor: AppColors.white_color,
                              activeFillColor: AppColors.white_color,
                              selectedFillColor: AppColors.white_color,
                              selectedColor: AppColors.white_color,
                              disabledColor: AppColors.white_color,
                              borderRadius: BorderRadius.circular(10),
                              fieldOuterPadding: EdgeInsets.only(right: 10)),
                          cursorColor: AppColors.primary_color,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          onCompleted: (v) {
                            debugPrint("Completed");
                          },
                          onChanged: (value) {
                            debugPrint(value);
                            setState(() {
                              currentText = value;
                              if (value.length == 6) {
                                setState(() {
                                  code = value;
                                });
                              }
                            });
                          },
                          beforeTextPaste: (text) {
                            debugPrint("Allowing to paste $text");
                            return true;
                          },
                        ),
                      ),
                      VSpace(MarginConst.m26),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.032,
              ),
              AppButton(
                  buttonWidth: double.infinity,
                  buttonRadius: BorderRadius.circular(6),
                  buttonName: "Continue",
                  buttonHeight: 57,
                  buttonColor: AppColors.primary_color,
                  textColor: Colors.white,
                  onTap: () {
                    Get.to(VerificationSuccessful());
                  }),
              VSpace(MarginConst.m20),
            ],
          ),
        ),
      ),
    );
  }
}
