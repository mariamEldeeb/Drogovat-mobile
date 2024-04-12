import 'package:drogovat_mobile/features/registration/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';

class CheckRow extends StatelessWidget {
  const CheckRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CustomSwitch(switchLabel: 'Remember me',),
        Text(
          'Forget Password?',
          style: TextStyle(
            color: hintTextColor,
            fontSize: 17,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}