import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar sameAppBar(BuildContext context){
  return AppBar(
    backgroundColor: Color(0xff141218),
    surfaceTintColor: Color(0xff141218),
    leading: CupertinoButton(

      padding: EdgeInsets.zero,
      onPressed: () => Navigator.of(context).pop(),
      child: const Icon(
        Icons.arrow_back,
        size: 35,
        color: Colors.white,
      ),
    ),
    title: const Text(
      "Create account",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}