import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/screens/forgot_password_screen.dart';
import 'package:mentora/screens/main_screen.dart';
import 'package:mentora/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Text('Login', style: AppTextStyles.title2Bold),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over',
                    style: AppTextStyles.caption1Regular,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
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
                      const SizedBox(height: 14),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.password),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 12),
                      InkWell(
                        onTap: () {
                          Get.to(() => const ForgotPasswordScreen());
                        },
                        child: Text(
                          'Forgot Password?',
                          style: AppTextStyles.footnoteRegular.copyWith(
                            color: AppColors.primary,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(color: AppColors.white),
                        ),
                        onPressed: () {
                          Get.to(() => const MainScreen());
                        },
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: () {
                          Get.to(() => const RegisterScreen());
                        },
                        child: const Text('Create Account'),
                      ),
                      SizedBox(height: 30),
                      Divider(),
                      SizedBox(height: 24),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Login with Google',
                            style: TextStyle(color: AppColors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shadowColor: Colors.black.withOpacity(0.3),
                          ))
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
