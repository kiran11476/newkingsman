import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  var _pageindex = 0;

  int get pageindex => _pageindex;

  navpage(index) {
    _pageindex = index;
    notifyListeners();
  }
}
