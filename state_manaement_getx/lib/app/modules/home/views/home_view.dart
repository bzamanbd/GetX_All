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
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppCon.commonWidgets.defaultText(
            text: 'text',
          ),
          AppCon.commonWidgets.defaultSpacer(
            width: 0.0,
          ),
          AppCon.commonWidgets.defaultBtn(
            btnText: 'ClickMe',
            onTap: null,
          ),
        ],
      )),
    );
  }
}
