import 'package:alquran/app/shared/color.dart';
import 'package:alquran/app/shared/fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/detail_alquran_controller.dart';

class DetailAlquranView extends GetView<DetailAlquranController> {
  const DetailAlquranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      initState: (_) => controller.getDetailSurah(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              '${controller.nameOfSurah}',
              style: Font.appBarTitle,
            ),
            centerTitle: false,
            backgroundColor: whiteColor,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(
                  Icons.search,
                  color: greyColor,
                ),
              )
            ],
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: greyColor,
                ),
              ),
            ),
          ),
          body: controller.isLoading
              ? Center(
                  child: Lottie.asset('assets/json/loading.json'),
                )
              : SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 295,
                          decoration: BoxDecoration(
                            gradient: linear,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/quran.png',
                                  width: 324,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 60,
                                ),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${controller.nameOfSurah}',
                                      style:
                                          Font.titleOfSurahTextStyle.copyWith(
                                        color: whiteColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '${controller.translation}',
                                      style: Font.translationOfSurahTextStyle
                                          .copyWith(
                                        color: whiteColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 64, right: 63),
                                      width: double.infinity,
                                      child: Divider(
                                        color: whiteColor,
                                        height: 2,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${controller.revelation} ',
                                          style: Font.revelation,
                                        ),
                                        SizedBox(
                                          width: 4,
                                          child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: dotColor,
                                          ),
                                        ),
                                        Text(
                                          ' ${controller.numberOfVerses} Ayat',
                                          style: Font.revelation,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    Image.asset(
                                      'assets/images/bismillah.png',
                                      width: 214,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.detailSurah.length,
                          itemBuilder: (ctx, idx) {
                            var data = controller.detailSurah[idx];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: detailSurahContainerColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 27,
                                        child: CircleAvatar(
                                          backgroundColor: primaryColor,
                                          child: Text(
                                            '${data?.number!.inSurah}',
                                            style: Font.revelation.copyWith(
                                              color: whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.share(
                                                arab: data?.text?.arab,
                                                translate: data?.translation?.id,
                                                ayat: controller.numberOfVerses,
                                                inSurah: data?.number?.inSurah,
                                              );
                                            },
                                            child: Icon(
                                              color: primaryColor,
                                              size: 24,
                                              Icons.share_outlined,
                                            ),
                                          ),
                                          Icon(
                                            color: primaryColor,
                                            size: 24,
                                            Icons.play_arrow_outlined,
                                          ),
                                          Icon(
                                            color: primaryColor,
                                            Icons.bookmark_border_outlined,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 24),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    '${data?.text?.arab}',
                                    style: Font.ayatTextStyle,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  '${data?.translation?.id}',
                                  style: Font.ayatTextStyle,
                                ),
                                const SizedBox(
                                  height: 41,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
