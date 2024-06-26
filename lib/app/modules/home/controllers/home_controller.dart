import 'package:alquran/app/data/surah_model.dart';
import 'package:alquran/app/services/surah_api_service.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  List<SurahModel> surahModel = [];
  bool isLoading = true;
  @override
  void onInit() async {
    getSurah();
    super.onInit();
  }

  void getSurah() async {
    surahModel = await SurahApi().getSurah();
    isLoading = false;
    update();
  }

  void toDetailSurah(
      {int? numberOfSurah,
      String? nameOfSurah,
      String? translationID,
      String? revelation,
      int? numberOfVerses}) {
    Get.toNamed(Routes.DETAIL_ALQURAN, arguments: {
      'numberOfSurah': numberOfSurah,
      'translationID': translationID,
      'nameOfSurah': nameOfSurah,
      'revelation': revelation,
      'numberOfVerses': numberOfVerses,
    });
  }
}
