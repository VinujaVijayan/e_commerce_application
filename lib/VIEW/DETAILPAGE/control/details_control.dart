import 'package:flutter/material.dart';

class DetailsController extends ChangeNotifier {
  int _currentImage = 0;

  int get currentImage => _currentImage;

  void updateCurrentImage(int index) {
    _currentImage = index;
    notifyListeners();
  }}
