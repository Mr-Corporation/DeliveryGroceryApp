// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppColors {

  static Color primary_color = const Color(0xFFEEA832);
  static Color secondary_color = const Color(0xFF397497);
  static Color primary_bg_color = const Color(0xFFF7F9FC);
  static Color white_color = const Color(0xffFFFFFF);
  static Color light_grey_color = const Color(0xffF9F9FB);
  static Color profile_type_color = const Color(0xffF7F9FC);
  static Color light_black_color = const Color(0xff4F4F4F);
  static Color medium_black_color = const Color(0xff0F0F0F);
  static Color indicator_inactive_color = const Color(0xffEAEAFF);

  static Color input_border_color = const Color(0xFFE7E8EE);
  static Color input_Icon_color = const Color(0xFF9C9EB9);
  static Color hint_color = const Color(0xFFD4D4D4);
  static Color error_color = const Color(0xFFFB2828);
  static Color bg_color = const Color(0xFFF5F8FA);
  static const black = Colors.black;
  static Color bg_grey = const Color(0xFF9EA4BB);




  static Gradient LOGINSCREEN_GRADIENT = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xff2412A9),
      Color(0XFFFFFFFF),
    ],
  );

  static Gradient makeOverGradient = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF2578A9),
      Color.fromARGB(255, 80, 140, 175),
    ],
  );
}
