import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentora/controllers/main_controller.dart';
import 'package:mentora/core/theme/app_theme.dart';
import 'package:mentora/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => MainController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme(),
      home: MainScreen(),
    );
  }
}
