import 'package:cosmic_app/core/constants/colors.dart';
import 'package:flutter/material.dart';


class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.accent),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: AppColors.white, fontSize: 16),
    ),
  );
}
