import 'package:flutter/material.dart';
import 'package:one_screen/res/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.mainColor,
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
    ),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.mainColor,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
    ),
  );
}
