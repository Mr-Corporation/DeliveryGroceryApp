import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/constant_widget/dotted_line.dart';
import 'package:deliverygorceryapp/delivery_app/notification/notification.dart';
import 'package:deliverygorceryapp/delivery_app/order_history/order_history_review_point.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Order Detail",
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
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
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3, // Number of items in the list
                        itemBuilder: (context, index) {
                          return OrderDetailView();
                        },
                      ),
                      VSpace(MarginConst.m24),
                      Container(
                        width: Get.width,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: AppColors.white_color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.05,
                              vertical: Get.height * 0.013),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: "Subtotal",
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8B8B8A),
                                  ),
                                  AppText(
                                    title: "\$88",
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: "Subtotal",
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8B8B8A),
                                  ),
                                  AppText(
                                    title: "\$88",
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: "Subtotal",
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8B8B8A),
                                  ),
                                  AppText(
                                    title: "\$88",
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: DottedDecoration(
                                        color: Colors.grey.withOpacity(0.7),
                                        strokeWidth: 1,
                                        linePosition: LinePosition.bottom,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: "TOTAL",
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8B8B8A),
                                  ),
                                  AppText(
                                    title: "\$23.94",
                                    size: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primary_color,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              AppButton(
                  buttonWidth: double.infinity,
                  buttonRadius: BorderRadius.circular(7),
                  buttonName: "Check Reviews",
                  buttonHeight: 57,
                  buttonColor: AppColors.primary_color,
                  textColor: Colors.white,
                  onTap: () {
                    Get.to(ReviewPoint());
                    // Get.to(OrderHistory()
                    //    PaymentView()
                    // );
                  }),
              VSpace(MarginConst.m10),
            ],
          ),
        ));
  }
}

class OrderDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return OrderDetail();
            },
          ));
        },
        child: SizedBox(
          height: 93,
          child: Card(
            color: AppColors.white_color,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.white_color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6)),
                      child: Image.asset(
                        'assets/images/image 16.png', // Replace with your image URL
                        width: 100,
                        height: 97,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Coffee',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Address: House Restaurant',
                              style: TextStyle(
                                  color: Color(0xff8B8B8A),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Quantity: ',
                                  style: TextStyle(
                                      color: Color(0xff8B8B8A),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9),
                                ),
                                Text(
                                  '2 Cups',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              '\$14',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffF33F41),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
