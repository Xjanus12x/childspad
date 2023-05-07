import 'package:flutter/material.dart';

int hexColor(String color) {
  String newColor = '0xff${color.replaceAll("#", "")}';
  return int.parse(newColor);
}

Color bgColor1 = Color(hexColor("#5B8BDF"));
Color bgColor2 = Color(hexColor("#00CCE5"));
Color bgColor3 = Color(hexColor("#FFFFFF"));

Color buttonClr1 = Color(hexColor("#2C64C6"));

Color txtColor1 = Color(hexColor("#FFFFFF"));
Color placeHolderColor = Color(hexColor("#000000"));
