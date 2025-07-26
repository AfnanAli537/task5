import 'package:flutter/material.dart';
import 'package:one_screen/home.dart';
import 'package:one_screen/res/app_strings.dart';
import 'package:one_screen/res/app_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
