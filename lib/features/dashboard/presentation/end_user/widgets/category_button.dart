import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final Image? image;
  //final VoidCallback onPressed;

  const CategoryButton({
    Key? key,
    required this.label,
    this.image,
    //required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: image != null ?Row(
            children: [
                CircleAvatar(
                  backgroundImage: image!.image,
                  radius: 0.012.sh,
                  backgroundColor: AppPallete.transparentColor,
                ),
              const SizedBox(width: 8),
              Text(label, style: const TextStyle(color: Colors.white),),
            ]
          ) : Text(label, style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

