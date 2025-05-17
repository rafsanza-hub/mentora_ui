import 'package:flutter/material.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({super.key});

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
                      _buildChip('Unfinished', isSelected: true),
                      const SizedBox(width: 12),
                      _buildChip('Finish', isSelected: false),
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
                    Text(
                      'See all',
                      style: AppTextStyles.caption1Regular.copyWith(
                        color: AppColors.greySecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildCourseCard(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Free',
                  typeColor: AppColors.greyPrimary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                _buildCourseCard(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Premium',
                  typeColor: AppColors.primary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                _buildCourseCard(
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
                    Text(
                      'See all',
                      style: AppTextStyles.caption1Regular.copyWith(
                        color: AppColors.greySecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildCourseCard(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Free',
                  typeColor: AppColors.greyPrimary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                _buildCourseCard(
                  title: 'Front End HTML, CSS',
                  imageUrl: 'assets/images/image19.png',
                  type: 'Premium',
                  typeColor: AppColors.primary,
                  chapters: 'Chapter 0/6',
                  description:
                      'HTML and CSS are the two basic technologies in website creation.',
                ),
                const SizedBox(height: 6),
                _buildCourseCard(
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

  Widget _buildChip(String title, {required bool isSelected}) {
    return ChoiceChip(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      label: Text(title),
      selected: isSelected,
      onSelected: (selected) {},
      showCheckmark: false,
      selectedColor: AppColors.primary,
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Colors.transparent, width: 0),
      ),
      elevation: 10,
      shadowColor: Colors.black.withOpacity(0.1),
      labelStyle: isSelected
          ? AppTextStyles.footnoteBold.copyWith(color: Colors.white)
          : AppTextStyles.footnoteRegular,
    );
  }

  Widget _buildCourseCard({
    required String title,
    required String imageUrl,
    required String type,
    required Color typeColor,
    required String chapters,
    required String description,
  }) {
    return Container(
      // padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          // color: Colors.white,
          // borderRadius: BorderRadius.circular(8),
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: AppColors.background,
            ),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: typeColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        type,
                        style: AppTextStyles.caption2Regular.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        chapters,
                        style: AppTextStyles.caption2Regular,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  style: AppTextStyles.calloutBold,
                ),
                Text(
                  description,
                  style: AppTextStyles.caption2Regular.copyWith(
                    color: AppColors.greyText,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
