import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class FollowersContent extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  const FollowersContent({super.key, 
  required this.name, 
  required this.description, 
  required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
              Text(description, style: const TextStyle(fontSize: 12, color: AppPallete.borderColor),)
            ],
          ),
      ],
    );
  }
}