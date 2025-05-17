import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/controllers/main_controller.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/screens/home_screen.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.changeIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.greyPrimary,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          iconSize: 24,
          backgroundColor: AppColors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.document),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.bookmark),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.profile),
              label: 'Profile',
            ),
          ],
        );
      }),
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
