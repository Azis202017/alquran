import 'package:get/get.dart';

import '../controllers/detail_alquran_controller.dart';

class DetailAlquranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailAlquranController>(
      () => DetailAlquranController(),
    );
  }
}
