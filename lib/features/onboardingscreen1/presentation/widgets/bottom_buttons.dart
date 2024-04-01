import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback nextAction;
  const BottomButton({super.key,
    required this.nextAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.8.sw,
      child: Row(
        children: [
          TextButton(onPressed: (){
            Get.to(const SignInPage());
          }, child: Text('Skip >', style: TextStyle(color: AppPallete.gradient2),)
          ),
          const Spacer(),
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
              nextAction();
            },
            child: const Text(
              'Next',
              style: TextStyle(color: AppPallete.whiteColor, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
