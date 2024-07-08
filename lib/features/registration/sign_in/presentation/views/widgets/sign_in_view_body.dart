import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/functions/show_snackbar.dart';
import 'package:drogovat_mobile/core/utils/cache_helper.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/views/initial_view.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/another_sign_up_way.dart';
import 'package:drogovat_mobile/features/registration/sign_up/presentation/views/sign_up_view.dart';
import 'package:drogovat_mobile/features/registration/widgets/build_header.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_rich_text.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_text_field.dart';
import 'package:drogovat_mobile/features/registration/widgets/large_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../manager/sign_in_cubit.dart';
import '../../../manager/sign_in_state.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = SignInCubit.get(context);
    var signInFormKey = GlobalKey<FormState>();

    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        if (state is SignInErrorState) {
          showSnackBar(
            title: 'Error',
            text: state.error,
          );
        }
        if (state is SignInSuccessState) {
          CacheHelper.saveData(
            key: 'uId',
            value: state.uId,
          ).then((value) {
            navigateTo(const InitialView());
          });
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const RegisHeader(title: 'Sign In'),
            const SizedBox(height: 90),
            Expanded(
              child: Form(
                key: signInFormKey,
                child: Column(
                  children: [
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
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Password',
                      prefixIcon: Icons.lock,
                      suffixIcon: cubit.suffixPassIcon,
                      controller: passwordController,
                      isPassword: cubit.isPassword,
                      suffixPressed: () {
                        cubit.changePasswordVisibility();
                      },
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please, Enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forget Password?',
                          style: Styles.textStyle16.copyWith(
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ConditionalBuilder(
                      condition: state is! SignInLoadingState,
                      builder: (context) {
                        return LargeButton(
                          text: 'Sign In',
                          onTap: () {
                            if (signInFormKey.currentState!.validate()) {
                              cubit.userSignIn(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                            }
                          },
                        );
                      },
                      fallback: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                    const Spacer(),
                    ThirdParty(
                      text: "Or Sign in with",
                      function: () {
                        cubit.signInWithGoogle();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, top: 15),
                      child: MyCustomRichText(
                        firstText: 'Don\'t have an account?',
                        secondText: 'SIGN UP',
                        onTap: () {
                          navigateTo(const SignUpView());
                        },
                      ),
                    ),
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
