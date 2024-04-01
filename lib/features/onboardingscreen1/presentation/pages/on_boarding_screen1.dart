import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/onboardingscreen1/presentation/pages/on_boarding_screen2.dart';
import 'package:lyve_chat/features/onboardingscreen1/presentation/widgets/bottom_buttons.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.50.sh,
            right: 0.13.sw,
            child: Image.asset('assets/on_boarding_screen1/image2.png'),
          ),
          Positioned(
            top: 0.50.sh,
            left: 0.13.sw,
            child: Image.asset('assets/on_boarding_screen1/image3.png'),
          ),
          Positioned(
            bottom: 0.83.sh,
            left: 0.03.sw,
            child: Image.asset('assets/on_boarding_screen1/polygon3.png'),
          ),
          Positioned(
            bottom: 0.70.sh,
            left: 0.13.sw,
            child: Image.asset('assets/on_boarding_screen1/image4.png'),
          ),
          Positioned(
            bottom: 0.60.sh,
            right: 0.13.sw,
            child: Image.asset('assets/on_boarding_screen1/image5.png'),
          ),
          Positioned(
            bottom: 0.85.sh,
            right: 0.04.sw,
            child: Image.asset('assets/on_boarding_screen1/polygon2.png'),
          ),
          Positioned(
            top: 0.35.sh,
            left: 0.20.sw,
            child: Image.asset('assets/on_boarding_screen1/polygon1.png'),
          ),
          Positioned(
            top: 0.30.sh,
            left: 0.30.sw,
            child: Image.asset('assets/on_boarding_screen1/image1.png'),
          ),
          Positioned(
            bottom: 0.12.sh,
            left: 0.18.sw,
            child: const Column(
              children: [
                Text('All Genres', style: TextStyle(fontSize: 18, fontWeight:
                FontWeight.bold, color: AppPallete.gradient2),),
                Text('Dive into a world of diverse entertainment\n\t with music concerts, sports, games, and\n\t\t\t live streaming—all in one app!',
                  style: TextStyle(fontSize: 14, fontWeight:
                FontWeight.bold, color: AppPallete.whiteColor),),
              ],
            ),
          ),
          Positioned(
            left: 0.1.sw,
            bottom: 0.01.sh,
              child: BottomButton(nextAction: (){
                Get.to(const OnBoardingScreen2());
              },)
          ),
        ],
      ),
    );
  }
}
