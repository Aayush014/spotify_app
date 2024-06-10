import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String _email = '';
  String _password = '';
  String _passwordStrength = '';

  String get email => _email;
  String get password => _password;
  String get passwordStrength => _passwordStrength;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    _checkPasswordStrength(password);
    notifyListeners();
  }

  bool isEmailValid() {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(_email);
  }

  void _checkPasswordStrength(String password) {
    final hasNumbers = RegExp(r'[0-9]').hasMatch(password);
    final hasSpecialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
    if (password.length < 6) {
      _passwordStrength = "Weak";
    } else if (password.length < 10 || !hasNumbers || !hasSpecialCharacters) {
      _passwordStrength = "Medium";
    } else {
      _passwordStrength = "Strong";
    }
  }
}
