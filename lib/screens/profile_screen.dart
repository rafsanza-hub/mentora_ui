import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/edit_profile_scree.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Profile',
                  style: AppTextStyles.headlineBold,
                ),
                const SizedBox(height: 28),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/avatar.png'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Text(
                  'Fahmi Haecal',
                  style: AppTextStyles.subheadlineBold,
                ),
                const SizedBox(height: 2),
                Text(
                  'Haecal78@gmail.com',
                  style: AppTextStyles.caption1Regular.copyWith(
                    color: AppColors.greyText,
                  ),
                ),
                const SizedBox(height: 2),
                ElevatedButton(
                  onPressed: () {
                    Get.to(EditProfileScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(0, 0),
                    elevation: 1,
                    shadowColor: Colors.black.withOpacity(0.1),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: AppTextStyles.footnoteBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greySecondary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greyPrimary,
                        ),
                        child: const Icon(
                          IconlyLight.tickSquare,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your personal information is complete',
                              style: AppTextStyles.footnoteBold,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Thank you for filling in your personal information for course administration purposes.',
                              style: AppTextStyles.caption2Regular.copyWith(
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                _buildMenuItem(
                  icon: IconlyLight.document,
                  title: 'Certificate',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: IconlyLight.activity,
                  title: 'History Transaction',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: IconlyLight.message,
                  title: 'FAQ',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: IconlyLight.document,
                  title: 'Terms & Conditions',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: IconlyLight.star,
                  title: 'Rating App or Give Input',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: IconlyLight.message,
                  title: 'Help Center',
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(height: 12.5),
                _buildMenuItem(
                  icon: IconlyLight.logout,
                  title: 'Log Out',
                  textColor: AppColors.greyPrimary,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? textColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: textColor ?? AppColors.greyText,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: AppTextStyles.footnoteRegular.copyWith(
                color: textColor ?? AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
