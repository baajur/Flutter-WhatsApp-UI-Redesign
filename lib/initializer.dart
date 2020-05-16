import 'package:flutter/material.dart';

class Initializer with ChangeNotifier {
  int homePageIndex = 0;

  void setHomePageIndex(index) {
    homePageIndex = index;
    notifyListeners();
  }
}