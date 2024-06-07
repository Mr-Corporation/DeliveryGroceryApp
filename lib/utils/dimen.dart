import 'package:flutter/cupertino.dart';

class MarginConst {
  static double m2 = 2;
  static double m4 = 4;
  static double m5 = 5;
  static double m6 = 6;
  static double m8 = 8;
  static double m9 = 9;
  static double m10 = 10;
  static double m12 = 12;
  static double m14 = 14;
  static double m16 = 16;
  static double m18 = 18;
  static double m28 = 28;
  static double m20 = 20;
  static double m24 = 24;
  static double m26 = 26;
  static double m32 = 32;
  static double m36 = 36;
  static double m40 = 40;
  static double m48 = 48;
  static double m72 = 72;
  static double m96 = 96;
  static double textFieldHeight = 48;
}

class VSpace extends StatelessWidget {
  const VSpace(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class HSpace extends StatelessWidget {
  const HSpace(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
