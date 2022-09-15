import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

import 'package:get/get.dart';

import '../controllers/qiblah_controller.dart';
import 'qiblah_compass.dart';

class QiblahView extends GetView<QiblahController> {
  final deviceSupport = FlutterQiblah.androidDeviceSensorSupport();
  QiblahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(builder: (_, AsyncSnapshot<bool?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return Text("Error: ${snapshot.error.toString()}");
        }

        return const QiblahCompass();
      }),
    );
  }
}
