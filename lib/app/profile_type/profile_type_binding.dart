import 'package:deliverygorceryapp/app/profile_type/profile_type_controller.dart';
import 'package:get/get.dart';

class ProfileTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileTypeController());
  }
}
