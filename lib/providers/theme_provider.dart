import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData theme = ThemeData();
  ThemeMode mode = ThemeMode.light;
  bool get isDark => mode == ThemeMode.dark;
  void changeTheme(ThemeMode newmode) {
    mode = newmode;
    notifyListeners();
  }
}
