import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Notification',
                    style: AppTextStyles.headlineBold,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 24),
                Text('Yesterday', style: AppTextStyles.calloutBold),
                SizedBox(height: 12),
                _buildNotifItem('Topic 1 - Part 2 - Introduction HTML',
                    'video 8.12', false),
                SizedBox(height: 6),
                _buildNotifItem(
                    'Topic 1 - Part 1 - Introduction HTML', 'video 8.12', true),
                SizedBox(height: 24),

                // this week
                Text('This Week', style: AppTextStyles.calloutBold),
                SizedBox(height: 12),
                _buildNotifItem(
                    'Topic 1 - Part 1 - Introduction HTML', 'video 8.12', true),
                SizedBox(height: 6),
                _buildNotifItem(
                    'Topic 1 - Part 1 - Introduction HTML', 'video 8.12', true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildNotifItem(String title, String subTitle, bool isCompleted) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 10, vertical: 13).copyWith(right: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isCompleted ? Colors.white : AppColors.background,
        borderRadius: BorderRadius.circular(8),
        boxShadow: isCompleted
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                )
              ]
            : [],
      ),
      child: Row(
        children: [
          if (isCompleted)
            SvgPicture.asset(
              height: 24,
              width: 24,
              'assets/svg/check.svg',
            )
          else
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF185DCF),
                ),
                children: [
                  TextSpan(
                    text: '0',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: '%',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.footnoteBold,
              ),
              Text(
                subTitle,
                style: AppTextStyles.caption2Regular
                    .copyWith(color: AppColors.greyPrimary),
              ),
            ],
          ),
          Spacer(),
          Icon(IconlyLight.arrowRightCircle, size: 14),
        ],
      ),
    );
  }
}
