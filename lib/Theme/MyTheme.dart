import 'package:flutter/material.dart';

class AppThemString {
  static String quick = 'انتخاب سریع';
  static String playAll = 'پخش همه';
  static String news = 'جدید';
  static String suggestionAlbume = 'البوم های پیشنهادی';
  static String suggestionMusic = 'نوحه های پیشنهادی';
  static String forYou = 'برای شما';
  static String allContent = 'محتوای بیشتر';
  static String listenAgain = 'شنیدن مجدد';
  static String startRadioFromASong = 'با انتخاب یک نوحه رادیو را شروع کنید';
}

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: MyAppColors.lightBlue,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    fontFamily: 'DroidKufi',
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.red,
        onPrimary: Colors.red,
        secondary: Colors.red,
        onSecondary: Colors.red,
        error: Colors.white,
        onError: Colors.white,
        background: Colors.black,
        onBackground: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(color: Colors.red),
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        )),
    primaryColor: MyAppColors.darkBlue,
    brightness: Brightness.dark,
  );
}

class MyAppColors {
  static final darkBlue = Color(0xFF1E1E2C);
  static final lightBlue = Color(0xFF2D2D44);
}
