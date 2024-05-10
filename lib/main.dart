import 'package:flutter/material.dart';
import 'package:widgets_app_new/config/menu/theme/app_theme.dart';
import 'package:widgets_app_new/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).getTheme(),
        home: const HomeScreen());
  }
}
