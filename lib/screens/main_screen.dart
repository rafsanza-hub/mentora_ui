import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/controllers/main_controller.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/bookmark_screen.dart';
import 'package:mentora/screens/home_screen.dart';
import 'package:mentora/screens/my_learning_screen.dart';
import 'package:mentora/screens/profile_screen.dart';

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
          unselectedItemColor: AppColors.greySecondary,
          selectedLabelStyle: AppTextStyles.caption2Regular,
          unselectedLabelStyle: AppTextStyles.caption2Regular,
          iconSize: 24,
          backgroundColor: AppColors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.document),
              label: 'My Learning',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.bookmark),
              label: 'Bookmark',
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
            MyLearningScreen(),
            BookmarkScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
