import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.validate,
    this.keyboardType,
    this.maxLines,
  });

  final String? hintText;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      margin: const EdgeInsets.only(left: 15),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        onFieldSubmitted: (value) {
          print(value);
        },
        style: const TextStyle(
          fontSize: 22,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: hintTextColor,
            fontSize: 22,
          ),
        ),
        validator: validate,
      ),
    );
  }
}
