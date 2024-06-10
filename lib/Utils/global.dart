import 'package:flutter/material.dart';

TextEditingController txtName = TextEditingController();

String greetings(){
  final hour = TimeOfDay.now().hour;

  if(hour < 12){
    return 'Morning';
  } else if (hour < 17){
    return 'Afternoon';
  }
  return 'Evening';
}



int songIndex=0;