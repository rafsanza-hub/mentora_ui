import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/widgets/app_chip.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                'Bookmark',
                style: AppTextStyles.headlineBold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 22),
              SizedBox(
                height: 30,
                child: ListView(
                  clipBehavior: Clip.none,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'FE HTML CSS - Chapter 2 - Basic CSS',
                          style: AppTextStyles.footnoteBold,
                        ),
                        Spacer(),
                        Icon(IconlyLight.arrowDown2, size: 14)
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Topic 1 - part 1 - Introducing HTML',
                      style: AppTextStyles.caption1Regular
                          .copyWith(color: AppColors.greyText),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Topic 1 - part 1 - Introducing HTML',
                      style: AppTextStyles.caption1Regular
                          .copyWith(color: AppColors.greyText),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'FE HTML CSS - Chapter 2 - Basic CSS',
                          style: AppTextStyles.footnoteBold,
                        ),
                        Spacer(),
                        Icon(IconlyLight.arrowDown2, size: 14)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
