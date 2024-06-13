import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/constant_widget/text_field.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';

class HepSupport extends StatefulWidget {
  const HepSupport({super.key});

  @override
  State<HepSupport> createState() => _HepSupportState();
}

class _HepSupportState extends State<HepSupport> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Order Detail",
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios,
                              color: AppColors.primary_color),
                          HSpace(10),
                          AppText(
                            title: "Back",
                            size: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                          Spacer(),
                          Image.asset('assets/images/bellIcon.png', scale: 3),
                        ],
                      ),
                      VSpace(MarginConst.m10),
                      AppText(
                        title:
                            "Have something you'd like to share with us? We'd love to hear it! Please use the button below to tell us how MR App can work better for you. Don’t hesitate to give us as much detail as you like. \n\nIf you have a question, please see the FAQs below or write to us and we’ll get back to you as soon as we can. \n\n- MR App Team",
                        size: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff707070),
                      ),
                      VSpace(MarginConst.m20),
                      commonTextField(
                          prefix: Icon(
                            Icons.search,
                            color: AppColors.primary_color,
                          ),
                          hint_text: "Search Help"),
                      VSpace(MarginConst.m20),
                      Row(
                        children: [
                          AppText(
                            title: "FAQ",
                            size: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      VSpace(MarginConst.m20),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Container(
                              height: 49,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    AppText(
                                      title: "Lorem ipsum dolor sit amet ?",
                                      size: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    Spacer(),
                                    Icon(Icons.add, size: 17)
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                  buttonWidth: double.infinity,
                  buttonRadius: BorderRadius.circular(6),
                  buttonName: "help@mrcorporation.com",
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
