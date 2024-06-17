import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/delivery_app/help_support/help_support.dart';
import 'package:deliverygorceryapp/delivery_app/my_rewards/my_reward.dart';
import 'package:deliverygorceryapp/delivery_app/refer_earn/refer_earn.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_button/app_button.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  int selecteIndex = 0;
  List language = [
    {"title": "ENG", "sub": "English", "code": "en"},
    {"title": "Punjabi", "sub": "Punjabi", "code": "pa"},
    {"title": "Español", "sub": "Spanish", "code": "es"},
    {"title": "Italiano", "sub": "Italian", "code": "it"},
    {"title": "Deutsch", "sub": "German", "code": "nl"},
    {"title": "Français", "sub": "French", "code": "fr"},
    {"title": "Tagalog", "sub": "Tagalog", "code": "tl"},
    {"title": "Chinese", "sub": "Chinese", "code": "zh"},
  ];
  bool is_switch = true;
  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBarText: "Account Setting",
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProfileSection(),
            SizedBox(height: 20),
            _buildSettingsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      height: 109,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 79,
              width: 79,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  image: DecorationImage(
                      image: AssetImage('assets/images/image 16.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                VSpace(MarginConst.m4),
                Text(
                  'Email',
                  style: TextStyle(
                    color: AppColors.primary_color,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.red,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsList() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(43)),
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            children: [
              _buildSettingsItem(
                icon: Icons.notifications_outlined,
                title: 'Notification',
                trailing: SizedBox(
                  height: 17,
                  width: 35,
                  child: Switch(
                      trackColor: MaterialStatePropertyAll(
                          is_switch ? AppColors.primary_color : null),
                      inactiveThumbColor: AppColors.primary_color,
                      value: is_switch,
                      onChanged: (val) {
                        is_switch = val;
                        setState(() {});
                      }),
                ),
              ),
              _buildSettingsItem(
                onTap1: () {
                  Get.bottomSheet(
                    StatefulBuilder(
                      builder: (context, setState1) {
                        return Container(
                          height: Get.height / 2,
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
                                AppText(
                                  title: "Select Language",
                                  size: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: language.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      onTap: () {
                                        selecteIndex = index;
                                        setState1(() {});
                                        setState(() {});
                                      },
                                      leading: AppText(
                                        title: language[index]['title'],
                                        size: 12,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      title: AppText(
                                        title: "",
                                        size: 12,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      trailing: Container(
                                        height: 16,
                                        width: 16,
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(360),
                                            border: Border.all(
                                                color:
                                                    AppColors.primary_color)),
                                        child: Visibility(
                                          visible: selecteIndex == index,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.primary_color,
                                              borderRadius:
                                                  BorderRadius.circular(360),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    isScrollControlled: true,
                  );
                },
                icon: Icons.language,
                title: 'Language Setting',
              ),
              _buildSettingsItem(
                onTap1: () {
                  Get.to(MyReward());
                },
                icon: Icons.redeem,
                title: 'My Rewards',
              ),
              _buildSettingsItem(
                onTap1: () {
                  Get.to(ReferEarn());
                },
                icon: Icons.card_giftcard,
                title: 'Refer & Earn',
              ),
              _buildSettingsItem(
                icon: Icons.help_outline,
                title: 'Help & Support',
              ),
              Spacer(),
              _buildLogoutButton(),
              VSpace(MarginConst.m10)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
      {required IconData icon,
      required String title,
      Widget? trailing,
      void Function()? onTap1}) {
    return ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      trailing: trailing ?? null,
      onTap: onTap1 ??
          () {
            Get.to(HepSupport());
          },
    );
  }

  Widget _buildLogoutButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: AppButton(
          buttonWidth: double.infinity,
          buttonRadius: BorderRadius.circular(6),
          buttonName: "Logout",
          buttonHeight: 57,
          buttonColor: AppColors.primary_color,
          textColor: Colors.white,
          onTap: () {}),
    );
  }
}
