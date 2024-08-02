import 'package:flutter/material.dart';

class CustomTextFieldText extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final RegExp validationExp;
  const CustomTextFieldText({
    super.key,
    this.controller,
    required this.text,
    required this.validationExp,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value != null && validationExp.hasMatch(value)) {
          return null;
        }
        return 'enter a valid ${text.toLowerCase()} ';
      },
      decoration: InputDecoration(
          hintText: text,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
