import 'package:flutter/material.dart';

class CustomText {
  static TextStyle customTextStyle(BuildContext context, Color colorInput) {
    return TextStyle(
      fontSize: 28,
      fontFamily: 'Preospe',
      fontWeight: FontWeight.w300,
      letterSpacing: 1.5,
      color: colorInput,
    );
  }
  static TextStyle customTextStyleFont(BuildContext context, Color colorInput) {
    return TextStyle(
      fontSize: 48,
      fontFamily: 'Florensans',
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: colorInput,
    );
  }
}
