import 'package:alquran/app/data/detail_surah_model.dart';
import 'package:alquran/app/services/detail_surah_api.service.dart';
import 'package:get/get.dart';

class DetailAlquranController extends GetxController {
  List<DetailSurah?> detailSurah = [];
  String? _translation;
  String? _revelation;
  String? _nameOfSurah;
  int? _numberOfVerses;
  String? get translation => _translation;
  String? get nameOfSurah => _nameOfSurah;
  String? get revelation => _revelation;
  int? get numberOfVerses => _numberOfVerses;
  bool isLoading = true;
  var getArgument = Get.arguments;
  void getDetailSurah() async {
    var numberOfSurah = getArgument['numberOfSurah'];
    _translation = getArgument['translationID'];
    _nameOfSurah = getArgument['nameOfSurah'];
    _revelation = getArgument['revelation'];
    _numberOfVerses = getArgument['numberOfVerses'];
    List<DetailSurah?> listOfAyat =
        await DetailApiSurah().getDetailSurah(numberOfSurah);
    if (listOfAyat != []) {
      detailSurah = listOfAyat;
      isLoading = false;
      update();
    }
  }
}
