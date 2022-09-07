// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_internationalization/app_con.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internationalization'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppCon.commonWidgets
              .defaultTitle(text: homeController.messags.showTxt),
          AppCon.commonWidgets.defaultSpacer(width: 0.0),
          AppCon.commonWidgets.defaultBtn(
            btnText: 'Hindi',
            onTap: () => homeController.changeLang('hi', 'IN'),
          ),
          AppCon.commonWidgets.defaultSpacer(width: 0.0),
          AppCon.commonWidgets.defaultBtn(
            btnText: 'Bangla',
            onTap: () => homeController.changeLang('be', 'BD'),
          ),
        ],
      )),
    );
  }
}
