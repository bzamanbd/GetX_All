import 'package:flutter/material.dart';
import '../app_con.dart';

class Text {
  TextTheme appText = TextTheme(
    bodyText1: TextStyle(
      color: AppCon.defaultColorTheme.textColor,
      fontSize: AppCon.defaultSize,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      color: AppCon.defaultColorTheme.textColor,
      fontSize: AppCon.defaultSize,
      fontWeight: FontWeight.normal,
    ),
  );
}
