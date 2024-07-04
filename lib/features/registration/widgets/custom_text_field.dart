import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.textInputType,
    required this.prefixIcon,
    this.validate,
    required this.isPassword,
    this.onChanged,
    this.onSubmit,
    this.controller,
    this.suffixIcon,
    this.suffixPressed,
  });

  final String hintText;
  final TextInputType? textInputType;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Function()? suffixPressed;
  final String? Function(String?)? validate;
  final bool isPassword;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.width / 7.2,
      padding: const EdgeInsets.only(left: 20, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(prefixIcon),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: textInputType,
              cursorColor: darkBlueColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: Styles.textStyle16,
                contentPadding: EdgeInsets.zero,
              ),
              maxLines: 1,
              style: Styles.textStyle20.copyWith(color: darkBlueColor),
              validator: validate,
              obscureText: isPassword,
              onChanged: onChanged,
              onFieldSubmitted: onSubmit,
            ),
          ),
          const SizedBox(width: 10),
          suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    suffixIcon,
                    size: 21,
                  ),
                  onPressed: suffixPressed,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
