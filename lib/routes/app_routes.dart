part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homeView = _Paths.homeView;
  static const detailView = _Paths.detailView;
  static const chooseView = _Paths.chooseView;
  static const whichHoroscope = _Paths.whichHoroscope;
}

abstract class _Paths {
  static const homeView = '/home_view';
  static const detailView = '/detail_view';
  static const chooseView = '/choose_view';
  static const whichHoroscope = '/which_horoscope';
}
