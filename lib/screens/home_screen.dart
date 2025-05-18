import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/detail_course_screen.dart';
import 'package:mentora/widgets/app_chip.dart';
import 'package:mentora/widgets/app_search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Hallo, Rafsan Zaini',
                      style: AppTextStyles.footnoteBold,
                    ),
                    Spacer(),
                    Icon(
                      IconlyLight.notification,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
                SizedBox(height: 7.41),
                Text(
                  'Find a course you\nwant to learn.',
                  style: AppTextStyles.title2Bold,
                ),
                const SizedBox(height: 16),
                AppSearchField(hintText: 'Search course here ...'),
                const SizedBox(height: 13),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 100,
                        width: 245,
                        decoration: BoxDecoration(
                          color: AppColors.greyPrimary,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image(
                            image: AssetImage('assets/images/Banner.png')),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 100,
                        width: 245,
                        decoration: BoxDecoration(
                          color: AppColors.greyPrimary,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image(
                            image: AssetImage('assets/images/Banner.png')),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AppChip('All', isSelected: true),
                      const SizedBox(width: 6),
                      AppChip('Programming', isSelected: false),
                      const SizedBox(width: 6),
                      AppChip('UI / UX Designer', isSelected: false),
                      const SizedBox(width: 6),
                      AppChip('Data Sience', isSelected: false),
                      const SizedBox(width: 6),
                      AppChip('Machine Learning', isSelected: false),
                      const SizedBox(width: 6),
                      AppChip('Architecture', isSelected: false),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'LearnFlex',
                      style: AppTextStyles.headlineBold,
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: AppTextStyles.caption1Regular.copyWith(
                        color: AppColors.greySecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                SizedBox(
                  height: 148.19,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCard(
                        'UI/UX Design',
                        'assets/images/image19.png',
                        '10',
                        '20',
                      ),
                      const SizedBox(width: 6),
                      _buildCard(
                        'Web Development',
                        'assets/images/image20.png',
                        '10',
                        '20',
                      ),
                      const SizedBox(width: 6),
                      _buildCard(
                        'Data Science',
                        'assets/images/image21.png',
                        '10',
                        '20',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6.81),
                Row(
                  children: [
                    Text(
                      'LearnFlex',
                      style: AppTextStyles.headlineBold,
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: AppTextStyles.caption1Regular.copyWith(
                        color: AppColors.greySecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                SizedBox(
                  height: 148.19,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCard(
                        'UI/UX Design',
                        'assets/images/image19.png',
                        '10',
                        '20',
                      ),
                      const SizedBox(width: 6),
                      _buildCard(
                        'Web Development',
                        'assets/images/image20.png',
                        '10',
                        '20',
                      ),
                      const SizedBox(width: 6),
                      _buildCard(
                        'Data Science',
                        'assets/images/image21.png',
                        '10',
                        '20',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
      String title, String image, String totalMember, String price) {
    return GestureDetector(
      onTap: () => Get.to(
        DetailCourseScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      ),
      child: Container(
        height: 148.19,
        width: 149,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     blurRadius: 10,
          //     offset: Offset(0, 0),
          //   ),
          // ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 94.19,
                width: 137,
                decoration: BoxDecoration(
                  color: AppColors.greyPrimary,
                  borderRadius: BorderRadius.circular(6.85),
                ),
                child: Image(fit: BoxFit.cover, image: AssetImage(image)),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: AppTextStyles.caption1Bold,
              ),
              Row(children: [
                Icon(
                  IconlyLight.user3,
                  color: AppColors.primary,
                  size: 14,
                ),
                SizedBox(width: 2),
                Text(
                  totalMember,
                  style: AppTextStyles.caption2Regular.copyWith(
                    color: AppColors.greyText,
                  ),
                ),
                Spacer(),
                Text('\$ $price',
                    style: AppTextStyles.footnoteBold.copyWith(
                      color: AppColors.black,
                    )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
