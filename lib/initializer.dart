import 'package:flutter/material.dart';

class Initializer with ChangeNotifier {
  int homePageIndex = 0;
  bool topBar = true;
  bool statusBar = true;
  bool searchBar = false;

  void setHomePageIndex(index) {
    homePageIndex = index;
    notifyListeners();
  }

  void toogleSearchBar() {
    searchBar = !searchBar;
    if (!searchBar) {
      toogleTopBar();
      toogleStatusBar();
    }
    notifyListeners();
  }

  void toogleTopBar() {
    topBar = !topBar;
    notifyListeners();
  }

  void toogleStatusBar() {
    statusBar = !statusBar;
    notifyListeners();
  }
}