import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/widgets/app_search_field.dart';
import 'package:mentora/widgets/learning_item.dart';

class MyLearningCourseScreen extends StatelessWidget {
  const MyLearningCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(IconlyBold.arrowLeft2, size: 24),
          onPressed: () => Get.back(),
        ),
        title: const Text('My Learning Course'),
        centerTitle: true,
        elevation: 0,
        titleTextStyle:
            AppTextStyles.headlineBold.copyWith(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSearchField(hintText: 'Search Bootcamp'),
              SizedBox(height: 18),
              Text('Courses', style: AppTextStyles.bodyBold),
              SizedBox(height: 12),
              LearningItem(
                title: 'Front End HTML, CSS',
                imageUrl: 'assets/images/image19.png',
                type: 'Premium',
                typeColor: AppColors.primary,
                chapters: 'Chapter 0/6',
                description:
                    'HTML and CSS are the two basic technologies in website creation.',
              ),
              LearningItem(
                title: 'Front End HTML, CSS',
                imageUrl: 'assets/images/image19.png',
                type: 'Premium',
                typeColor: AppColors.primary,
                chapters: 'Chapter 0/6',
                description:
                    'HTML and CSS are the two basic technologies in website creation.',
              ),
              LearningItem(
                title: 'Front End HTML, CSS',
                imageUrl: 'assets/images/image19.png',
                type: 'Premium',
                typeColor: AppColors.primary,
                chapters: 'Chapter 0/6',
                description:
                    'HTML and CSS are the two basic technologies in website creation.',
              ),
              LearningItem(
                title: 'Front End HTML, CSS',
                imageUrl: 'assets/images/image19.png',
                type: 'Premium',
                typeColor: AppColors.primary,
                chapters: 'Chapter 0/6',
                description:
                    'HTML and CSS are the two basic technologies in website creation.',
              ),
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
    );
  }
}
