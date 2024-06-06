


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/utils/app_colors/app_colors.dart';
import 'package:provider/utils/app_text/app_text.dart';

Widget bottomSheet({onCamera ,onGallery,required BuildContext context}) {
  return DraggableScrollableSheet(
    initialChildSize: 0.25,
    minChildSize: 0.25,
    maxChildSize: 0.25,
    builder: (_, controller) => Container(
      decoration: BoxDecoration(
        color: AppColors.white_color,
        borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Padding(
        padding:  EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                InkWell(
                    onTap: onGallery,
                    child: iconCreation(
                        Icons.insert_photo, AppColors.primary_color, "Gallery")),
                SizedBox(width: Get.width*0.2,),
                InkWell(
                    onTap: onCamera,
                    child: iconCreation(
                        Icons.camera_alt,AppColors.primary_color , "Camera")),
              ],
            ),
          ],
        ),
      ),
    ),
  );


}

Widget iconCreation(IconData icons, Color color, String text) {
  return Column(
    children: [
      CircleAvatar(
        radius: 24,
        backgroundColor: color,
        child: Icon(
          icons,
          // semanticLabel: "Help",
          size: 22,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      AppText(
          title: text,
          color: AppColors.primary_color,
          fontWeight: FontWeight.w500,
          size: 15)
    ],
  );
}

 Future<File?> pickImage(ImageSource imageSource) async {
File imageFile;
final file = await ImagePicker().pickImage(source: imageSource,imageQuality: 20);
if (file != null) {
imageFile = File(file.path);
return imageFile;
} else {
print("No image selected");
}
return null;
}