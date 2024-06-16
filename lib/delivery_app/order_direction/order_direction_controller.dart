import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OrderDirectionController extends GetxController {
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
}
