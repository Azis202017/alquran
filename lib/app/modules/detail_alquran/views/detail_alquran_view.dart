import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_alquran_controller.dart';

class DetailAlquranView extends GetView<DetailAlquranController> {
  const DetailAlquranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailAlquranView'),
        centerTitle: true,
      ),
      body: GetBuilder(
        init: controller,
        initState: (_) {
          controller.getDetailSurah();
        },
        builder: (_) {
          return Center(
            child: Text(
              controller.translation ?? "",
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
