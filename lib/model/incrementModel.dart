import 'package:flutter/material.dart';

class Increment extends ChangeNotifier {
  int _number = 0;
  int get number => _number;

  void add() {
    _number++;
    notifyListeners();
  }
}
