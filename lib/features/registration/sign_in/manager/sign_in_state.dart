abstract class SignInStates {}

class SignInInitialState extends SignInStates {}

class ChangeVisibilityPassIconState extends SignInStates {}

class SignInLoadingState extends SignInStates {}

class SignInSuccessState extends SignInStates {
  final String uId;

  SignInSuccessState({required this.uId});
}

class SignInErrorState extends SignInStates {
  final String error;

  SignInErrorState(this.error);
}
