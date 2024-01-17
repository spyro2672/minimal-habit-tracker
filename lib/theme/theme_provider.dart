import 'package:flutter/material.dart';
import 'package:minimal_habit_tracker/theme/dark_mode.dart';
import 'package:minimal_habit_tracker/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initially, light mode
  ThemeData _themeData = lightMode;

  // get current theme
  ThemeData get ThemeData => _themeData;

  // is current theme dark mode
  bool get isDarkMode => _themeData == darkMode;

  // set theme
  set ThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toogle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      ThemeData = darkMode;
    } else {
      ThemeData = lightMode;
    }
  }
}
