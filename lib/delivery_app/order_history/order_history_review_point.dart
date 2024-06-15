import 'package:deliverygorceryapp/constant_widget/base_view.dart';
import 'package:deliverygorceryapp/delivery_app/notification/notification.dart';
import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:deliverygorceryapp/utils/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ReviewPoint extends StatefulWidget {
  const ReviewPoint({super.key});

  @override
  State<ReviewPoint> createState() => _ReviewPointState();
}

class _ReviewPointState extends State<ReviewPoint> {
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
                      VSpace(MarginConst.m10),
                      Container(
                        width: double.infinity,
                        height: 118,
                        padding: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Great Job!',
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'You\'ve Obtained An',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.56),
                              ),
                            ),
                            Spacer(),
                            Text(
                              '15 Points',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ],
                        ),
                      ),
                      VSpace(MarginConst.m24),
                      Row(
                        children: [
                          AppText(
                            title: "Customer Review",
                            size: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      VSpace(MarginConst.m24),
                      CustomerReview(
                        imageUrl:
                            'https://via.placeholder.com/150', // Placeholder image URL
                        name: 'Chauffina Carr',
                        reviewText:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                        rating: 3.5,
                        points: 5,
                      ),
                      VSpace(MarginConst.m24),
                      Row(
                        children: [
                          AppText(
                            title: "Store Review",
                            size: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      VSpace(MarginConst.m24),
                      CustomerReview(
                        imageUrl:
                            'https://via.placeholder.com/150', // Placeholder image URL
                        name: 'Chauffina Carr',
                        reviewText:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                        rating: 3.5,
                        points: 5,
                      ),
                      VSpace(MarginConst.m24),
                      Row(
                        children: [
                          AppText(
                            title: "Store Review",
                            size: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      VSpace(MarginConst.m24),
                      CustomerReview(
                        imageUrl:
                            'https://via.placeholder.com/150', // Placeholder image URL
                        name: 'Chauffina Carr',
                        reviewText:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                        rating: 3.5,
                        points: 5,
                      ),
                    ],
                  ),
                ),
              ),
              VSpace(MarginConst.m10),
            ],
          ),
        ));
  }
}

class CustomerReview extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String reviewText;
  final double rating;
  final int points;

  const CustomerReview({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.reviewText,
    required this.rating,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/image 16.png',
                width: 63,
                height: 63,
                fit: BoxFit.cover,
              )),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0,
                  ),
                ),
                Spacer(),
                Text(
                  reviewText,
                  style: const TextStyle(
                    color: Color(0xffB5B5B5),
                    fontSize: 8.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Spacer(),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: rating,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 12.0,
                      direction: Axis.horizontal,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 8,
                        color: Color(0xff707070),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Row(
                      children: [
                        const Icon(Icons.circle, color: Colors.red, size: 8.0),
                        const SizedBox(width: 4.0),
                        Text(
                          '$points Points',
                          style: const TextStyle(
                            color: Color(0xff707070),
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
