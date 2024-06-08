import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

commonTextField({
  required String hint_text,
  bool? is_obscure,
  bool? is_height,
  int? maxLines,
  Color? color,
  Widget? suffix,
  Widget? prefix,
  BorderRadius? borderRadius,
  List<TextInputFormatter>? inputFormat,
  TextEditingController? textEditingController,
  String? Function(String?)? validator,
  Function(String?)? onChange,
  TextInputType? textInputType,
  TextInputAction? textInputAction,
  bool obscure = false,
  bool isreadonly = false,
}) {
  return TextFormField(
    obscureText: is_obscure ?? false,
    inputFormatters: inputFormat ?? [],
    maxLines: maxLines,
    controller: textEditingController,
    cursorColor: AppColors.primary_color,
    validator: validator,
    readOnly: isreadonly ?? false,
    onChanged: onChange,
    textInputAction: textInputAction,
    keyboardType: textInputType,
    decoration: InputDecoration(
      prefixIcon: prefix ?? null,
      suffixIcon:
          suffix != null ? suffix : null, // Wrap suffix with Center widget
      filled: true,
      fillColor: color ?? AppColors.white_color,

      contentPadding: is_height != true
          ? EdgeInsets.symmetric(vertical: 15, horizontal: 15)
          : EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(7),
        borderSide: BorderSide.none,
      ),
      hintText: hint_text,
      hintStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: AppColors.black.withOpacity(0.5),
      ),
    ),
    style: TextStyle(
        fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.black),
  );
}

leadingTextField({required String text}) {
  return AppText(
    title: text,
    size: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
}
