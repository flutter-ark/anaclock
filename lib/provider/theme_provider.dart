import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isLightTheme = true;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }

  bool get isLightTheme => _isLightTheme;
}
