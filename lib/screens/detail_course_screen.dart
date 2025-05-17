import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class DetailCourseScreen extends StatelessWidget {
  const DetailCourseScreen({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Iconsax.arrow_left_2_copy, size: 24),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: const Icon(Iconsax.heart_copy, size: 24),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 218,
                  decoration: BoxDecoration(
                    color: AppColors.greyPrimary,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/image20.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 218,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.greySecondary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '1 / 3',
                              style: AppTextStyles.caption1Regular.copyWith(
                                color: AppColors.greyText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Front End HTML, CSS',
                  style: AppTextStyles.title2Bold,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Iconsax.star_1_copy,
                        size: 14, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text('4.7', style: AppTextStyles.footnoteRegular),
                    const SizedBox(width: 8),
                    const Icon(Iconsax.profile_2user_copy,
                        size: 14, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text('235', style: AppTextStyles.footnoteRegular),
                    const SizedBox(width: 8),
                    const Icon(Iconsax.message_text_copy,
                        size: 14, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text('Grup Discussion',
                        style: AppTextStyles.footnoteRegular),
                    const SizedBox(width: 8),
                    const Icon(Iconsax.book_saved_copy,
                        size: 14, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text('Saved Materi', style: AppTextStyles.footnoteRegular),
                  ],
                ),
                const SizedBox(height: 22),
                Text(
                  'Description',
                  style: AppTextStyles.subheadlineBold,
                ),
                const SizedBox(height: 6),
                Text(
                  'HTML and CSS are the two basic technologies in website creation. HTML (HyperText Markup Language) is used to create the structure and content of the website, while CSS (Cascading Style Sheets) is used to set the appearance and layout of the website. With HTML and CSS, we can create cool and visually appealing websites that are easily accessible to users.',
                  style: AppTextStyles.caption1Regular.copyWith(
                    color: AppColors.greyText,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Speaker Course',
                  style: AppTextStyles.subheadlineBold,
                ),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fahmi Haecal',
                            style: AppTextStyles.footnoteBold,
                          ),
                          Text(
                            'Front End Web Developer, Tokopedia',
                            style: AppTextStyles.caption1Regular.copyWith(
                              color: AppColors.greyText,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/avatar.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Course',
                            style: AppTextStyles.subheadlineBold,
                          ),
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.greyPrimary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Free',
                              style: AppTextStyles.caption2Regular,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 8),
                      _buildCourseChapter(
                          'FE HTML CSS - Chapter 1 - Basic HTML',
                          isExpanded: true),
                      _buildCourseItem(
                        'Topic 1 - Part 1 - Introduction HTML',
                        '8.12',
                        0,
                        isActive: true,
                      ),
                      _buildCourseItem(
                        'Topic 1 - Part 2 - Introduction HTML',
                        '18.12',
                        0,
                        isActive: false,
                      ),
                      _buildCourseChapter('FE HTML CSS - Chapter 2 - Basic CSS',
                          isExpanded: false),
                      _buildCourseItem(
                        'Topic 2 - Part 1 - HTML Working Process',
                        '6.34',
                        0,
                        isActive: false,
                      ),
                      _buildCourseItem(
                        'Topic 2 - Part 2 - HTML Working Process',
                        '4.34',
                        0,
                        isActive: false,
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

  Widget _buildCourseChapter(String title, {required bool isExpanded}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.footnoteBold,
          ),
          Icon(
            isExpanded ? Iconsax.arrow_down_1_copy : Iconsax.arrow_right_2_copy,
            size: 14,
            color: AppColors.greyText,
          ),
        ],
      ),
    );
  }

  Widget _buildCourseItem(String title, String duration, int progress,
      {required bool isActive}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 9),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$progress%',
                style: AppTextStyles.caption2Regular.copyWith(
                  color: AppColors.primary,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.footnoteRegular.copyWith(
                color: isActive ? AppColors.black : AppColors.greyText,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
          Text(
            duration,
            style: AppTextStyles.caption2Regular.copyWith(
              color: isActive ? AppColors.black : AppColors.greyText,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
