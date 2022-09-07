import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_internationalization/app/languages/messages.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      translations: Messags(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      title: "Internationalization",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
