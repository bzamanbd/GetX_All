// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_by_controller/app_con.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => AppCon.commonWidgets
                .defaultSubTitle(text: "${homeController.count}")),
            AppCon.commonWidgets.defaultSpacer(width: 0.0),
            AppCon.commonWidgets.defaultBtn(
              btnText: 'increase',
              onTap: () => homeController.increment(),
            ),
            AppCon.commonWidgets.defaultSpacer(width: 0.0),
            Obx(() => AppCon.commonWidgets
                .defaultSubTitle(text: "${homeController.myName}")),
            AppCon.commonWidgets.defaultSpacer(width: 0.0),
            AppCon.commonWidgets.defaultBtn(
              btnText: 'changer',
              onTap: () => homeController.caseChanger(),
            ),
          ],
        ),
      ),
    );
  }
}
