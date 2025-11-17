import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/styling/app_fonts.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: AppFonts.mainFont,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLineStyle,
      titleMedium: AppStyles.subtitlesStyles,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.secondaryColor,
    ),
  );
}
