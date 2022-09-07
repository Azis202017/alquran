import 'package:alquran/app/shared/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../shared/fonts.dart';
import '../controllers/doa_controller.dart';

class DoaView extends StatelessWidget {
  const DoaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DoaController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: primaryColor2,
          body: controller.isLoading
              ? Center(
                  child: Lottie.asset('assets/json/loading.json'),
                )
              : Stack(
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
                            'Doa sehari-hari, sudah hafal belum?',
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
                          padding: EdgeInsets.zero,
                          itemCount: controller.listOfDoa.length,
                          itemBuilder: ((context, index) {
                            var data = controller.listOfDoa[index];
                            return ExpansionTile(
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
                                        '${data.id}  ',
                                        style: Font.leadingTextStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              title: Text(
                                data.doa!,
                                style: Font.semiBoldTextStyle.copyWith(
                                  fontSize: 14,
                                  height: 2,
                                ),
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    data.ayat!,
                                    style: Font.ayatTextStyle,
                                    textAlign: TextAlign.end,
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.latin!,
                                        style: Font.regularTextStyle.copyWith(
                                          fontSize: 14,
                                          height: 2,
                                        ),
                                      ),
                                      Text(
                                        data.artinya!,
                                        style: Font.regularTextStyle.copyWith(
                                          fontSize: 14,
                                          height: 2,
                                        ),
                                      ),
                                    ],
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
