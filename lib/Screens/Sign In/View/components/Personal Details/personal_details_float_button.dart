import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Utils/nav_bar.dart';

CupertinoButton perInfoFloatButton(BuildContext context) {
  return CupertinoButton(
    borderRadius: BorderRadius.circular(30),
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
    color: Colors.green,
    onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NavBar(),));
    },
    child: const Text(
      "Create accounts",
      style: TextStyle(
          fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),
    ),
  );
}