import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drogovat_mobile/features/registration/data/models/user_model.dart';
import 'package:drogovat_mobile/features/registration/sign_up/presentation/manager/sign_up_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  void registerUser({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) {
    emit(RegisterUserLoadingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      createUser(
        name: name,
        email: email,
        userId: value.user!.uid,
        phone: phone,
      );
      emit(RegisterUserSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(RegisterUserErrorState(error.toString()));
    });
  }

  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleRegister() async {
    emit(RegisterUserLoadingState());
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
      createUser(
        name: value.user?.displayName ?? '',
        email: value.user?.email ?? '',
        userId: value.user?.uid ?? '',
        phone: value.user?.phoneNumber ?? '',
      );
      emit(RegisterUserSuccessState());
    }).catchError((e) {
      print(e.toString());
      emit(RegisterUserErrorState(e.toString()));
    });
  }

  void createUser({
    required String name,
    required String email,
    required String userId,
    required String phone,
  }) {
    UserModel model = UserModel(
      name: name,
      email: email,
      phone: phone,
      userId: userId,
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .set(model.toMap())
        .then((value) {
      emit(CreateUserSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CreateUserErrorState(error.toString()));
    });
  }

  IconData suffixPassIcon = FontAwesomeIcons.eye;
  IconData suffixConfirmPassIcon = FontAwesomeIcons.eye;
  bool isPassword = true;
  bool isConfirmPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffixPassIcon =
        isPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityPassIconState());
  }

  void changeConfirmPasswordVisibility() {
    isConfirmPassword = !isConfirmPassword;
    suffixConfirmPassIcon =
        isConfirmPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityPassIconState());
  }

  bool isSwitchOn = false;

  void changeSwitchValue(value) {
    isSwitchOn = value;
    emit(ChangeSwitchValueState());
  }
}
