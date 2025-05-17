import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Hallo, Rafsan Zaini',
                      style: AppTextStyles.footnoteBold,
                    ),
                    Spacer(),
                    Icon(
                      Iconsax.notification_copy,
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 49,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search course here ...',
                      hintStyle: AppTextStyles.caption1Regular.copyWith(
                        fontSize: 13,
                        color: AppColors.greyPrimary,
                      ),
                      suffixIcon: const Icon(
                        Iconsax.search_normal_1_copy,
                        color: AppColors.greyPrimary,
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
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
                      _buildChip('All'),
                      const SizedBox(width: 6),
                      _buildChip('Programming'),
                      const SizedBox(width: 6),
                      _buildChip('UI / UX Designer'),
                      const SizedBox(width: 6),
                      _buildChip('Data Sience'),
                      const SizedBox(width: 6),
                      _buildChip('Machine Learning'),
                      const SizedBox(width: 6),
                      _buildChip('Architecture'),
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

  Container _buildCard(
      String title, String image, String totalMember, String price) {
    return Container(
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
                Iconsax.profile_2user_copy,
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
    );
  }

  ChoiceChip _buildChip(String title) {
    return ChoiceChip(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      label: Text(title),
      selected: false,
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
      labelStyle: AppTextStyles.footnoteRegular,
    );
  }
}
