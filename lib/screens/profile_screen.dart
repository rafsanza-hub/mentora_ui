import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/edit_profile_scree.dart';
import 'package:mentora/screens/onboarding_screen.dart';
import 'package:mentora/widgets/app_chip.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              const SizedBox(height: 12),
              Text(
                'Rafsan Zaini',
                style: AppTextStyles.subheadlineBold,
              ),
              const SizedBox(height: 2),
              Text(
                'rapsanza@gmail.com',
                style: AppTextStyles.caption1Regular.copyWith(
                  color: AppColors.greyText,
                ),
              ),
              const SizedBox(height: 12),
              // ElevatedButton(
              //   onPressed: () {
              //     Get.to(EditProfileScreen());
              //   },
              //   style: ElevatedButton.styleFrom(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8),
              //     ),

              //     minimumSize: const Size(0, 0),
              //     elevation: 1,
              //     shadowColor: Colors.black.withOpacity(0.1),
              //   ),
              //   child: Text(
              //     'Edit Profile',
              //     style: AppTextStyles.footnoteBold.copyWith(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              AppChip('Edit Profile',
                  isSelected: true,
                  shadowColor: AppColors.primary.withOpacity(0.5)),
              const SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greySecondary),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          height: 50,
                          width: 50,
                          'assets/svg/check.svg',
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
                              const SizedBox(height: 2),
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
                    icon: IconlyBold.activity,
                    svg: 'assets/svg/win.svg',
                    title: 'Certificate',
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: IconlyLight.activity,
                    title: 'History Transaction',
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.abc,
                    svg: 'assets/svg/faq.svg',
                    title: 'FAQ',
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: IconlyLight.paperNegative,
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
                    svg: 'assets/svg/wa.svg',
                    title: 'Help Center',
                    onTap: () {},
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: const Divider(
                  height: 0,
                  color: Color(0xFFACACAC),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: _buildMenuItem(
                  icon: IconlyLight.logout,
                  svg: 'assets/svg/logout.svg',
                  title: 'Log Out',
                  textColor: AppColors.greyPrimary,
                  onTap: () {
                    Get.to(OnboardingScreen());
                  },
                ),
              ),
            ],
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
    String? svg,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            svg != null
                ? SvgPicture.asset(
                    svg,
                    width: 24,
                    height: 24,
                  )
                : Icon(
                    icon,
                    size: 24,
                    color: Colors.black,
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
