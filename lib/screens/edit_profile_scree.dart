import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
                SizedBox(height: 32),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.profile),
                          labelText: 'Name',
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.call),
                          labelText: 'Phone',
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.password),
                          labelText: 'New Password',
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconlyLight.password),
                          labelText: 'Verification Password',
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        child: const Text('Save'),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Cancel')),
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
