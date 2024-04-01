import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/enter_live/presentation/widgets/live_video.dart';

class EnterLive extends StatelessWidget {
  const EnterLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
              'assets/recommended_events/Rectangle_310.png', 
              fit: BoxFit.cover,
            ),
            Positioned(
              top : 15,
              left : 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppPallete.transparentColor,
                      radius: 15,
                      child: Image.asset('assets/profiles/profile1.png'),
                    ), 
                    const SizedBox(width: 8,),
                    const Text('Emma4321', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppPallete.whiteColor),),
                    const SizedBox(width: 8,),
                    Container(
                      color: AppPallete.backgroundColor.withOpacity(0.50),
                      height: 30,
                      width: 30,
                      child: const Icon(Icons.person_add, color: AppPallete.whiteColor,)
                    ),
                    SizedBox(width: 0.25.sw,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppPallete.backgroundColor.withOpacity(0.50),
                      ),
                      child: const Text('Starts in 20.09', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppPallete.whiteColor))),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.3.sh,
              left: 0.3.sw,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: AppPallete.imageBackground,
                    child: Image.asset('assets/images/fxemoji_lock.png'),
                  ),
                  const SizedBox(height: 10,),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Enter live for ',
                          style: TextStyle(color: AppPallete.whiteColor, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '\$30',
                          style: TextStyle(color: AppPallete.gradient1, fontSize: 24,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '50 ',
                          style: TextStyle(color: AppPallete.gradient2, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Spots left',
                          style: TextStyle(color: AppPallete.whiteColor, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppPallete.gradient2),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0), // Adjust the value according to your preference
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.to(const LiveVideo());
                    },
                    child: const Text(
                      'Join Now',
                      style: TextStyle(color: AppPallete.whiteColor, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}