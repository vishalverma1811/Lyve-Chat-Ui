import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/profile_options.dart';

class ProfileDetails extends StatelessWidget {
  final String name;
  final String email;
  final String imagePath;
  const ProfileDetails({super.key, 
  required this.name, 
  required this.email, 
  required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: AppPallete.backgroundColor.withOpacity(0.20),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
            width: 1,
            color: AppPallete.backgroundColor
         ),
      ),
      height: 0.15.sh,
      width: 1.sw,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: AppPallete.transparentColor,
            child: Image.asset(imagePath),
          ),
          const SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const SizedBox(height: 8,),
              Text(email, style: const TextStyle(fontSize: 12, color: AppPallete.borderColor),)
            ],
          ),
          const Spacer(),
          IconButton(onPressed: (){
            Get.to(const ProfileOptions());
          }, icon: const Icon(Icons.keyboard_arrow_right_outlined, size: 35, color: AppPallete.whiteColor,))
        ],
      ),
    );
  }
}