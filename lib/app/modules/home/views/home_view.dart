import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../shared/color.dart';
import '../../../shared/fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: controller,
          initState: (_) => controller.getSurah(),
          builder: (_) {
            return controller.isLoading
                ? Center(
                    child: Lottie.asset('assets/json/loading.json'),
                  )
                : RefreshIndicator(
                    onRefresh: () async {
                      controller.getSurah();
                    },
                    child: ListView.builder(
                      itemCount: controller.surahModel.length,
                      itemBuilder: (context, index) {
                        var data = controller.surahModel[index];
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () => controller.toDetailSurah(
                                  numberOfSurah: data!.number,
                                  translationID: data.name!.translation!.id,
                                  nameOfSurah: data.name!.transliteration!.id,
                                  revelation: data.revelation?.id,
                                  numberOfVerses: data.numberOfVerses,
                                ),
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
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
                                          top: 3,
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
                          ),
                        );
                      },
                    ),
                  );
          }),
    );
  }
}
