import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';

class BaseView extends StatefulWidget {
  String appBarText;
  Widget child;
  BaseView({
    super.key,
    required this.appBarText,
    required this.child});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
          backgroundColor: Color(0xffF9F9F9),
          scrolledUnderElevation: 0,
          title: AppText(
            title: widget.appBarText,
            size: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: widget.child,
    );
  }
}
