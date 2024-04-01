import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class LiveChat extends StatelessWidget {
  final String name;
  final String message;
  final String imagePath;
  final bool isFade;
  const LiveChat({super.key, 
  required this.name, 
  required this.message, 
  required this.imagePath,
  this.isFade = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration.zero,
      curve: Curves.easeInOut, 
      opacity: isFade ? 0.5 : 1.0, 
      child: Row(
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
              Text(name, style: const TextStyle(fontSize: 16)),
              Text(message, style: const TextStyle(fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}