import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_con.dart';

class Text {
  TextTheme appText = TextTheme(
    bodyText1: TextStyle(
      color: AppCon.defaultColorTheme.textColor,
      fontSize: Get.size.width * 0.06,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      color: AppCon.defaultColorTheme.textColor,
      fontSize: Get.size.width * 0.06,
      fontWeight: FontWeight.normal,
    ),
  );
}
