import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/delivery_app/order_history/order_detail.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Order History",
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  AppText(
                    title: "View your all orders history",
                    size: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                  Spacer(),
                  Image.asset('assets/images/bellIcon.png', scale: 3),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3, // Number of items in the list
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              ),
            ],
          ),
        ));
  }
}

class ProductCard extends StatelessWidget {
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
          height: 121,
          child: Card(
            color: AppColors.white_color,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white_color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Image.asset(
                        'assets/images/image 16.png',
                        width: 100,
                        height: 97,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          VSpace(7),
                          Row(
                            children: [
                              Text(
                                'Status: ',
                                style: TextStyle(
                                    color: Color(0xffE6E6E6),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10),
                              ),
                              Text(
                                'Completed',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Price: ',
                                style: TextStyle(
                                    color: Color(0xffE6E6E6),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10),
                              ),
                              Text(
                                '\$20',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(width: 10),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '5 Points',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707070),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 12),
                              Icon(Icons.star, color: Colors.amber, size: 12),
                              Icon(Icons.star, color: Colors.amber, size: 12),
                              Icon(Icons.star_half,
                                  color: Colors.amber, size: 12),
                              Icon(Icons.star_border,
                                  color: Colors.amber, size: 12),
                              SizedBox(width: 5),
                              Text(
                                '3.5',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707070),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Spacer(),
                        Container(
                          height: 39,
                          width: 42,
                          decoration: BoxDecoration(
                              color: Color(0xffF9F9F9),
                              borderRadius: BorderRadius.circular(7)),
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, right: 25),
                                        child: Container(
                                          height: 265,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(25.0),
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
                                                          BorderRadius.circular(
                                                              360)),
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
                                                                  .circular(6),
                                                          buttonName: "No",
                                                          buttonColor:
                                                              Color(0xffF9F9F9),
                                                          textColor:
                                                              Color(0xffC9C9C9),
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
                                                                  .circular(6),
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
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                        Spacer(),
                      ],
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
