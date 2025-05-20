import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/main_screen.dart';
import 'package:mentora/screens/register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 110, width: double.infinity),
          SizedBox(
            height: 400,
            child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) => controller.onPageChanged,
              children: [
                _buildOnboarding(
                  'assets/svg/onboarding1.svg',
                  'Wanna learn something new?',
                  'You can try a class program that suits your learning style at LearnConnect. Immediately register yourself!You can try a class program that suits your learning style at LearnConnect. Immediately register yourself!',
                ),
                _buildOnboarding(
                  'assets/svg/onboarding2.svg',
                  'Free learning materials',
                  'Starting from 23 chapters of reading material to 567 minutes of video material, you can enjoy the latest digital topics for free.',
                ),
                _buildOnboarding(
                  'assets/svg/onboarding3.svg',
                  'The material curriculum is designed by experts in their fields',
                  'Learning materials on LearnConnect are designed by startup experts.',
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(children: [
              SmoothPageIndicator(
                controller: controller.pageController,
                onDotClicked: (index) => controller.onPageChanged,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotColor: Color(0XFFD9D9D9),
                  activeDotColor: AppColors.primary,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text(
                  'Start',
                  style: TextStyle(color: AppColors.white),
                ),
                onPressed: () {
                  Get.to(() => const MainScreen());
                },
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  Get.to(() => const RegisterScreen());
                },
                child: const Text('Login'),
              ),
            ]),
          ),
        ],
      ),
    ));
  }

  Column _buildOnboarding(String image, String title, String subtitle) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
          height: 250,
          width: 250,
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            title,
            style: AppTextStyles.title3Bold,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47),
          child: Text(
            subtitle,
            style: AppTextStyles.caption1Regular,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class OnboardingController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  final RxInt currentPage = 0.obs;

  void onPageChanged(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn);
    currentPage(index);
  }
}
