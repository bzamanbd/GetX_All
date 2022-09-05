import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manaement_getx/app_con.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        backgroundColor: AppCon.defaultColorTheme.primaryColor,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => AppCon.commonWidgets.defaultTitle(
                text: "$countText",
                fontsize: AppCon.defaultSize * 3,
              )),
          AppCon.commonWidgets.defaultSpacer(
            width: 0.0,
          ),
          AppCon.commonWidgets.defaultBtn(
            btnText: 'ClickMe',
            onTap: () => incrementer(),
          ),
        ],
      )),
    );
  }
}

var countText = 0.obs;
incrementer() {
  countText++;
}
