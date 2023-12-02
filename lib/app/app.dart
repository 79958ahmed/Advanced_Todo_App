import 'package:advanced_todo_app/core/utils/app_assets.dart';
import 'package:advanced_todo_app/core/utils/app_colors.dart';
import 'package:advanced_todo_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Todo App',
debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.Background,
        body: Center(child: Image.asset(AppAssets.logo),),
      ),
    );
  }
}