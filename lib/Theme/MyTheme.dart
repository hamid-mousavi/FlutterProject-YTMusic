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
    iconTheme: const IconThemeData(color: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
