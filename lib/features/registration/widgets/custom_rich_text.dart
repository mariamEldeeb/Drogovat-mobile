import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class MyCustomRichText extends StatelessWidget {
  const MyCustomRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.onTap,
  });

  final String firstText;
  final String secondText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: 16,
            color: hintTextColor,
          ),
        ),
        SizedBox(width: 15,),
        InkWell(
          onTap: onTap,
          child: Text(
            secondText,
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: darkBlueColor,
            ),
          ),
        ),
      ],
    );
  }
}