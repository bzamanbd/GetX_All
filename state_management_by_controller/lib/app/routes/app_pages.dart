import 'package:get/get.dart';

import 'package:state_management_by_controller/app/modules/home/bindings/home_binding.dart';
import 'package:state_management_by_controller/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
