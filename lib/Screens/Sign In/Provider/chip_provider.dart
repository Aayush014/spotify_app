import 'package:flutter/material.dart';

class ChipProvider with ChangeNotifier {
  String _selectedChip = "Male";

  String get selectedChip => _selectedChip;

  void selectChip(String chipLabel) {
    _selectedChip = chipLabel;
    notifyListeners();
  }
}
