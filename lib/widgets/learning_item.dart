import 'package:flutter/material.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class LearningItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String type;
  final Color typeColor;
  final String chapters;
  final String description;

  const LearningItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.type,
    required this.typeColor,
    required this.chapters,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
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
                        style: AppTextStyles.caption2Regular.copyWith(
                          letterSpacing: 0,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
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
