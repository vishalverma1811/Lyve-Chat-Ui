import 'package:flutter/material.dart';

class BankDetailField extends StatelessWidget {
  final String heading;
  final String hintText;
  const BankDetailField({Key? key,
   required this.heading, 
   required this.hintText
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8)
          ),
        ),
      ],
    );
  }
}
