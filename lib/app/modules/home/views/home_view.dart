import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../shared/color.dart';
import '../../../shared/fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quran App',
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
            onTap: null,
            child: Icon(
              Icons.menu,
              color: greyColor,
            ),
          ),
        ),
      ),
      body: GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return controller.isLoading
              ? Center(
                  child: Lottie.asset('assets/json/loading.json'),
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    controller.getSurah();
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Assalamualaikum',
                            style: Font.mediumTextStyle.copyWith(
                              color: greyColor,
                            ),
                          ),
                          Text(
                            'Abdul Azis Al Ayubbi',
                            style: Font.semiBoldTextStyle.copyWith(
                              color: purpleColor,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              gradient: linear,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 180.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      'assets/images/quran_light.png',
                                      width: 206,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 19,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/last_read.png',
                                            width: 20,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Terakhir Baca',
                                            style:
                                                Font.mediumTextStyle.copyWith(
                                              color: whiteColor,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Al-Fatihah',
                                        style: Font.semiBoldTextStyle.copyWith(
                                          color: whiteColor,
                                        ),
                                      ),
                                      Text(
                                        'Ayat No:1',
                                        style: Font.regularTextStyle.copyWith(
                                          color: whiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.surahModel.length,
                            itemBuilder: (context, index) {
                              var data = controller.surahModel[index];
                              return Column(
                                children: [
                                  ListTile(
                                    onTap: () => controller.toDetailSurah(
                                      numberOfSurah: data!.number,
                                      translationID: data.name!.translation!.id,
                                      nameOfSurah:
                                          data.name!.transliteration!.id,
                                      revelation: data.revelation?.id,
                                      numberOfVerses: data.numberOfVerses,
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    leading:
                                     Container(
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                          top: 12, bottom: 12),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            'assets/images/muslim_count.png',
                                            width: 36,
                                            height: 36,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            width: 36,
                                            child: Text(
                                              '${data?.number}  ',
                                              style: Font.leadingTextStyle,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    
                                    title: Text(
                                      data?.name?.transliteration?.id ?? '',
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          '${data?.revelation?.id} ',
                                        ),
                                        SizedBox(
                                          width: 4,
                                          child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: dotColor,
                                          ),
                                        ),
                                        Text(' ${data?.numberOfVerses} Ayat')
                                      ],
                                    ),
                                    trailing: Text(
                                      '${data?.name?.short}',
                                      style: Font.trailingArabicTextStyle
                                          .copyWith(color: primaryColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  )
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
      ),
    );
  }
}
