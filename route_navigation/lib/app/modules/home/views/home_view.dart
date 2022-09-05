import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
//==========getting data from second-page during comming back time===//
            // onTap: () async {
            //   var data = await Get.toNamed(
            //     "/second-page",
            // arguments: 'text from home screen',
            //   );
            //   print(data);
            // },

//==============for never comeback=================//
            // onTap: () => Get.offNamed('/second-page'),

//=============go to next page with dynamic url==================//
            onTap: () {
              Get.toNamed("/second-page?fname=Ripon&lname=Zaman");
            }),
      ),
    );
  }
}
