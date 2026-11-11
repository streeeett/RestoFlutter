import 'package:flutter/material.dart';

class Cp extends ChangeNotifier {
  int _number = 0;

  int get number => _number;

  void add() {
    _number++;
    notifyListeners();
  }

  void delete() {
    _number--;
    notifyListeners();
  }
}
