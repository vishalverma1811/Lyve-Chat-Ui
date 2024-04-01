import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class NotificationGenerator extends StatelessWidget {
  final String timeAgo;
  final String message;
  final String imagePath;
  const NotificationGenerator({super.key, 
  required this.timeAgo, 
  required this.message, 
  required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: AppPallete.transparentColor,
            child: Image.asset(imagePath),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor)),
              Text(timeAgo, style: const TextStyle(fontSize: 12, color: AppPallete.borderColor)),
            ],
          ),
        ],
      );
  }
}