import 'package:get/get.dart';

import '../../../data/detail_hadith_model.dart';
import '../../../services/detail_hadith.dart';

class DetailHadithController extends GetxController {
  var dataHadith = Get.arguments;
  String? _id;
  String? _nameOfHadith;
  String? get id => _id;
  String? get nameOfHadith => _nameOfHadith;
  bool isLoading= true;
  List<HaditsDetail> detailHadith = [];
  void getData() async {
    _id = dataHadith['id'];
    _nameOfHadith = dataHadith['nameOfHadith'];
    var hadith = await DetailHadithApiService().getDetailHadith(id: _id);
    if (hadith != []) {
      detailHadith = hadith;
      isLoading = false;
      update();
    } else {
      print(hadith);
    }
  }
}
