import 'package:get/get.dart';
import 'package:horoscope_guide/view/choose/choose_view.dart';
import 'package:horoscope_guide/view/detail/detail_view.dart';
import 'package:horoscope_guide/view/home/home_view.dart';
import 'package:horoscope_guide/view/login/login_view.dart';
import 'package:horoscope_guide/view/which/which_horoscope.dart';

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
    GetPage(
      name: _Paths.whichHoroscope,
      page: () => WhichHoroscope(),
    ),
    GetPage(
      name: _Paths.chooseView,
      page: () => ChooseView(),
    ),
    GetPage(
      name: _Paths.loginView,
      page: () => LoginView(),
    ),
  ];
}
