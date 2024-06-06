
import 'package:get/get.dart';
import 'package:provider/app/onboarding/onboarding_binding.dart';
import 'package:provider/app/onboarding/onboarding_view.dart';
import 'package:provider/app/profile_type/profile_type_binding.dart';
import 'package:provider/app/profile_type/profile_type_view.dart';
import 'package:provider/app/splash/splash_binding.dart';
import 'package:provider/app/splash/splash_view.dart';
import 'package:provider/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.onboarding,
      page: () =>  OnBoardingView(),
      binding: OnBoardingBinding(),
    ),


    //profile Type


    GetPage(
      name: AppRoutes.profile_type,
      page: () =>  ProfileTypeView(),
      binding: ProfileTypeBinding(),
    ),

//** Create Project Routes End Here **//
  ];
}
