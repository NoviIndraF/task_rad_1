import 'package:flutter/material.dart';
import 'package:task_rad_1/control/size.dart';

Color colorPrimary = Colors.blue.shade200;
Color colorTextPrimary = Colors.blue.shade900;

Color colorBg1 = Colors.amber.shade100;
Color colorText1 = Colors.amber.shade900;

Color colorBg2 = Colors.green.shade200;
Color colorText2 = Colors.green.shade900;

Color colorBg3 = Colors.red.shade100;
Color colorText3 = Colors.red.shade900;

FontWeight bold = FontWeight.w900;
FontWeight medium = FontWeight.w700;
FontWeight small = FontWeight.w500;

TextStyle ItemTextStyle(
  FontWeight weight,
  double fontSize,
  Color colorText,
  BuildContext context,
) {
  return TextStyle(
      fontWeight: weight,
      fontSize: fontSize * context.mediaq.textScaleFactor,
      color: colorText);
}
