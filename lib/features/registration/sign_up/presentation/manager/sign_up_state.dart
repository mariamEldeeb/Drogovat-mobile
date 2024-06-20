abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class RegisterUserLoadingState extends SignUpStates {}

class RegisterUserSuccessState extends SignUpStates {}

class RegisterUserErrorState extends SignUpStates {
  final String error;

  RegisterUserErrorState(this.error);
}

class CreateUserSuccessState extends SignUpStates {}

class CreateUserErrorState extends SignUpStates {
  final String error;

  CreateUserErrorState(this.error);
}


class ChangeVisibilityPassIconState extends SignUpStates {}

class ChangeSwitchValueState extends SignUpStates {}
