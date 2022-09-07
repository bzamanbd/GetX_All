// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_workers/app_con.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workers'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => AppCon.commonWidgets
                .defaultSubTitle(text: "${homeController.myName}")),
            AppCon.commonWidgets.defaultSpacer(width: 0.0),
            AppCon.commonWidgets.defaultBtn(
              btnText: 'ClickMe',
              onTap: () => homeController.caseChanger(),
            ),
          ],
        ),
      ),
    );
  }
}
