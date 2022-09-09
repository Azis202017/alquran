import 'package:alquran/app/services/hadith_api_service.dart';
import 'package:get/get.dart';

import '../../../data/hadits_model.dart';
import '../../../routes/app_pages.dart';

class HadithController extends GetxController {
  List<Hadith> listOfHadith = [];
  @override
  void onInit() {
    getHadith();
    super.onInit();
  }

  void getHadith() async {
    var hadith = await HadithApi().getHadith();
    if (hadith != []) {
      listOfHadith = hadith;

      update();
    }
  }

  void toDetailHadith({String? id, String? nameOfHadith}) {
    Get.toNamed(
      Routes.DETAIL_HADITH,
      arguments: {'id': id, 'nameOfHadith': nameOfHadith},
    );
  }
}
