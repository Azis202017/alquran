import 'package:alquran/app/shared/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../shared/fonts.dart';
import '../controllers/detail_hadith_controller.dart';

class DetailHadithView extends GetView<DetailHadithController> {
  const DetailHadithView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      initState: (_) => controller.getData(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              '${controller.nameOfHadith}',
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
                  child: Lottie.asset(
                    'assets/json/loading.json',
                  ),
                )
              : ListView.builder(
                  itemBuilder: ((
                    context,
                    index,
                  ) {
                    var data = controller.detailHadith[index];
                    return Container(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: Column(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 27,
                                  child: CircleAvatar(
                                    backgroundColor: primaryColor,
                                    child: Text(
                                      '${data.number}',
                                      style: Font.revelation.copyWith(
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
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
                          const SizedBox(
                            height: 26,
                          ),
                          Text(
                            '${data.arab}',
                            style: Font.ayatTextStyle.copyWith(height: 2),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            '${data.id}',
                            style: Font.regularTextStyle.copyWith(
                              height: 2,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    );
                  }),
                ),
        );
      },
    );
  }
}
