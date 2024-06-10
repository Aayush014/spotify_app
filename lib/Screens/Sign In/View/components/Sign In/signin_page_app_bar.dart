import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar loginAppBar(BuildContext context) {
  return AppBar(
    leading: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => Navigator.of(context).pop(),
        child: Icon(
          Icons.arrow_back,
          size: 35,
          color: Colors.white,
        )),
  );
}