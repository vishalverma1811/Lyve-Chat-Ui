import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class Genres extends StatelessWidget {
  final String imagePath;
  final String title;
  const Genres({
    super.key, 
    required this.imagePath, 
    required this.title
    });

  @override
  Widget build(BuildContext context) {
    return  Stack(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(imagePath),
      ),
      Positioned(
        bottom: 8,
        left: 8,
        right: 8,
        child: Container(
          color: AppPallete.textBackground,
          child: Center(
            child: Text(title,style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor)
            ),
          ),
        ),
      ),
    ],
          );
  }
}