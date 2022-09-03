import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_bottom_sheet_and_dynamic_theme/app/app_con.dart';

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
            btnText: 'BottomSheet',
            onTap: () => Get.bottomSheet(
              Container(
                child: Wrap(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.wb_sunny_outlined),
                      title: Text('Day'),
                      onTap: () => Get.changeTheme(ThemeData.light()),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Dark'),
                      onTap: () => Get.changeTheme(ThemeData.dark()),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
