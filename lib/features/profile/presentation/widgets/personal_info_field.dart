import 'package:flutter/material.dart';

class PersonalInfoField extends StatelessWidget {
  final String defaultValue;
  final Icon prefixIcon;

  const PersonalInfoField({
    Key? key,
    required this.defaultValue,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: defaultValue,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      ),
    );
  }
}
