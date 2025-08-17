import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
    primaryColor: AppColors.blackColor,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,
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
        fontWeight: FontWeight.w500,
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
    tabBarTheme: TabBarThemeData(
      labelStyle: AppTextStyles.labelMedium.copyWith(
        color: AppColors.lightChatTabBarSelectedTextColor,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: AppTextStyles.labelMedium.copyWith(
        color: AppColors.lightChatTabBarUnselectedTextColor,
        fontWeight: FontWeight.w400,
      ),
    ),

    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),

        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
        textStyle: WidgetStateProperty.all(
          AppTextStyles.labelMedium.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,

    scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
    primaryColor: AppColors.whiteColor,

    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,

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

    searchBarTheme: SearchBarThemeData(
      elevation: WidgetStateProperty.all(0),
      hintStyle: WidgetStateProperty.all<TextStyle>(
        AppTextStyles.labelMedium.copyWith(
          color: AppColors.darkSearchBarGreyColor,
        ),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(
        AppColors.darkSearchBarColor,
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelStyle: AppTextStyles.labelMedium.copyWith(
        color: AppColors.darkChatTabBarSelectedTextColor,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: AppTextStyles.labelMedium.copyWith(
        color: AppColors.darkChatTabBarUnselectedTextColor,
        fontWeight: FontWeight.w400,
      ),
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

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
        textStyle: WidgetStateProperty.all(
          AppTextStyles.labelMedium.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    ),
  );
}
