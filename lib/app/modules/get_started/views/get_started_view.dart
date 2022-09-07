import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/get_started_controller.dart';
import '../widgets/alquran_widget.dart';
import '../widgets/subtitle_widget.dart';
import '../widgets/title_widget.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 52,
            ),
            const Center(
              child: TitleWidget(
                title: 'Quran Apps',
              ),
            ),
            const Center(
              child: SubtitleWidget(
                subtitle: 'Learn Quran and Recite once everyday',
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            Center(
              child: AlquranWidget(
                alquranImage: 'assets/images/alquran_background.png',
                onpressed: controller.toHomePage,
                titleButton: 'Get Starteed',
              ),
            )
          ],
        ),
      ),
    );
  }
}
