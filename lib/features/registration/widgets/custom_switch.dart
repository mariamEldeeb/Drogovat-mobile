import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.switchLabel});

  final String switchLabel;

  @override
  Widget build(BuildContext context) {
    var cubit = SignUpCubit.get(context);

    return BlocBuilder<SignUpCubit, SignUpStates>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Switch(
                value: cubit.isSwitchOn,
                onChanged: (val) {
                  cubit.changeSwitchValue();
                },
                activeColor: const Color(0xff154908),
                activeTrackColor: const Color(0xff6ED93C),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: const Color(0xff787880),
              ),
              Text(
                switchLabel,
                style: TextStyle(
                  color: hintTextColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}