import 'dart:io';
import 'dart:ui';

import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/delivery_app/notification/notification.dart';
import 'package:deliverygorceryapp/delivery_app/order_direction/order_direction_controller.dart';
import 'package:deliverygorceryapp/utils/app_button/app_button.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDirection extends StatefulWidget {
  const OrderDirection({super.key});

  @override
  State<OrderDirection> createState() => _OrderDirectionState();
}

class _OrderDirectionState extends State<OrderDirection> {
  final OrderDirection = Get.put(OrderDirectionController());
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBarText: "Order Detail",
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
                    GestureDetector(
                        onTap: () {
                          Get.to(NotificationView());
                        },
                        child: Image.asset('assets/images/bellIcon.png',
                            scale: 3)),
                  ],
                ),
                VSpace(MarginConst.m10),
                Row(
                  children: [
                    AppText(
                      title: "Coffee Shop all order status",
                      size: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ],
                ),
                VSpace(MarginConst.m10),
                DottedLine(),
                VSpace(MarginConst.m20),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildOrderItem(),
                    SizedBox(height: 10),
                    _buildOrderItem(),
                    // Add more orders as needed
                  ],
                ),
                VSpace(MarginConst.m20),
                AppButton(
                    buttonWidth: double.infinity,
                    borderColor: AppColors.primary_color,
                    borderWidth: 1.2,
                    buttonRadius: BorderRadius.circular(6),
                    buttonName: "Pickup all order",
                    buttonHeight: 57,
                    buttonColor: AppColors.white_color,
                    textColor: AppColors.primary_color,
                    onTap: () {
                      Get.bottomSheet(
                        CustomerDirection(),
                        isScrollControlled: true,
                      );
                    }),
                VSpace(MarginConst.m10),
                Row(
                  children: [
                    AppText(
                      title: "Coffee Shop all order status",
                      size: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ],
                ),
                VSpace(MarginConst.m10),
                DottedLine(),
                VSpace(MarginConst.m20),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildOrderItem(),
                    SizedBox(height: 10),
                    _buildOrderItem(),
                    // Add more orders as needed
                  ],
                ),
                VSpace(MarginConst.m20),
                AppButton(
                    buttonWidth: double.infinity,
                    borderColor: AppColors.primary_color,
                    borderWidth: 1.2,
                    buttonRadius: BorderRadius.circular(6),
                    buttonName: "Pickup all order",
                    buttonHeight: 57,
                    buttonColor: AppColors.white_color,
                    textColor: AppColors.primary_color,
                    onTap: () {
                      Get.bottomSheet(
                        CustomerDirection(),
                        isScrollControlled: true,
                      );
                    }),
              ],
            ),
          ),
        ));
  }

  Widget _buildOrderItem() {
    return GestureDetector(
      onTap: () {},
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

  DottedLine() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: DottedDecoration(
              color: AppColors.primary_color,
              strokeWidth: 1,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Column(
          children: [
            VSpace(MarginConst.m14),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Color(0xff16C72E)),
              child: Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              ),
            ),
            VSpace(MarginConst.m4),
            AppText(
              title: "Reached",
              size: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff16C72E),
            ),
          ],
        ),
        Expanded(
          child: Container(
            decoration: DottedDecoration(
              color: AppColors.primary_color,
              strokeWidth: 1,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Column(
          children: [
            VSpace(MarginConst.m14),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Color(0xff16C72E)),
              child: Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              ),
            ),
            VSpace(MarginConst.m4),
            AppText(
              title: "Reached",
              size: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff16C72E),
            ),
          ],
        ),
        Expanded(
          child: Container(
            decoration: DottedDecoration(
              color: AppColors.primary_color,
              strokeWidth: 1,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Column(
          children: [
            VSpace(MarginConst.m14),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Color(0xff16C72E)),
              child: Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              ),
            ),
            VSpace(MarginConst.m4),
            AppText(
              title: "Reached",
              size: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff16C72E),
            ),
          ],
        ),
        Expanded(
          child: Container(
            decoration: DottedDecoration(
              color: AppColors.primary_color,
              strokeWidth: 1,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
      ],
    );
  }

  CustomerDirection() {
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
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'), // Placeholder image
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Customer',
                      style: TextStyle(
                          color: Color(0xffB5B5B5),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Chauffina Carr',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.primary_color),
                      child: Icon(Icons.call, color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // Location Details
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(Icons.directions_car, color: AppColors.primary_color),
                    DashedLine(height: 40),
                    Icon(Icons.location_on, color: Color(0xffD1D1D1)),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        color: Color(0xffB0ADBD),
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      'Alabama, USA',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'To',
                      style: TextStyle(
                        color: Color(0xffB0ADBD),
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      'Alaska, USA',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Update order image',
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            VSpace(MarginConst.m20),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: AppColor.borderColor),
                  borderRadius: BorderRadius.circular(7)),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Obx(
                          () => ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: OrderDirection.imagelist.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(right: MarginConst.m10),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.file(
                                          File(OrderDirection
                                              .imagelist[index]!.path),
                                          fit: BoxFit.fill,
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: GestureDetector(
                                          onTap: () {
                                            OrderDirection.imagelist
                                                .removeAt(index);
                                          },
                                          child: Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                                color: AppColors.primary_color),
                                            child: Center(
                                              child: Icon(
                                                Icons.close,
                                                size: 10,
                                                color: AppColors.white_color,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                  ),
                  AppButton(
                      buttonWidth: 122,
                      buttonHeight: 38,
                      buttonRadius: BorderRadius.circular(19),
                      buttonName: "Upload",
                      buttonColor: AppColors.primary_color,
                      textColor: Colors.white,
                      onTap: () {
                        OrderDirection.pickImage();
                      }),
                  VSpace(MarginConst.m10)
                ],
              ),
            ),
            VSpace(MarginConst.m20),
            AppButton(
                buttonWidth: double.infinity,
                buttonRadius: BorderRadius.circular(6),
                buttonName: "Reached",
                buttonHeight: 57,
                buttonColor: AppColors.primary_color,
                textColor: Colors.white,
                onTap: () {}),
            VSpace(MarginConst.m14),
          ],
        ),
      ),
    );
  }
}

class DottedDecoration extends Decoration {
  final LinePosition linePosition;
  final Shape shape;
  final Color color;
  final BorderRadius? borderRadius;
  final List<int> dash;
  final double strokeWidth;
  DottedDecoration(
      {this.shape = Shape.line,
      this.linePosition = LinePosition.bottom,
      this.color = const Color(0xFF9E9E9E),
      this.borderRadius,
      this.dash = const <int>[5, 5],
      this.strokeWidth = 1});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DottedDecotatorPainter(
        shape, linePosition, color, borderRadius, dash, strokeWidth);
  }
}

class _DottedDecotatorPainter extends BoxPainter {
  LinePosition linePosition;
  Shape shape;
  Color color;
  BorderRadius? borderRadius;
  List<int> dash;
  double strokeWidth;
  _DottedDecotatorPainter(this.shape, this.linePosition, this.color,
      this.borderRadius, this.dash, this.strokeWidth) {
    borderRadius = borderRadius ?? BorderRadius.circular(0);
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Path outPath = Path();
    if (shape == Shape.line) {
      if (linePosition == LinePosition.left) {
        outPath.moveTo(offset.dx, offset.dy);
        outPath.lineTo(offset.dx, offset.dy + configuration.size!.height);
      } else if (linePosition == LinePosition.top) {
        outPath.moveTo(offset.dx, offset.dy);
        outPath.lineTo(offset.dx + configuration.size!.width, offset.dy);
      } else if (linePosition == LinePosition.right) {
        outPath.moveTo(offset.dx + configuration.size!.width, offset.dy);
        outPath.lineTo(offset.dx + configuration.size!.width,
            offset.dy + configuration.size!.height);
      } else {
        outPath.moveTo(offset.dx, offset.dy + configuration.size!.height);
        outPath.lineTo(offset.dx + configuration.size!.width,
            offset.dy + configuration.size!.height);
      }
    } else if (shape == Shape.box) {
      RRect rect = RRect.fromLTRBAndCorners(
        offset.dx,
        offset.dy,
        offset.dx + configuration.size!.width,
        offset.dy + configuration.size!.height,
        bottomLeft: borderRadius!.bottomLeft,
        bottomRight: borderRadius!.bottomRight,
        topLeft: borderRadius!.topLeft,
        topRight: borderRadius!.topRight,
      );
      outPath.addRRect(rect);
    } else if (shape == Shape.circle) {
      outPath.addOval(Rect.fromLTWH(offset.dx, offset.dy,
          configuration.size!.width, configuration.size!.height));
    }

    PathMetrics metrics = outPath.computeMetrics(forceClosed: false);
    Path drawPath = Path();

    for (PathMetric me in metrics) {
      double totalLength = me.length;
      int index = -1;

      for (double start = 0; start < totalLength;) {
        double to = start + dash[(++index) % dash.length];
        to = to > totalLength ? totalLength : to;
        bool isEven = index % 2 == 0;
        if (isEven)
          drawPath.addPath(
              me.extractPath(start, to, startWithMoveTo: true), Offset.zero);
        start = to;
      }
    }

    canvas.drawPath(
        drawPath,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth);
  }
}

enum LinePosition { left, top, right, bottom }

enum Shape { line, box, circle }

class DashedLine extends StatelessWidget {
  final double height;

  DashedLine({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      child: CustomPaint(
        painter: _DashedLinePainter(),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.redAccent
      ..strokeWidth = 2;

    double dashHeight = 4, dashSpace = 4, startY = 0;

    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
