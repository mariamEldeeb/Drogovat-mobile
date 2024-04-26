import 'package:drogovat_mobile/core/utils/styles.dart';
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
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 15),
        InkWell(
          onTap: onTap,
          child: Text(
            secondText,
            style: Styles.textStyle17.copyWith(
              fontWeight: FontWeight.w900,
              color: darkBlueColor,
            ),
          ),
        ),
      ],
    );
  }
}
