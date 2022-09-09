import 'package:get/get.dart';

import '../controllers/detail_hadith_controller.dart';

class DetailHadithBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailHadithController>(
      () => DetailHadithController(),
    );
  }
}
