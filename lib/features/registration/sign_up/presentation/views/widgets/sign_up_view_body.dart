import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/functions/show_snackbar.dart';
import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/sign_in_view.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/another_sign_up_way.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_state.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_rich_text.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_switch.dart';
import 'package:drogovat_mobile/features/registration/widgets/large_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/build_header.dart';
import '../../../../widgets/custom_text_field.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = SignUpCubit.get(context);
    var signUpFormKey = GlobalKey<FormState>();

    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (context, state) {
        if (state is CreateUserSuccessState) {
          navigateOffTo(const SignInView());
        } else if (state is CreateUserErrorState) {
          showSnackBar(
            title: 'Error',
            text: state.error,
          );
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const RegisHeader(title: 'Sign Up'),
            const SizedBox(height: 14),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: nameController,
                        hintText: 'Full Name',
                        prefixIcon: personIcon,
                        isPassword: false,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please, Enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: phoneController,
                        hintText: 'Phone',
                        textInputType: TextInputType.number,
                        prefixIcon: phoneIcon,
                        isPassword: false,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please, Enter your phone number';
                          } else if (value.length > 11 || value.length < 11) {
                            return 'phone number must be 11 numbers';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: emailController,
                        hintText: 'Email',
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: atIcon,
                        isPassword: false,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please, Enter your email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: passController,
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
                          } else if (value.isEmpty) {
                            return 'Please, Enter a password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: confirmPassController,
                        hintText: 'Confirm Password',
                        prefixIcon: lockCheckIcon,
                        suffixIcon: cubit.suffixConfirmPassIcon,
                        isPassword: cubit.isConfirmPassword,
                        suffixPressed: () {
                          cubit.changeConfirmPasswordVisibility();
                        },
                        validate: (value) {
                          if (value != passController.text) {
                            return 'Password dosen\'t match';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const CustomSwitch(
                        switchLabel: 'I accept all the policy & terms',
                      ),
                      const SizedBox(height: 20),
                      ConditionalBuilder(
                        condition: state is! RegisterUserLoadingState,
                        builder: (context) {
                          return LargeButton(
                            text: 'Sign Up',
                            onTap: () {
                              if (signUpFormKey.currentState!.validate() &&
                                  cubit.isSwitchOn == true) {
                                cubit.registerUser(
                                  name: nameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                  password: passController.text,
                                );
                              } else if (cubit.isSwitchOn == false) {
                                showSnackBar(
                                  title: 'Notice',
                                  text:
                                      'You need to accept the policy and terms',
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
                      const SizedBox(height: 25),
                      const ThirdParty(text: 'Or sign up with'),
                      const SizedBox(height: 15),
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
            ),
          ],
        );
      },
    );
  }
}
