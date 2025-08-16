import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    splashFactory: NoSplash.splashFactory,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
    primaryColor: AppColors.blackColor,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
      actionsIconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: AppTextStyles.title.copyWith(
        color: AppColors.primaryColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.floatingActionButtonColor,
      elevation: 0,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      headlineMedium: AppTextStyles.headline.copyWith(color: Colors.black),
      titleMedium: AppTextStyles.title.copyWith(color: Colors.black),
      labelLarge: AppTextStyles.labelLarge.copyWith(color: Colors.black),
      labelMedium: AppTextStyles.labelMedium.copyWith(color: Colors.black),
      labelSmall: AppTextStyles.labelSmall.copyWith(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.bottomNavBarBackgroundColor,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        color: AppColors.bottomNavBarSelectedLightIconColor,
        size: 28,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(color: AppColors.blackColor, size: 28),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    ),
    searchBarTheme: SearchBarThemeData(
      elevation: WidgetStateProperty.all(0),
      hintStyle: WidgetStateProperty.all<TextStyle>(
        AppTextStyles.labelMedium.copyWith(
          color: AppColors.lightSearchBarGreyColor,
        ),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(
        AppColors.lightSearchBarColor,
      ),
    ),

    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    splashFactory: NoSplash.splashFactory,
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,

    scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
    primaryColor: AppColors.whiteColor,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: AppTextStyles.title.copyWith(
        color: AppColors.whiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: AppColors.floatingActionButtonColor,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      headlineMedium: AppTextStyles.headline.copyWith(color: Colors.white),
      titleMedium: AppTextStyles.title.copyWith(color: Colors.white),
      labelLarge: AppTextStyles.labelLarge.copyWith(color: Colors.white),
      labelMedium: AppTextStyles.labelMedium.copyWith(color: Colors.white),
      labelSmall: AppTextStyles.labelSmall.copyWith(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.bottomNavBarDarkBackgroundColor,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        color: AppColors.bottomNavBarSelectedDarkIconColor,
        size: 28,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: Color(0xFF1E2428),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    cardTheme: CardThemeData(
      color: Color(0xFF1E2428),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}
