import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_navigation/app_con.dart';
import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppCon.commonWidgets.defaultSubTitle(
              text: 'Second Page',
            ),
            AppCon.commonWidgets.defaultSpacer(),
            AppCon.commonWidgets.defaultBtn(
              btnText: 'Go to Back',
              onTap: () => Get.back(result: 'data from second page'),
            ),
            AppCon.commonWidgets.defaultSpacer(
              width: 0.0,
            ),

//=========================================================//
            // AppCon.commonWidgets.defaultText(
            //   text: '${Get.arguments}',
            //   color: AppCon.defaultColorTheme.secondaryColor,
            // ),
//=========================================================//
          ],
        ),
      ),
    );
  }
}
