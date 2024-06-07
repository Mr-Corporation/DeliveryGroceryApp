import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../app_colors/app_colors.dart';

class AppPhoneInput extends StatelessWidget {
  const AppPhoneInput({
    super.key,
    required this.onChanged,
    required this.onCountryChanged,
    this.errorText,
    this.controller,
  });

  final ValueChanged<PhoneNumber?> onChanged;
  final String? errorText;
  final controller;
  final ValueChanged<Country> onCountryChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntlPhoneField(
          searchText: "Select Country/Region",
          dropdownIconPosition: IconPosition.trailing,
          controller: controller,
          initialCountryCode: 'AE',
          languageCode: "en",
          textInputAction: TextInputAction.done,
          dropdownIcon: Icon(
            Icons.arrow_drop_down,
            size: 34,
            color: AppColors.input_Icon_color,
          ),
          pickerDialogStyle: PickerDialogStyle(backgroundColor: Colors.white),
          flagsButtonPadding: const EdgeInsets.only(left: 10),
          onCountryChanged: onCountryChanged,
          dropdownTextStyle:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          decoration: InputDecoration(
            hintText: "78 9087 8827",
            hintStyle: TextStyle(
                color: Colors.grey.shade300, fontWeight: FontWeight.normal),
            fillColor: Colors.transparent,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.input_border_color),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.input_border_color),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.input_border_color),
              borderRadius: BorderRadius.circular(10),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.input_border_color),
              borderRadius: BorderRadius.circular(10),
            ),
            errorStyle: const TextStyle(fontSize: 0),
            counterStyle: const TextStyle(fontSize: 0),
          ),
          onChanged: onChanged,
        ),
        if (errorText!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 16, right: 16),
            child: Text(errorText!,
                style: const TextStyle(color: Colors.red, fontSize: 9)),
          )
      ],
    );
  }
}
