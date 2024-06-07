import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

var bottomNavDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(
      color: AppColors.bg_grey.withOpacity(0.3),
    ),
  ),
);

BoxDecoration bottomNavItemsDecoration(bool isSelected) {
  return BoxDecoration(
    color: AppColors.white_color,
    border: Border(
      top: BorderSide(
        color: isSelected ? AppColors.primary_color : AppColors.white_color,
        width: 3,
      ),
    ),
  );
}

BoxDecoration typeSelectionCardDecoration(bool selected) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: AppColors.bg_color,
    border: selected == true
        ? Border.all(
            color: AppColors.primary_color,
          )
        : Border.all(
            color: AppColors.bg_color,
          ),
  );
}

BoxDecoration radioButtonDecoration(bool selected) {
  return BoxDecoration(
    color: selected == true ? AppColors.primary_color : AppColors.white_color,
    shape: BoxShape.circle,
    border: selected == true
        ? Border.all(color: AppColors.primary_color)
        : Border.all(
            color: AppColors.bg_grey,
            width: 2,
          ),
  );
}

var appBoxDEcoration = BoxDecoration(
  color: AppColors.primary_bg_color,
  borderRadius: BorderRadius.circular(8),
);
