import 'package:alquran/app/data/prayer_time_model.dart';
import 'package:alquran/app/services/prayer_time_api.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PrayerTimeController extends GetxController {
  PrayerTime? prayer;
  bool? isLoading = true;
  @override
  void onInit() {
    super.onInit();
    prayerTime();
  }

  void prayerTime() async {
    var data = await PrayerTimeApi().getPrayer(DateTime.now());
    prayer = data;

    isLoading = false;
    update();
  }

  void toQiblatPage() {
    Get.toNamed(Routes.QIBLAH);
  }
}
