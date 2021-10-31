import 'package:get/get.dart';
import 'package:horoscope_guide/detail/detail_view.dart';
import 'package:horoscope_guide/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.homeView,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.detailView,
      page: () => DetailView(),
    ),
  ];
}
