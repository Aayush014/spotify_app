import 'package:flutter/material.dart';

Widget personalDetailBottomBar() {
  return Container(
    alignment: Alignment.center,
    height: 70,
    child: const Text(
      "PROTECTED BY RECAPTCHA",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    ),
  );
}