import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/color.dart';
import '../../../shared/fonts.dart';
import '../controllers/hadith_controller.dart';

class HadithView extends StatelessWidget {
  const HadithView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HadithController(),
      initState: (controller) {
        controller.controller?.getHadith();
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assalamualaikum Abdul ',
                      style: Font.semiBoldTextStyle.copyWith(
                        fontSize: 18,
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      'Sudahkah kamu mengetahui tentang hadits?',
                      style: Font.regularTextStyle.copyWith(
                        fontSize: 14,
                        color: whiteColor,
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
                  height: 600,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      top: 26,
                    ),
                    itemCount: controller.listOfHadith.length,
                    itemBuilder: ((context, index) {
                      var data = controller.listOfHadith[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            onTap: () => controller.toDetailHadith(
                              id: data.id,
                              nameOfHadith : data.name
                            ),
                            leading: Container(
                              width: 50,
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 12),
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
                                      '${index + 1}  ',
                                      style: Font.leadingTextStyle,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            title: Text(
                              data.name!,
                              style: Font.semiBoldTextStyle.copyWith(
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Divider(
                              color: greyColor,
                            ),
                          ),
                        ],
                      );
                    }),
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
