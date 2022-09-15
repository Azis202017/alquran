import 'dart:async';

import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class QiblahController extends GetxController {
  final _locationStreamController =
      StreamController<LocationStatus>.broadcast();
  get stream => _locationStreamController.stream;
  Future<void> checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final checkLocationStatusUser = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.add(checkLocationStatusUser);
    }else {
      _locationStreamController.add(locationStatus);
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkLocationStatus();
    super.onInit();
  }
}
