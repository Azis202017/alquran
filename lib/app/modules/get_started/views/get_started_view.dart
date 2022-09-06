import 'package:alquran/app/shared/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/fonts.dart';
import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 86,
        ),
        child: Column(
          children: [
            Text(
              'Quran App',
              style: Font.titleTextStyle.copyWith(
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 90,
              ),
              width: double.infinity,
              child: Text(
                'Learn Quran and Recite once everyday',
                style: Font.subTitleTextStyle.copyWith(
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 41),
            SizedBox(
              height: 450,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/alquran_background.png',
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 185,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Get Started'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
