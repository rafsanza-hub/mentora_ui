import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                Text('Forgot Password', style: AppTextStyles.title2Bold),
                SizedBox(height: 6),
                Text(
                  'Enter your Email to Reset Password',
                  style: AppTextStyles.caption1Regular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 22),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.message),
                          labelText: 'Your Email',
                        ),
                      ),
                      const SizedBox(height: 22),
                      ElevatedButton(
                        child: const Text(
                          'Send',
                          style: TextStyle(color: AppColors.white),
                        ),
                        onPressed: () {},
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
}
