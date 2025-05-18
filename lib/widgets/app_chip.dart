import 'package:flutter/material.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class AppChip extends StatelessWidget {
  final String title;
  final bool isSelected;
  const AppChip(
    this.title, {
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}
