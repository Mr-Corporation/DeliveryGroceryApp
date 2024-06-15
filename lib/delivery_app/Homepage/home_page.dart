import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/delivery_app/notification/notification.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app_text/app_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBarText: "Home",
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGreetingSection(),
              SizedBox(height: 20),
              _buildImageCard(),
              SizedBox(height: 20),
              _buildSummaryCards(),
              SizedBox(height: 20),
              _buildViewAllOrdersSection(),
              SizedBox(height: 23),
              _buildOrdersTabs(),
              SizedBox(height: 23),
              _buildOrdersList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGreetingSection() {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '👋 Hi Lorem Ipsum!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    'Today is a good to take some orders',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Get.to(NotificationView());
                  },
                  child: Image.asset('assets/images/bellIcon.png', scale: 3)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageCard() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage('assets/images/banner.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSummaryCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSummaryCard('Balance', '\$1200', Icons.account_balance),
        _buildSummaryCard('Delivered orders', '50', Icons.local_shipping),
      ],
    );
  }

  Widget _buildSummaryCard(String title, String value, IconData icon) {
    return Expanded(
      child: Container(
        height: 82,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Row(
            children: [
              Icon(icon, color: Colors.red, size: 19),
              HSpace(MarginConst.m20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildViewAllOrdersSection() {
    return Container(
      height: 54,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'View all orders',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'See all',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrdersTabs() {
    return Row(
      children: [
        _buildTabItem('New Orders', 0),
        SizedBox(width: 10),
        _buildTabItem('Active Orders', 1),
      ],
    );
  }

  Widget _buildTabItem(String title, int index) {
    bool isSelected = _selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
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
              child: Icon(Icons.paste_rounded,
                  color: isSelected ? Colors.white : Colors.grey, size: 20)),
          VSpace(MarginConst.m2),
          Text(
            title,
            style: TextStyle(
                color: isSelected ? Colors.red : Colors.grey,
                fontWeight: isSelected ? FontWeight.w400 : FontWeight.normal,
                fontSize: 9),
          ),
        ],
      ),
    );
  }

  Widget _buildOrdersList() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _buildOrderItem(),
        SizedBox(height: 10),
        _buildOrderItem(),
        // Add more orders as needed
      ],
    );
  }

  Widget _buildOrderItem() {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
          OrderDetail(),
          isScrollControlled: true,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "\$  Payment confirmed",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.primary_color),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            color: Color(0xffE6E6E6), size: 12),
                        Text(
                          "  1.5 miles away",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xffE6E6E6)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/image 16.png',
                height: 85,
                width: 93,
              )
            ],
          ),
        ),
      ),
    );
  }

  OrderDetail() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
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
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            VSpace(MarginConst.m20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "\$  Payment confirmed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.primary_color),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.location_on,
                              color: Color(0xffE6E6E6), size: 12),
                          Text(
                            "  1.5 miles away",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xffE6E6E6)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined,
                        color: AppColors.primary_color, size: 12),
                    Text(
                      "11 AM - 10 PM",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            VSpace(25),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                      buttonHeight: 49,
                      buttonRadius: BorderRadius.circular(6),
                      buttonName: "Decline",
                      buttonColor: Color(0xffF9F9F9),
                      textColor: Color(0xffC9C9C9),
                      onTap: () {
                        print("dsv");
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Center(
                              // Wrap with Center widget
                              child: Material(
                                color: Colors.transparent,
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                        color: AppColors
                                                            .primary_color,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(360)),
                                                    child: Lottie.asset(
                                                        'assets/images/questionMark.json'),
                                                  ),
                                                  VSpace(MarginConst.m12),
                                                  AppText(
                                                    title: "Delete History ?",
                                                    size: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: AppColors.black,
                                                  ),
                                                  VSpace(MarginConst.m12),
                                                  AppText(
                                                    textAlign: TextAlign.center,
                                                    title:
                                                        "Are you sure you want to delete this history?",
                                                    size: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff606060),
                                                  ),
                                                  VSpace(MarginConst.m20),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: AppButton(
                                                            buttonHeight: 49,
                                                            buttonRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            buttonName: "No",
                                                            buttonColor: Color(
                                                                0xffF9F9F9),
                                                            textColor: Color(
                                                                0xffC9C9C9),
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            }),
                                                      ),
                                                      HSpace(MarginConst.m4),
                                                      Expanded(
                                                        child: AppButton(
                                                            buttonHeight: 49,
                                                            buttonRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            buttonName: "Yes",
                                                            buttonColor: AppColors
                                                                .primary_color,
                                                            textColor:
                                                                Colors.white,
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            }),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                        Navigator.pop(context);
                      }),
                ),
                HSpace(MarginConst.m4),
                Expanded(
                  child: AppButton(
                      buttonHeight: 49,
                      buttonRadius: BorderRadius.circular(6),
                      buttonName: "Accept",
                      buttonColor: AppColors.primary_color,
                      textColor: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
            VSpace(MarginConst.m14),
          ],
        ),
      ),
    );
  }
}
