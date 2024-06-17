import 'package:deliverygorceryapp/delivery_app/Homepage/home_page.dart';
import 'package:deliverygorceryapp/delivery_app/account_setting.dart';
import 'package:deliverygorceryapp/delivery_app/order_history/order_history.dart';
import 'package:deliverygorceryapp/delivery_app/payment/payment.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

List bottomScreen = [
  HomeScreen(),
  PaymentView(),
  OrderHistory(),
  AccountSetting(),
];
int currentIndex = 0;

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            currentImage(
                currentIndex == 0
                    ? 'assets/images/1selected.png'
                    : 'assets/images/1bottom.png',
                0),
            currentImage(
                currentIndex == 1
                    ? 'assets/images/2selected.png'
                    : 'assets/images/2bottom.png',
                1),
            currentImage(
                currentIndex == 2
                    ? 'assets/images/3selected.png'
                    : 'assets/images/3bottom.png',
                2),
            currentImage(
                currentIndex == 3
                    ? 'assets/images/4selected.png'
                    : 'assets/images/4bottom.png',
                3),
          ],
        ),
      ),
      body: bottomScreen[currentIndex],
    );
  }

  currentImage(String image, int index) {
    return Column(
      children: [
        Visibility(
          visible: index == currentIndex,
          child: Container(
            height: 3,
            width: 30,
            color: AppColors.primary_color,
          ),
        ),
        Spacer(),
        GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: Image.asset(image, scale: 3)),
        Spacer(),
      ],
    );
  }
}
