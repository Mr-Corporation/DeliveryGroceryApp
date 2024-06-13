import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';

import '../utils/app_button/app_button.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
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
                      image: NetworkImage('https://via.placeholder.com/150'))),
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
                icon: Icons.language,
                title: 'Language Setting',
              ),
              _buildSettingsItem(
                icon: Icons.redeem,
                title: 'My Rewards',
              ),
              _buildSettingsItem(
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
      {required IconData icon, required String title, Widget? trailing}) {
    return ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      trailing: trailing ?? null,
      onTap: () {},
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
