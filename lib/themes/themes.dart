import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';

class ThemeProvider extends GetxController {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    update();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: CommonColors.darkBackgroundColor,
    primaryColor: CommonColors.blackColor,
    backgroundColor: CommonColors.darkBackgroundColor,
    colorScheme: const ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: CommonColors.darkBackgroundColor,
    primaryColor: CommonColors.whiteColor,
    backgroundColor: CommonColors.darkBackgroundColor,
    colorScheme: const ColorScheme.light(),
  );
}
