import 'package:alquran/app/data/detail_surah_model.dart';
import 'package:alquran/app/services/detail_surah_api.service.dart';
import 'package:get/get.dart';

class DetailAlquranController extends GetxController {
  String? _translation;
  String? get translation => _translation;
  var getArgument = Get.arguments;
  void getDetailSurah() async {
    var numberOfSurah = getArgument['numberOfSurah'];
    _translation = getArgument['translationID'];
    List<DetailSurah?> listOfAyat =
        await DetailApiSurah().getDetailSurah(numberOfSurah);
    if (listOfAyat != []) {
      print(listOfAyat);
      print(translation);
    }
  }
}
