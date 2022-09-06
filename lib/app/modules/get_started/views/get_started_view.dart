import 'package:alquran/app/modules/get_started/widgets/get_started_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/alquran_widget.dart';
import '../widgets/subtitle_widget.dart';
import '../widgets/title_widget.dart';

class GetStartedView extends StatelessWidget {
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
              onpressed: () {},
              titleButton: 'Get Starteed',
            ),
          )
        ],
      )),
    );
  }
}
