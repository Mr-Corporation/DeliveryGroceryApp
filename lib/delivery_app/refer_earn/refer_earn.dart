import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/delivery_app/notification/notification.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ReferEarn extends StatefulWidget {
  const ReferEarn({super.key});

  @override
  State<ReferEarn> createState() => _ReferEarnState();
}

class _ReferEarnState extends State<ReferEarn> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Refer and Earn",
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                    ReferralCard(
                      referralId: 'LSUbask188363666655',
                    ),
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}

class ReferralCard extends StatelessWidget {
  final String referralId;

  const ReferralCard({Key? key, required this.referralId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.monetization_on,
          color: Colors.amber,
          size: 82.0,
        ),
        SizedBox(height: 8.0),
        Container(
          height: 118,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Column(
              children: [
                Text(
                  'Refer Your Friends',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  'And Earn',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.56)),
                ),
                Spacer(),
                Text(
                  '\$1 For Every',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary_color),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 25.0),
        Row(
          children: [
            Text(
              '\$1 For Every',
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                referralId,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: Icon(Icons.copy, color: AppColors.primary_color),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: referralId));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Copied to clipboard')),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
