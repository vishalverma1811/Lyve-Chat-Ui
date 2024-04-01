import 'package:flutter/material.dart';

class SearchInputField
 extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final Icon icon;
  const SearchInputField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.icon,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        suffixIcon: const Icon(Icons.cancel_outlined),
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is missing!";
        }
        return null;
      },
      obscureText: isObscureText,
    );
  }
}
