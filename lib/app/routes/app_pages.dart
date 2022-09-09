import 'package:get/get.dart';

import '../modules/bottom_navbar/bindings/bottom_navbar_binding.dart';
import '../modules/bottom_navbar/views/bottom_navbar_view.dart';
import '../modules/detail_alquran/bindings/detail_alquran_binding.dart';
import '../modules/detail_alquran/views/detail_alquran_view.dart';
import '../modules/detail_hadith/bindings/detail_hadith_binding.dart';
import '../modules/detail_hadith/views/detail_hadith_view.dart';
import '../modules/doa/bindings/doa_binding.dart';
import '../modules/doa/views/doa_view.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/hadith/bindings/hadith_binding.dart';
import '../modules/hadith/views/hadith_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.GET_STARTED;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => const GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ALQURAN,
      page: () => const DetailAlquranView(),
      binding: DetailAlquranBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => const BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
    GetPage(
      name: _Paths.DOA,
      page: () => const DoaView(),
      binding: DoaBinding(),
    ),
    GetPage(
      name: _Paths.HADITH,
      page: () => const HadithView(),
      binding: HadithBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_HADITH,
      page: () => const DetailHadithView(),
      binding: DetailHadithBinding(),
    ),
  ];
}
