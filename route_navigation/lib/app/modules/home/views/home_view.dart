import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:route_navigation/app/modules/second_page/views/second_page_view.dart';
import 'package:route_navigation/app_con.dart';

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
          btnText: 'Click Here',
          onTap: () => Get.to(
            SecondPageView(),
            fullscreenDialog: true,
          ),
        ),
      ),
    );
  }
}
