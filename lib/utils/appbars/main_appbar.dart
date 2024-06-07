import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../app_text/app_text.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({
    super.key,
    this.title,
    this.width,
    this.onTap,
    this.icon = 'assets/icons/back_ic.svg',
  });
  final String? title;
  final String icon;
  double? width;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap ??
                () {
                  Get.back();
                },
            child: SvgPicture.asset(icon),
          ),
          AppText(
            title: '$title',
            fontWeight: FontWeight.w600,
            size: 20,
          ),
          SvgPicture.asset('assets/icons/back_ic.svg',
              color: Colors.transparent),
        ],
      ),
    );
  }
}
