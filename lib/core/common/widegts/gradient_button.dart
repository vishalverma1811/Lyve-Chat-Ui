import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Icon? icon; 
  const GradientButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.icon, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPallete.gradient2,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8,),
            if (icon != null)
              Icon(
                icon!.icon,
                color: AppPallete.whiteColor,
              ),
          ],
        ),
      ),
    );
  }
}
