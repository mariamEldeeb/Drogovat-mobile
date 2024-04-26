import 'package:drogovat_mobile/features/registration/sign_in/manager/sign_in_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          default:
            errorMessage = 'Login failed. Please try again';
        }
        emit(SignInErrorState(errorMessage));
      }
    });
  }

  IconData suffixPassIcon = FontAwesomeIcons.eye;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffixPassIcon =
        isPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityPassIconState());
  }
}
