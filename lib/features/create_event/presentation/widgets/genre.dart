// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lyve_chat/core/theme/app_pallete.dart';

class Genre extends StatelessWidget {
  final String label;
  final bool isClicked;
  final VoidCallback onTap;

  const Genre({
    Key? key,
    required this.label,
    required this.isClicked,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isClicked ? AppPallete.gradient2 : null,
            border: Border.all(color: AppPallete.borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Text(label, style: const TextStyle(color: AppPallete.whiteColor, fontSize: 16)),
        ),
      ),
    );
  }
}

