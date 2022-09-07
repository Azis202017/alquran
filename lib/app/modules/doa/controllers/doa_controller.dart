import 'package:alquran/app/services/doa_api_service.dart';
import 'package:get/get.dart';

import '../../../data/doa_model.dart';

class DoaController extends GetxController {
  List<Doa> listOfDoa = [];
  bool isLoading = true;
  @override
  void onInit() {
    getDoa();
    super.onInit();
  }

  void getDoa() async {
    List<Doa> doa = await DoiApiService().getDoa();
    if (doa != []) {
      listOfDoa = doa;
      isLoading = false;
      update();
    }
  }
}
