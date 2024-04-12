import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/views/initial_view.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/build_check_row.dart';
import 'package:drogovat_mobile/features/registration/widgets/large_btn.dart';
import 'package:drogovat_mobile/features/registration/sign_up/presentation/views/sign_up_view.dart';
import 'package:drogovat_mobile/features/registration/widgets/build_header.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_rich_text.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/sign_in_cubit.dart';
import '../../../manager/sign_in_state.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = SignInCubit.get(context);

    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              const RegisHeader(
                title: 'Sign In',
              ),
              const SizedBox(height: 90),
              CustomTextField(
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
                prefixIcon: personIcon,
                controller: cubit.emailController,
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
              const SizedBox(height: 16),
              CustomTextField(
                hintText: 'Password',
                prefixIcon: lockIcon,
                suffixIcon: cubit.suffixPassIcon,
                controller: cubit.passwordController,
                isPassword: cubit.isPassword,
                suffixPressed: () {
                  cubit.changePasswordVisibility();
                },
              ),
              const SizedBox(height: 30),
              const CheckRow(),
              const SizedBox(height: 40),
              LargeButton(
                text: 'Sign In',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    navigateTo(const InitialView());
                  }
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: MyCustomRichText(
                  firstText: 'Don\'t have an account?',
                  secondText: 'SIGN UP',
                  onTap: () {
                    navigateOffTo(const SignUpView());
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}