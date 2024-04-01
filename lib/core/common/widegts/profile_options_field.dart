import 'package:flutter/material.dart';

class ProfileOptionsField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final VoidCallback onPressed;
  const ProfileOptionsField({
    super.key, 
    required this.hintText, 
    required this.prefixIcon, 
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: TextFormField(
        enabled: false,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: const Icon(Icons.arrow_right_sharp),
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        ),
      ),
    );
  }
}