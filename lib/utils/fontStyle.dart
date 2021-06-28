import 'package:flutter/material.dart';

class FontStyle {
  static TextStyle regular({double fontSize, Color color}) {
    return style(fontSize: fontSize, color: color, weight: FontWeight.normal);
  }

  static TextStyle light({double fontSize, Color color}) {
    return style(fontSize: fontSize, color: color, weight: FontWeight.w300);
  }

  static TextStyle medium({double fontSize, Color color}) {
    return style(fontSize: fontSize, color: color, weight: FontWeight.w500);
  }

  static TextStyle bold({double fontSize, Color color}) {
    return style(fontSize: fontSize, color: color, weight: FontWeight.bold);
  }

  static TextStyle style({double fontSize, Color color, FontWeight weight}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: weight,
      color: color,
    );
  }
}
