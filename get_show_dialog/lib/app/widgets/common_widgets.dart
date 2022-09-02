import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_con.dart';

class CommonWidgets {
  defaultTitle(
      {required String text,
      Color? color,
      double? fontsize,
      FontWeight? weight,
      double? height}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize ??= Get.size.width * 0.1,
        fontWeight: weight ??= FontWeight.w900,
        color: color ??= Colors.black,
        height: height ??= 1,
      ),
    );
  }

  defaultSubTitle(
      {required String text,
      Color? color,
      double? fontsize,
      FontWeight? weight,
      double? height}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize ??= Get.size.width * 0.061,
        fontWeight: weight ??= FontWeight.w400,
        color: color ??= Colors.black54,
        height: height ??= 1,
      ),
    );
  }

  defaultText({
    required String text,
    Color? color,
    double? fontsize,
    FontWeight? weight,
    double? height,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign ??= TextAlign.justify,
      style: TextStyle(
        fontSize: fontsize ??= Get.size.width * 0.055,
        fontWeight: weight ??= FontWeight.w400,
        color: color ??= AppCon.defaultColorTheme.textColor,
        height: height ??= 1.4,
      ),
    );
  }

  defaultSpacer({double? height, double? width}) {
    return SizedBox(
      height: height ??= AppCon.defaultSize,
      width: width ??= AppCon.defaultSize,
    );
  }

  defaultBtn({
    width,
    height,
    color,
    borderRadius,
    gradient,
    boxShadow,
    shadowColor,
    shadowOffsetDX,
    shadowOffsetDY,
    shadowBlurRadius,
    shadowSpreadRadius,
    onTap,
    onDoubleTap,
    onLongPress,
  }) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Container(
        width: width ?? AppCon.defaultSize * 9,
        height: height ?? AppCon.defaultSize * 2.5,
        decoration: BoxDecoration(
          color: color ?? AppCon.defaultColorTheme.primaryColor,
          borderRadius: borderRadius ??
              BorderRadius.all(Radius.circular(AppCon.defaultSize / 2)),
          gradient: gradient,
          boxShadow: boxShadow != null
              ? [
                  BoxShadow(
                    color: shadowColor ?? Colors.black54,
                    offset: Offset(
                      shadowOffsetDX ?? AppCon.defaultSize / 6,
                      shadowOffsetDY ?? AppCon.defaultSize / 6,
                    ),
                    blurRadius: shadowBlurRadius ?? AppCon.defaultSize / 9,
                    spreadRadius: shadowSpreadRadius ?? AppCon.defaultSize / 9,
                  )
                ]
              : [],
        ),
      ),
    );
  }
}
