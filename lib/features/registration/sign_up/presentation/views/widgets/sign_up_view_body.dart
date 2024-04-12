import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/features/registration/widgets/large_btn.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/sign_in_view.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/another_sign_up_way.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_state.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_switch.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/build_header.dart';
import '../../../../widgets/custom_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = SignUpCubit.get(context);

    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            const RegisHeader(title: 'Sign Up'),
            const SizedBox(height: 14),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const CustomTextField(
                      hintText: 'Full Name',
                      prefixIcon: personIcon,
                      isPassword: false,
                    ),
                    const SizedBox(height: 16),
                    const CustomTextField(
                      hintText: 'Phone',
                      textInputType: TextInputType.number,
                      prefixIcon: phoneIcon,
                      isPassword: false,
                    ),
                    const SizedBox(height: 16),
                    const CustomTextField(
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                      prefixIcon: atIcon,
                      isPassword: false,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Password',
                      prefixIcon: lockIcon,
                      suffixIcon: cubit.suffixPassIcon,
                      isPassword: cubit.isPassword,
                      suffixPressed: () {
                        cubit.changePasswordVisibility();
                      },
                      validate: (value) {
                        if (value!.length < 8) {
                          return 'Password must be more than 8';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Confirm Password',
                      prefixIcon: lockCheckIcon,
                      suffixIcon: cubit.suffixConfirmPassIcon,
                      isPassword: cubit.isConfirmPassword,
                      suffixPressed: () {
                        cubit.changeConfirmPasswordVisibility();
                      },
                    ),
                    const SizedBox(height: 20),
                    const CustomSwitch(
                      switchLabel: 'I accept all the policy & terms',
                    ),
                    const SizedBox(height: 20),
                    const LargeButton(text: 'Sign Up'),
                    const SizedBox(height: 25),
                    const AnotherWayToSignUp(),
                    const SizedBox(height: 10),
                    MyCustomRichText(
                      firstText: 'Already have an account?',
                      secondText: 'SIGN IN',
                      onTap: () {
                        navigateTo(const SignInView());
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}