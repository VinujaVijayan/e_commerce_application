import 'package:flutter/material.dart';

class NavProvider with ChangeNotifier {
  int _currentIndex = 2;

  int get currentIndex => _currentIndex;

  void changeIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  void goToHome() {
    _currentIndex = 2;
    notifyListeners();
  }
}
