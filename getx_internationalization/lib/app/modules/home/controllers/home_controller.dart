// ignore_for_file: unnecessary_overrides

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/app/languages/messages.dart';

class HomeController extends GetxController {
  Messags messags = Messags();

  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void increment() => count.value++;

  void changeLang(param1, param2) {
    var locale = Locale('param1', 'param2');
    Get.updateLocale(locale);
  }
}
