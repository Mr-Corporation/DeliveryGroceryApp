import 'package:get/get.dart';
import 'package:provider/routes/app_routes.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initscreen();
  }

  void initscreen() async {
    await Future.delayed(const Duration(seconds: 4), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    String? apiToken = '';

    if (apiToken != '') {
    } else {
      Get.toNamed(AppRoutes.onboarding);
    }
  }
}
