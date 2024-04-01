import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';
import 'package:lyve_chat/features/onboardingscreen1/presentation/widgets/bottom_buttons.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0.60.sh,
            left: 0.10.sw,
            child: Image.asset('assets/on_boarding_screen1/image6.png'),
          ),
          Positioned(
            bottom: 0.72.sh,
            left: 0.25.sw,
            child: CircleAvatar(
                radius: 55,
                backgroundColor: AppPallete.imageBackground,
                child: Image.asset('assets/images/fxemoji_lock.png')),
          ),
          Positioned(
            bottom: 0.85.sh,
            right: 0.06.sw,
            child: Transform.rotate(
              angle: 0.5,
              child: const Text('Unlock IT',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,color: AppPallete.borderColor),),
            ),
          ),
          Positioned(
            bottom: 0.27.sh,
            right: 0.10.sw,
            child: Image.asset('assets/on_boarding_screen1/image6.png'),
          ),
          Positioned(
            bottom: 0.47.sh,
            right: 0.10.sw,
            child: Image.asset('assets/on_boarding_screen1/heart1.png'),
          ),
          Positioned(
            bottom: 0.37.sh,
            right: 0.25.sw,
            child: Image.asset('assets/on_boarding_screen1/heart2.png'),
          ),
          Positioned(
            bottom: 0.27.sh,
            right: 0.10.sw,
            child: Image.asset('assets/on_boarding_screen1/heart3.png'),
          ),
          Positioned(
            bottom: 0.17.sh,
            right: 0.15.sw,
            child: Image.asset('assets/on_boarding_screen1/heart4.png'),
          ),
          Positioned(
            bottom: 0.37.sh,
            left: 0.10.sw,
            child: Transform.rotate(
              angle: -0.5,
              child: const Text('Enjoy Live',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,color: AppPallete.borderColor),),
            ),
          ),
          Positioned(
            bottom: 0.12.sh,
            left: 0.18.sw,
            child: const Column(
              children: [
                Text('Enjoy Live', style: TextStyle(fontSize: 18, fontWeight:
                FontWeight.bold, color: AppPallete.gradient2),),
                Text('Unlock exclusive live streaming content \n\t\t\t\t by making a payment',
                  style: TextStyle(fontSize: 14, fontWeight:
                  FontWeight.bold, color: AppPallete.whiteColor),),
              ],
            ),
          ),
          Positioned(
              left: 0.1.sw,
              bottom: 0.01.sh,
              child: BottomButton(nextAction: () {
                Get.offAll(const SignInPage());
              },)
          ),
        ],
      ),
    );
  }
}
