import 'package:get/get.dart';

import 'package:route_navigation/app/modules/home/bindings/home_binding.dart';
import 'package:route_navigation/app/modules/home/views/home_view.dart';
import 'package:route_navigation/app/modules/second_page/bindings/second_page_binding.dart';
import 'package:route_navigation/app/modules/second_page/views/second_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SECOND_PAGE,
      page: () => SecondPageView(),
      binding: SecondPageBinding(),
    ),
  ];
}
