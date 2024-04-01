import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class PayoutDisplay extends StatelessWidget {
  final String revenue;
  const PayoutDisplay({super.key, 
  required this.revenue
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: AppPallete.imageBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
            width: 1,
            color: AppPallete.borderColor
         ),
      ),
      height: 0.15.sh,
      width: 1.sw,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Total Event\nRevene', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
          Text('\$$revenue', style:const  TextStyle(fontSize: 32, color: AppPallete.gradient2),)
        ],
      ),
    );
  }
}