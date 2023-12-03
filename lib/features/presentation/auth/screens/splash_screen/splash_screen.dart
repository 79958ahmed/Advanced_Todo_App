import 'package:advanced_todo_app/core/utils/app_assets.dart';
import 'package:advanced_todo_app/core/utils/app_colors.dart';
import 'package:advanced_todo_app/core/utils/app_strings.dart';
import 'package:advanced_todo_app/features/presentation/auth/screens/on_boarding_screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    navigate();
  }

  void navigate(){
    Future.delayed(const Duration(seconds: 3),()
    {
      Navigator.push(context, MaterialPageRoute(builder: (_)=> OnboardingScreen()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Background,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.logo),
          SizedBox(
          height: 24,
          ),
           Text(AppStrings.appName,style:GoogleFonts.lato(
            fontSize: 40,
            fontWeight:FontWeight.bold,
             color: AppColors.White,
          ),),
        ],
      ),),
    );
  }
}
