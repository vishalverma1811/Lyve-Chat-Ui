import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class FollowingList extends StatelessWidget {
  final String imagePath;
  final String name;
  const FollowingList({
    super.key, 
    required this.imagePath, 
    required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        const SizedBox(width: 8,),
        Text(name, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor)),
        const Spacer(),
        SizedBox(
          height: 0.04.sh,
          width: 0.3.sw,
          child: ElevatedButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppPallete.gradient2),
            shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Following', style: TextStyle(fontSize: 12, color: AppPallete.whiteColor)),
                Image.asset('assets/images/user-check-rounded-bold.png'),
              ],
            ),
        ),
        ),
      ],
    );
  }
}