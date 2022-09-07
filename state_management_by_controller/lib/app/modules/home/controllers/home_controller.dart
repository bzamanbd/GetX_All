// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final myName = 'ripon'.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;

  void caseChanger() {
    if (myName.value != myName.value.toString().toUpperCase()) {
      myName.value = myName.value.toString().toUpperCase();
    } else {
      myName.value = myName.value.toString().toLowerCase();
    }
  }
}
