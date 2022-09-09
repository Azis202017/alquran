import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter_share/flutter_share.dart';

import 'package:get/get.dart';
import 'package:alquran/app/data/detail_surah_model.dart';
import 'package:alquran/app/services/detail_surah_api.service.dart';

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

  Future<void> share(
      {String? arab, String? translate, int? inSurah, int? ayat}) async {
    var arabicNumber = ArabicNumbers();

    await FlutterShare.share(
      title: nameOfSurah ?? "",
      text: '''$nameOfSurah ayat ke: $inSurah 
  
      (${arabicNumber.convert(inSurah)})  $arab
      $inSurah. $translate''',
    );
  }
}
