import 'package:advanced_todo_app/core/utils/app_assets.dart';
import 'package:advanced_todo_app/core/utils/app_colors.dart';
import 'package:advanced_todo_app/core/utils/app_strings.dart';
import 'package:advanced_todo_app/features/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({Key? key}) : super(key: key);

   PageController controller=PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.Background,
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Expanded(
                  child: PageView.builder(
                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (context,index){
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: (){},
                                child:  Text(AppStrings.skip,style:GoogleFonts.lato(
                                  fontSize: 16,
                                  //fontWeight:FontWeight.bold,
                                  color: AppColors.White.withOpacity(.44),
                                ),),
                              ),
                            ),
                            Center(child: Image.asset(OnBoardingModel.onBoardingScreens[index].imagePath)),

                            SizedBox(
                              height: 16,
                            ),
                            Center(
                              child: SmoothPageIndicator(
                                controller: controller,
                                count: 3,
                                effect: ExpandingDotsEffect(
                                  //  dotWidth: 20,
                                  activeDotColor: AppColors.Primary,
                                  dotHeight: 5,
                                  spacing: 8,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 52,
                            ),
                            Center(
                              child: Text(OnBoardingModel.onBoardingScreens[index].title,style:GoogleFonts.lato(
                                fontSize: 32,
                                fontWeight:FontWeight.bold,
                                color: AppColors.White,
                              ),),
                            ),
                            SizedBox(
                              height: 42,
                            ),
                            Text(OnBoardingModel.onBoardingScreens[index].subTitle,style:GoogleFonts.lato(
                              fontSize: 16,
                              //fontWeight:FontWeight.bold,
                              color: AppColors.White,
                            ),),
                            SizedBox(
                              height: 90,
                            ),
                            Spacer(),
                            Row(
                              children:
                              [
                                TextButton(onPressed: (){}, child: Text(AppStrings.back,style:GoogleFonts.lato(
                                  fontSize: 16,
                                  color: AppColors.White.withOpacity(.44),
                                ),)),
                                Spacer(),
                                ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.Primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child:Text(AppStrings.next))
                              ],
                            ),
                          ],
                        );
                      }),
                ) ,

              ],
            ),
          ),
        ));
  }
}
