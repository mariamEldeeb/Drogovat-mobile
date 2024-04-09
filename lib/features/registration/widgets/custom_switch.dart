import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

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
                activeColor: Color(0xff154908),
                activeTrackColor: Color(0xff6ED93C),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Color(0xff787880),
              ),
              Text(
                'I accept all the policy & terms',
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