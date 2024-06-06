import 'package:get/get.dart';



class ProfileTypeController extends GetxController {

  var profileType="".obs;
  updateProfileType(val){
    profileType.value=val;
    update();
  }


}

