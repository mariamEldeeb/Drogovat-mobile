import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/custom_btn.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/sign_in_view.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/another_sign_up_way.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_cubit.dart';
import 'package:drogovat_mobile/features/registration/sign_up/manager/sign_up_state.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            RegisHeader(
              title: 'Sign Up',
            ),
            // SizedBox(height: 15),
            CustomTextField(
              hintText: 'Full Name',
              prefixIcon: FontAwesomeIcons.user,
              isPassword: false,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Phone',
              textInputType: TextInputType.number,
              prefixIcon: FontAwesomeIcons.phone,
              isPassword: false,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              prefixIcon: FontAwesomeIcons.envelope,
              isPassword: false,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Password',
              prefixIcon: FontAwesomeIcons.userClock,
              suffixIcon: cubit.suffixPassIcon,
              isPassword: cubit.isPassword,
              suffixPressed: (){
                cubit.changePasswordVisibility();
              },
              validate: (value) {
                if (value!.length < 8) {
                  return 'Password must be more than 8';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Confirm Password',
              prefixIcon: FontAwesomeIcons.checkDouble,
              suffixIcon: cubit.suffixConfirmPassIcon,
              isPassword: cubit.isConfirmPassword,
              suffixPressed: (){
                cubit.changeConfirmPasswordVisibility();
              },
            ),
            SizedBox(height: 20),
            Text(
              'I accept all the policy & terms',
              style: TextStyle(
                color: hintTextColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            LargeButton(text: 'Sign Up'),
            SizedBox(height: 15),
            AnotherWayToSignUp(),
            SizedBox(height: 10),
            MyCustomRichText(
              firstText: 'Already have an account?',
              secondText: 'SIGN IN',
              onTap: () {
                navigateTo(() => SignInView());
              },
            )
          ],
        );
      },
    );
  }
}
