import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DriverInfoController extends GetxController {
  final image = Rx<XFile?>(null);
  RxList imagelist = RxList([]);

  XFile? get _image => image.value;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image.value = pickedFile;
      imagelist.add(image.value);
    } else {
      print('No image selected.');
    }
  }

  final image1 = Rx<XFile?>(null);
  RxList imagelist1 = RxList([]);

  XFile? get _image1 => image1.value;

  Future<void> pickImage1() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image1.value = pickedFile;
      imagelist1.add(image1.value);
    } else {
      print('No image selected.');
    }
  }
}
