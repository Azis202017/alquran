import 'package:alquran/app/modules/prayer_time/widgets/prayer_time_widget.dart';
import 'package:alquran/app/shared/color.dart';
import 'package:alquran/app/shared/fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/prayer_time_controller.dart';

class PrayerTimeView extends StatelessWidget {
  const PrayerTimeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PrayerTimeController>(
      init: PrayerTimeController(),
      initState: (controller) {
        controller.controller?.prayerTime();
      },
      builder: (controller) {
        return Scaffold(
          backgroundColor: primaryColor2,
          body: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: whiteColor),
                        Text(
                          'Tambora',
                          style: Font.mediumTextStyle.copyWith(
                            color: whiteColor,
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: controller.toQiblatPage,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor,
                        ),
                        height: 50,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Icon(Icons.explore, color: whiteColor),
                            const SizedBox(width: 7),
                            Text(
                              'Qiblat',
                              style: Font.mediumTextStyle.copyWith(
                                color: whiteColor,
                              ),
                            ),
                            const SizedBox(width: 7),
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: whiteColor,
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(
                    top: 150,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height : 24,),

                        PrayerTimeWidget(
                          nameOfPrayer: "Imsak",
                          prayer: controller.prayer?.imsak ?? "",
                        ),
                        const SizedBox(height : 16,),
                        PrayerTimeWidget(
                          nameOfPrayer: "Subuh",
                          prayer: controller.prayer?.subuh ?? "",
                        ),
                        const SizedBox(height : 16,),

                        PrayerTimeWidget(
                          nameOfPrayer: "Terbit",
                          prayer: controller.prayer?.terbit ?? "",
                        ),
                        const SizedBox(height : 16,),

                        PrayerTimeWidget(
                          nameOfPrayer: "Dzuhur",
                          prayer: controller.prayer?.dzuhur ?? "",
                        ),
                        const SizedBox(height : 16,),

                        PrayerTimeWidget(
                          nameOfPrayer: "Ashar",
                          prayer: controller.prayer?.ashar ?? "",
                        ),
                        const SizedBox(height : 16,),

                        PrayerTimeWidget(
                          nameOfPrayer: "Maghrib",
                          prayer: controller.prayer?.maghrib ?? "",
                        ),
                        const SizedBox(height : 16,),

                        PrayerTimeWidget(
                          nameOfPrayer: "Isya",
                          prayer: controller.prayer?.isya ?? "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
