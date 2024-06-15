import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/constant_widget/text_field.dart';
import 'package:deliverygorceryapp/delivery_app/notification/notification.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/dimen.dart';

class MyReward extends StatefulWidget {
  const MyReward({super.key});

  @override
  State<MyReward> createState() => _MyRewardState();
}

class _MyRewardState extends State<MyReward> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "My Reward",
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
                        GestureDetector(
                            onTap: () {
                              Get.to(NotificationView());
                            },
                            child: Image.asset('assets/images/bellIcon.png',
                                scale: 3)),
                      ],
                    ),
                    VSpace(MarginConst.m10),
                    Container(
                      width: double.infinity,
                      height: 118,
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Current Points',
                            style: TextStyle(
                                fontSize: 9.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffA29E9B)),
                          ),
                          Spacer(),
                          Text(
                            '1000.00',
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff1F1D1C),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Updated 2 min ago',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA29E9B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VSpace(MarginConst.m20),
                    _buildTabBar(),
                    _buildTabContent()
                  ],
                ),
              )),
              AppButton(
                  buttonWidth: double.infinity,
                  buttonRadius: BorderRadius.circular(6),
                  buttonName: "Redeem Points",
                  buttonHeight: 57,
                  buttonColor: AppColors.primary_color,
                  textColor: Colors.white,
                  onTap: () {
                    Get.bottomSheet(
                      addPayment(),
                      isScrollControlled: true,
                    );
                  }),
              VSpace(MarginConst.m10),
            ],
          ),
        ));
  }

  Widget _buildTabBar() {
    return Row(
      children: [
        _buildTabItem(Icons.monetization_on, 'Earned', 0),
        HSpace(MarginConst.m20),
        _buildTabItem(Icons.leaderboard, 'Leaderboard', 1),
      ],
    );
  }

  Widget _buildTabItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Container(
              height: 59,
              width: 59,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: isSelected ? AppColors.primary_color : Colors.white),
              child: Icon(icon,
                  color: isSelected ? Colors.white : Colors.grey, size: 30)),
          VSpace(MarginConst.m2),
          Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.red : Colors.grey,
                fontWeight: isSelected ? FontWeight.w400 : FontWeight.normal,
                fontSize: 9),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
    if (_selectedIndex == 0) {
      return _buildEarnedTab();
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          height: 93,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: AppColors.white_color),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  height: 63,
                  width: 63,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(360)),
                ),
                HSpace(MarginConst.m10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'Chauffina Carr',
                      style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      'Joined since 20 Dec 2022',
                      style: TextStyle(
                        fontSize: 8.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xffFFD73C), size: 11),
                        Icon(Icons.star, color: Color(0xffFFD73C), size: 11),
                        Icon(Icons.star, color: Color(0xffFFD73C), size: 11),
                        Icon(Icons.star, color: Color(0xffFFD73C), size: 11),
                        Icon(Icons.star_border,
                            color: Color(0xff707070), size: 11),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Text(
                  'View Detail',
                  style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffF33F41),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget _buildEarnedTab() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 16),
      children: [
        _buildEarnedItem(),
        SizedBox(height: 10),
        _buildEarnedItem(),
        // Add more items as needed
      ],
    );
  }

  Widget _buildEarnedItem() {
    return Container(
      height: 89,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: AppColors.white_color),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 65,
              decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(7)),
            ),
            HSpace(MarginConst.m10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  'Invoice No# 12345678',
                  style: TextStyle(
                      fontSize: 9.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA29E9B)),
                ),
                Spacer(),
                Text(
                  '10 points earned',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1F1D1C),
                  ),
                ),
                Spacer(),
                Text(
                  'Date : 11-22-2024',
                  style: TextStyle(
                    fontSize: 9.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA29E9B),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Icon(Icons.check_circle, color: Colors.green),
          ],
        ),
      ),
    );
  }

  addPayment() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width / 4,
              margin: EdgeInsets.only(
                top: 6,
                bottom: 10,
              ),
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.primary_color,
              ),
            ),
            VSpace(MarginConst.m10),
            AppText(
              title: "Redeem Reward Points",
              size: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
            AppText(
              title: "10 Reward points are equal to \$1",
              size: 9,
              fontWeight: FontWeight.w400,
              color: Color(0xffA29E9B),
            ),
            VSpace(MarginConst.m32),
            Row(
              children: [
                AppText(
                  title: "Reward points",
                  size: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ],
            ),
            VSpace(MarginConst.m4),
            commonTextField(
                hint_text: "Enter points to redeem", color: Color(0xffF9F9F9)),
            VSpace(25),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                      buttonHeight: 49,
                      buttonRadius: BorderRadius.circular(6),
                      buttonName: "Cancel",
                      buttonColor: Color(0xffF9F9F9),
                      textColor: Color(0xffC9C9C9),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
                HSpace(MarginConst.m4),
                Expanded(
                  child: AppButton(
                      buttonHeight: 49,
                      buttonRadius: BorderRadius.circular(6),
                      buttonName: "Done",
                      buttonColor: AppColors.primary_color,
                      textColor: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
            VSpace(MarginConst.m10),
          ],
        ),
      ),
    );
  }
}
