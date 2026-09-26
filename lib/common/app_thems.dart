import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class AppThems {
  static ThemeData theme=ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.goldColor),
    fontFamily: 'jannalt',
    fontFamilyFallback: ['jannalt'],
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.blackColor,
      foregroundColor: AppColors.goldColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.goldColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}