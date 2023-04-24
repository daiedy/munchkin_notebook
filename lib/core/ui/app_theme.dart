import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData(
      fontFamily: 'Academy',
      primaryColor: AppColors.contentColor,
      scaffoldBackgroundColor: AppColors.appBackGround);
}
