import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentora/controllers/main_controller.dart';
import 'package:mentora/core/theme/app_theme.dart';
import 'package:mentora/screens/main_screen.dart';
import 'package:mentora/screens/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => OnboardingController());
  Get.lazyPut(() => MainController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: MainScreen(),
    );
  }
}
