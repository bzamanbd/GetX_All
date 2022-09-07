// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class HomeController extends GetxController {
  final myName = "dhaka".obs;

  @override
  void onInit() {
    super.onInit();
    //=====called everytime when the value of myName variable is changed===//
    // ever(myName, (_) => print(myName));

    //====everAll allows list of ever==//
    // everAll([], (_) => {});

    //====only once called the ever==//
    // once(myName, (_) => print(myName));

    //=====called everytime when user stop typing, it's used for textField and search bar//
    debounce(myName, (_) => print('when user stop typing'),
        time: Duration(seconds: 2));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void caseChanger() {
    if (myName.value != myName.value.toString().toUpperCase()) {
      myName.value = myName.value.toString().toUpperCase();
    } else {
      myName.value = myName.value.toString().toLowerCase();
    }
  }
}
