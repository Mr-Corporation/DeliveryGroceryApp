import 'package:get/get.dart';
import 'package:provider/app/profile_type/profile_type_controller.dart';

class ProfileTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileTypeController());
  }
}
