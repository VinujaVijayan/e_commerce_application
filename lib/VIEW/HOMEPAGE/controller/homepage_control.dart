import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  int _currentSlide = 0;

  int get currentSlide => _currentSlide;

  void changeSlide(int index) {
    _currentSlide = index;
    notifyListeners();
  }
}
