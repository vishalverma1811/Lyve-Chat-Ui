import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final Icon icon;

  const TextInputField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.icon,
    this.isObscureText = false,
  }) : super(key: key);

  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.icon,
        suffixIcon: widget.isObscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: _isObscure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "${widget.hintText} is missing!";
        }
        return null;
      },
      obscureText: widget.isObscureText ? _isObscure : false,
    );
  }
}
