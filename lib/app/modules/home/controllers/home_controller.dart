import 'package:alquran/app/data/surah_model.dart';
import 'package:alquran/app/services/surah_api_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<SurahModel?> surahModel = [];
  bool isLoading = true;
  @override
  void onInit() async {
    SurahApi().getSurah();
    super.onInit();
  }

  void getSurah() async {
    List<SurahModel?> data = await SurahApi().getSurah();
    if (data != []) {
      surahModel = data;
      isLoading = false;
      update();
    }
   
  }
}
