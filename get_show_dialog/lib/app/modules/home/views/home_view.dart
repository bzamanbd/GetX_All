import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_show_dialog/app/app_con.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
          child: AppCon.commonWidgets.defaultBtn(
            btnText: 'ShowDialog',
            onTap: () => Get.defaultDialog(
              title: 'Title',
              middleText: 'This is middleText',
            ),
          ),
        ));
  }
}
