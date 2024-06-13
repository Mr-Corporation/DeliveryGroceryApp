import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../../utils/app_text/app_text.dart';
import '../../utils/dimen.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBarText: "Notification",
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: AppColors.primary_color),
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
              VSpace(MarginConst.m16),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 63,
                              width: 63,
                              decoration: BoxDecoration(
                                  color: Color(0xffF8F8F8),
                                  borderRadius: BorderRadius.circular(360),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/notificationIcon.png"))),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(left: 14),
                                    child: AppText(
                                      title:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
                                              .toString(),
                                      size: 11,
                                      overFlow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Container(
                              height: 19,
                              width: 19,
                              decoration: BoxDecoration(
                                  color: Color(0xffF9F9F9),
                                  borderRadius: BorderRadius.circular(360)),
                              child: Icon(
                                Icons.close,
                                color: AppColors.black,
                                size: 13,
                              ),
                            )
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
    );
  }
}
