import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/constant_widget/popup_menu.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  TextEditingController tcSelectMonth = TextEditingController();
  TextEditingController tcSelectYear = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Payment",
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  AppText(
                    title: "Transaction history",
                    size: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                  Spacer(),
                  Image.asset('assets/images/bellIcon.png', scale: 3),
                ],
              ),
              VSpace(MarginConst.m20),
              Container(
                height: 109,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.white_color,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), // Shadow color
                        offset: Offset(0, 2), // Shadow offset
                        blurRadius: 48, // Shadow blur radius
                      ),
                    ],
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      AppText(
                        title: "Current Balance",
                        size: 9,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA29E9B),
                      ),
                      Spacer(),
                      AppText(
                        title: "\$35,654.00",
                        size: 26,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1F1D1C),
                      ),
                      Spacer(),
                      AppText(
                        title: "Updated 2 min ago",
                        size: 9,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA29E9B),
                      ),
                    ],
                  ),
                ),
              ),
              VSpace(MarginConst.m20),
              Row(
                children: [
                  AppText(
                    title: "Salary Slips",
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1F1D1C),
                  ),
                ],
              ),
              VSpace(MarginConst.m20),
              Row(
                children: [
                  Expanded(
                    child: ProvinceView(
                        controller: tcSelectMonth,
                        list: ['pan card', 'aadhar card', 'voter card'],
                        emptyText: "Select month"),
                  ),
                  HSpace(MarginConst.m10),
                  Expanded(
                    child: ProvinceView(
                        controller: tcSelectYear,
                        list: ['pan card', 'aadhar card', 'voter card'],
                        emptyText: "Select year"),
                  ),
                ],
              ),
              VSpace(MarginConst.m20),
              Container(
                height: 89,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.white_color,
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 17),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xffF9F9F9),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/handmoney.png'),
                                scale: 3)),
                      ),
                      HSpace(MarginConst.m10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: "Transaction No# 12345678",
                            size: 9,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA29E9B),
                          ),
                          Spacer(),
                          AppText(
                            title: "\$12,864.00",
                            size: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1F1D1C),
                          ),
                          Spacer(),
                          AppText(
                            title: "Date : 11-22-2024",
                            size: 9,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA29E9B),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 39,
                        width: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xffF9F9F9),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/downloadfile.png'),
                                scale: 3)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
