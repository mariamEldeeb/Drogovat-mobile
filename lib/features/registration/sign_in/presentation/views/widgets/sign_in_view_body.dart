import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/core/widgets/custom_btn.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/monitor_view.dart';
import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_state.dart';
import 'package:drogovat_mobile/features/registration/sign_up/presentation/views/sign_up_view.dart';
import 'package:drogovat_mobile/features/registration/widgets/build_header.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_rich_text.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              RegisHeader(
                title: 'Sign In',
              ),
              SizedBox(height: 90),
              CustomTextField(
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
                prefixIcon: FontAwesomeIcons.user,
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
              SizedBox(height: 16),
              CustomTextField(
                hintText: 'Password',
                prefixIcon: FontAwesomeIcons.userLock,
                suffixIcon: cubit.suffixPassIcon,
                controller: cubit.passwordController,
                isPassword: cubit.isPassword,
                suffixPressed: () {
                  cubit.changePasswordVisibility();
                },
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: hintTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              LargeButton(
                text: 'Sign In',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    navigateTo(MonitorView());
                  }
                },
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: MyCustomRichText(
                  firstText: 'Don\'t have an account?',
                  secondText: 'SIGN UP',
                  onTap: () {
                    navigateOffTo(SignUpView());
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
