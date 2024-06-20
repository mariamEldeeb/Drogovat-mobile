import 'package:drogovat_mobile/features/drawer_pages/settings/presentation/manager/settings_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsCubit extends Cubit<SettingsStates> {
  SettingsCubit() : super(SettingsInitialState());

  static SettingsCubit get(context) => BlocProvider.of(context);

  IconData suffixOldPassIcon = FontAwesomeIcons.eye;
  IconData suffixNewPassIcon = FontAwesomeIcons.eye;
  IconData suffixConfirmNewPassIcon = FontAwesomeIcons.eye;

  bool isOldPassword = true;
  bool isNewPassword = true;
  bool isConfirmNewPassword = true;

  void changeOldPasswordVisibility() {
    isOldPassword = !isOldPassword;
    suffixOldPassIcon =
        isOldPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityOldPassIconState());
  }

  void changeNewPasswordVisibility() {
    isNewPassword = !isNewPassword;
    suffixNewPassIcon =
        isNewPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityNewPassIconState());
  }

  void changeConfirmNewPasswordVisibility() {
    isConfirmNewPassword = !isConfirmNewPassword;
    suffixConfirmNewPassIcon =
        isConfirmNewPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash;
    emit(ChangeVisibilityConfirmNewPassIconState());
  }

  bool isNotifySwitchOn = false;
  void changeNotifySwitchValue(value) {
    isNotifySwitchOn = value;
    print(value);
    emit(ChangeNotifySwitchValueState());
  }

  bool isVibrateSwitchOn = false;
  void changeVibrateSwitchValue(value) {
    isVibrateSwitchOn = value;
    print(value);
    emit(ChangeVibrateSwitchValueState());
  }
}
