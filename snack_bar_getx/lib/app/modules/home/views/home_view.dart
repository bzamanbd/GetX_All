import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:snack_bar_getx/appcon.dart';

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
          onTap: () => Get.snackbar(
            'title',
            'message',
            icon: Icon(Icons.book),
            snackPosition: SnackPosition.BOTTOM,
          ),
        ),
      ),
    );
  }
}
