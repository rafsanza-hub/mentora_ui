import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                const SizedBox(height: 90),
                Text('Create Account', style: AppTextStyles.title2Bold),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'You must first create an account to be able to access the LearnConnect platform and be able to enjoy the various available learning features.',
                    style: AppTextStyles.caption1Regular,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),

                // Form
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Full Name
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.profile),
                          labelText: 'Full Name',
                        ),
                      ),
                      const SizedBox(height: 14),

                      // Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.message),
                          labelText: 'Your Email',
                        ),
                      ),
                      const SizedBox(height: 14),

                      // Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.password),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 14),

                      // Confirm Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.password),
                          labelText: 'Confirm Password',
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Register Button
                      ElevatedButton(
                        child: const Text(
                          'Create Account',
                          style: TextStyle(color: AppColors.white),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Text(
                          'By registering, it means that you agree to the Terms and Conditions that apply.',
                          style: AppTextStyles.caption1Regular,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 24),
                      Divider(),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Google',
                          style: TextStyle(color: AppColors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.white,
                          shadowColor: Colors.black.withOpacity(0.3),
                        ),
                      )
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
}
