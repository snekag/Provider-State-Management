import 'package:flutter/material.dart';

class ScreenProvider extends ChangeNotifier {
  int counterValue = 0;

  incrementCounter() {
    counterValue++;
    notifyListeners();
  }

  decrementCounter() {
    counterValue--;
    notifyListeners();
  }
}
