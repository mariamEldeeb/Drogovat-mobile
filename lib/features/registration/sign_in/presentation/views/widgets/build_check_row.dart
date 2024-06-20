import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/core/widgets/custom_switch.dart';
import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_cubit.dart';
import 'package:flutter/material.dart';

class CheckRow extends StatelessWidget {
  const CheckRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomSwitch(
          switchLabel: 'Remember me',
          switchValue: SignInCubit.get(context).isSwitchOn,
          onChange: (val) {
            SignInCubit.get(context).changeSwitchValue(val);
          },
        ),
        Text(
          'Forget Password?',
          style: Styles.textStyle16.copyWith(
            fontSize: 17,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
