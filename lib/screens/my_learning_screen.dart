import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/my_learning_bootcamp_screen.dart';
import 'package:mentora/screens/my_learning_course_screen.dart';
import 'package:mentora/widgets/app_chip.dart';
import 'package:mentora/widgets/learning_item.dart';

class MyLearningScreen extends StatelessWidget {
  const MyLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'My Learning',
                    style: AppTextStyles.headlineBold,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 23),
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AppChip('Unfinished', isSelected: true),
                      const SizedBox(width: 12),
                      AppChip('Finish', isSelected: false),
                    ],
                  ),
                ),
                const SizedBox(height: 31),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Course',
                      style: AppTextStyles.bodyBold,
                    ),
                    TextButton(
                        child: Text(
                          'See all',
                          style: AppTextStyles.caption1Regular.copyWith(
                            color: AppColors.greySecondary,
                          ),
                        ),
                        onPressed: () {
                          Get.to(() => const MyLearningCourseScreen(),
                              transition: Transition.rightToLeft,
                              duration: const Duration(milliseconds: 500));
                        }),
                  ],
                ),
                const SizedBox(height: 12),
                LearningItem(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Free',
                  typeColor: AppColors.greyPrimary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                LearningItem(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Premium',
                  typeColor: AppColors.primary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                LearningItem(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Premium',
                  typeColor: AppColors.primary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bootcamp',
                      style: AppTextStyles.subheadlineBold,
                    ),
                    TextButton(
                      child: Text(
                        'See all',
                        style: AppTextStyles.caption1Regular.copyWith(
                          color: AppColors.greySecondary,
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => const MyLearningBootcampScreen(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 500));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                LearningItem(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Free',
                  typeColor: AppColors.greyPrimary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                LearningItem(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Premium',
                  typeColor: AppColors.primary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                LearningItem(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Premium',
                  typeColor: AppColors.primary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
