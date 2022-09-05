import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manaement_getx/app_con.dart';
import '../controllers/home_controller.dart';
import '../elements/elements.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var elements = Elements();
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
          Obx(() => AppCon.commonWidgets.defaultSubTitle(
                text: "${elements.countText.value}",
                fontsize: AppCon.defaultSize * 3,
              )),
          AppCon.commonWidgets.defaultSpacer(
            width: 0.0,
          ),
          AppCon.commonWidgets.defaultBtn(
            btnText: 'ClickMe',
            onTap: () => elements.incrementer(),
          ),
        ],
      )),
    );
  }
}
