import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/build_header.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../../widgets/large_btn.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          const RegisHeader(),
          const SizedBox(height: 100),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Enter your email and we will send you\na password reset link',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle20.copyWith(color: darkBlueColor),
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                  prefixIcon: Icons.person,
                  controller: emailController,
                  isPassword: false,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter your email';
                    } else if (!value.contains('@')) {
                      return 'You entered wrong email format';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                BlocBuilder<SignInCubit, SignInStates>(
                  builder: (context, state) {
                    return LargeButton(
                      text: 'Send Email',
                      onTap: () {
                        SignInCubit.get(context)
                            .passwordReset(emailController.text, context);
                      },
                      isIcon: false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
