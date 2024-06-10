import 'package:flutter/material.dart';

class CheckBoxProvider extends ChangeNotifier {
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  bool get isChecked1 => _isChecked1;
  bool get isChecked2 => _isChecked2;

  void toggleCheckbox1() {
    _isChecked1 = !_isChecked1;
    notifyListeners();
  }

  void toggleCheckbox2() {
    _isChecked2 = !_isChecked2;
    notifyListeners();
  }
}