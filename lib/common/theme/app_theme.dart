import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/theme/app_colors.dart';
import 'package:flutter_application_1/common/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    drawerTheme: DrawerThemeData(
      clipBehavior: Clip.none,

      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
    hintColor: AppColors.primarydark,
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.primarydark,
      backgroundColor: AppColors.primarylight,
      centerTitle: true,
      titleTextStyle: AppTextStyle.styleS20W500,
      iconTheme: IconThemeData(size: 24, color: AppColors.primarydark),
      actionsIconTheme: IconThemeData(color: AppColors.primarydark, size: 24),
    ),

    scaffoldBackgroundColor: AppColors.primarylight,
    textTheme: TextTheme(
      headlineLarge: AppTextStyle.styleS30W600.copyWith(
        color: AppColors.primarydark,
      ),
      labelMedium: AppTextStyle.styleS24W500.copyWith(
        color: AppColors.primarydark,
      ),

      headlineMedium: AppTextStyle.styleS24W700.copyWith(
        color: AppColors.primarydark,
      ),

      titleLarge: AppTextStyle.styleS20W700.copyWith(
        color: AppColors.primarydark,
      ),

      titleMedium: AppTextStyle.styleS16W700.copyWith(
        color: AppColors.primarydark,
      ),

      bodyLarge: AppTextStyle.styleS20W400.copyWith(
        color: AppColors.primarydark,
      ),

      bodyMedium: AppTextStyle.styleS16W700.copyWith(
        color: AppColors.primarydark,
      ),

      bodySmall: AppTextStyle.styleS14W400.copyWith(
        color: AppColors.primarydark,
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primarylight,
      secondary: AppColors.primarydark,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    drawerTheme: DrawerThemeData(
      clipBehavior: Clip.none,

      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
    hintColor: AppColors.primarylight,
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.primarylight,
      backgroundColor: AppColors.primarydark,
      centerTitle: true,
      iconTheme: IconThemeData(size: 24, color: AppColors.primarylight),
      actionsIconTheme: IconThemeData(color: AppColors.primarylight, size: 24),
    ),
    scaffoldBackgroundColor: AppColors.primarydark,
    textTheme: TextTheme(
      headlineLarge: AppTextStyle.styleS30W600.copyWith(
        color: AppColors.primarylight,
      ),
      labelMedium: AppTextStyle.styleS24W500.copyWith(
        color: AppColors.primarylight,
      ),

      headlineMedium: AppTextStyle.styleS24W700.copyWith(
        color: AppColors.primarylight,
      ),

      titleLarge: AppTextStyle.styleS20W700.copyWith(
        color: AppColors.primarylight,
      ),

      titleMedium: AppTextStyle.styleS16W700.copyWith(
        color: AppColors.primarylight,
      ),

      bodyLarge: AppTextStyle.styleS20W400.copyWith(
        color: AppColors.primarylight,
      ),

      bodyMedium: AppTextStyle.styleS16W700.copyWith(
        color: AppColors.primarylight,
      ),

      bodySmall: AppTextStyle.styleS14W400.copyWith(
        color: AppColors.primarylight,
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primarydark,
      secondary: AppColors.primarylight,
    ),
  );
}
