import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class CreatorSuggestiom extends StatelessWidget {
  final String imagePath;
  final String name;
  const CreatorSuggestiom({
    super.key, 
    required this.imagePath, 
    required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: AppPallete.transparentColor,
          child: Image.asset(imagePath),
        ),
        const SizedBox(height: 4,),
        Text(name, style: const TextStyle(fontSize: 14, color: AppPallete.whiteColor),),
        const SizedBox(height: 4,),
        SizedBox(
          height: 0.035.sh,
          width: 0.21.sw,
          child: ElevatedButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppPallete.gradient2),
            shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          child: const Text('Follow', 
          style: TextStyle(fontSize: 12, color: AppPallete.whiteColor),
          )),
        ),
      ],
    );
  }
}