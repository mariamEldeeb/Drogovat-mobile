import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.text,
    this.onTap,
    this.textColor,
  });

  final String text;
  final Function()? onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 115,
        height: 45,
        decoration: BoxDecoration(
          color: darkBlueColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}