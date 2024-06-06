import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:provider/app/profile_type/profile_type_controller.dart';
import 'package:provider/utils/app_colors/app_colors.dart';
import 'package:provider/utils/app_text/app_text.dart';
import 'package:provider/utils/appbars/main_appbar.dart';


class ProfileTypeView extends StatelessWidget {
  ProfileTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      GetBuilder<ProfileTypeController>(
          autoRemove: true,
          builder: (controller) =>

              Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  forceMaterialTransparency: true,
                  title:MainAppBar(title: ""
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(

                        title:"Select Profile Type",

                        fontWeight: FontWeight.w600,

                        size: 28,
                      ),
                      Gap(8),
                      AppText(

                        title:"Choose the type of profile that best represents you: Company Profile or Individual Profile.",

                        fontWeight: FontWeight.w400,
                        color: AppColors.light_black_color,

                        size: 14,
                      ),
                      Gap(32),
                      profileTypeComponent(icon: "assets/icons/single.svg",
                      title: "I'm an Individual",
                        subTitle: "Create profile as an individual.",
                        onTap: (){
                        controller.updateProfileType("individual");
                        }
                      ),
                      Gap(12),
                      profileTypeComponent(icon: "assets/icons/group.svg",
                          title: "I'm an Employee",
                          subTitle: "Create a company employee profile.",
                          onTap: (){
                            controller.updateProfileType("employee");
                          }
                      ),
                    ],
                  ),
                ),
              )
      );
  }

  Widget profileTypeComponent({VoidCallback ?onTap,title,subTitle,icon}){
    return GestureDetector(
      onTap:onTap ,
      child
          : Container(
        decoration: BoxDecoration(
            color: AppColors.primary_bg_color,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(

                      title:title,

                      fontWeight: FontWeight.w500,
                      color: AppColors.light_black_color,

                      size: 16,
                    ),
                    SizedBox(height: 4,),
                    AppText(

                      title:subTitle,

                      fontWeight: FontWeight.w400,
                      color: AppColors.light_black_color,

                      size: 13,
                    ),
                  ],
                ),
              ),
              SvgPicture.asset("assets/icons/next_ic.svg")

            ],
          ),
        ),
      ),
    );
  }
}
