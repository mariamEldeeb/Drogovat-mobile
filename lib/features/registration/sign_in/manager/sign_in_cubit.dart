import 'dart:async';

import 'package:drogovat_mobile/core/functions/show_custom_dialog.dart';
import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_state.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/pass_reset_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInInitialState());

  static SignInCubit get(context) => BlocProvider.of(context);

  void userSignIn({
    required String email,
    required String password,
  }) {
    emit(SignInLoadingState());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      emit(SignInSuccessState(uId: value.user!.uid));
    }).catchError((error) {
      print(error.toString());
      if (error is FirebaseAuthException) {
        String errorMessage = '';
        switch (error.code) {
          case 'user-not-found':
            errorMessage = 'No user found with this email';
            print(errorMessage);
            break;
          case 'wrong-password':
            errorMessage = 'You entered wrong password';
            print(errorMessage);
            break;
          case 'invalid-email':
            errorMessage = 'Please, Enter a valid email address';
            break;
          case 'email-already-in-use':
            errorMessage =
                'The email address is already in use by another account';
            break;
          default:
            errorMessage = 'Login failed. Please try again';
        }
        emit(SignInErrorState(errorMessage));
      }
    });
  }

  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future signInWithGoogle() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
      emit(SignInSuccessState(uId: value.user!.uid));
    }).catchError((e) {
      print(e.toString());
      emit(SignInErrorState(e.toString()));
    });
  }

  Future passwordReset(String email, BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.trim());
      showCustomDialog(
        context: context,
        barrierDismissible: true,
        child: const PassResetDialog(
          dialogText: 'Password reset link has been sent.\nCheck your email',
        ),
      );
      emit(PassResetSuccessState());
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      showCustomDialog(
        barrierDismissible: true,
        context: context,
        child: PassResetDialog(dialogText: e.message.toString()),
      );
      emit(PassResetErrorState(e.toString()));
    }
  }

///////////////////////////////////////////////////////////
  IconData suffixPassIcon = FontAwesomeIcons.eye;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffixPassIcon =
        isPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityPassIconState());
  }

  bool isSwitchOn = false;

  void changeSwitchValue(value) {
    isSwitchOn = value;
    emit(ChangeSwitchValueState());
  }
}
