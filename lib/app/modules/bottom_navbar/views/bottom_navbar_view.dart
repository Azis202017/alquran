import 'package:alquran/app/modules/doa/views/doa_view.dart';
import 'package:alquran/app/modules/hadith/views/hadith_view.dart';
import 'package:alquran/app/modules/home/views/home_view.dart';
import 'package:alquran/app/shared/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../prayer_time/views/prayer_time_view.dart';
import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarView extends StatelessWidget {
  const BottomNavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavbarController>(
      init: BottomNavbarController(),
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeView(),
              HadithView(),
              PrayerTimeView(),
              DoaView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            selectedItemColor: primaryColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ImageIcon(
                    AssetImage(
                      'assets/images/bottom_nav1.png',
                    ),
                    size: 28,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ImageIcon(
                    AssetImage(
                      'assets/images/bottom_nav2.png',
                    ),
                    size: 28,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ImageIcon(
                    AssetImage(
                      'assets/images/bottom_nav3.png',
                    ),
                    size: 28,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ImageIcon(
                    AssetImage(
                      'assets/images/bottom_nav4.png',
                    ),
                    size: 28,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
