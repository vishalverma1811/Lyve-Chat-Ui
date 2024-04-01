import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class EventRevenue extends StatelessWidget {
  final String imagePath;
  final String eventName;
  final String revenue;
  final String dateAndTime;
  final String status;
  const EventRevenue({super.key, 
  required this.imagePath, 
  required this.eventName, 
  required this.revenue, 
  required this.dateAndTime,
  required this.status
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.09.sh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundColor: AppPallete.transparentColor,
              child: Image.asset(imagePath),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Text(eventName, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                Text(dateAndTime, style: const TextStyle(fontSize: 12)),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Text('\$$revenue', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 26,),
                Text(status, style: TextStyle(fontSize: 14,
                color: status == 'Processing'? AppPallete.gradient1 : status == 'Cancelled' ?AppPallete.errorColor:AppPallete.gradient2
                )),
              ],
            ),
          ]
      ),
    );
  }
}