import 'package:drogovat_mobile/features/profile/presentation/manager/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views/widgets/patient_dose_info.dart';
import '../views/widgets/patient_drug_info.dart';
import '../views/widgets/patient_init_info.dart';
import '../views/widgets/patient_personal_info.dart';
import '../views/widgets/patient_vital_sign_info.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());

  static ProfileCubit get(context) => BlocProvider.of(context);

  List<Widget> patientInfoPages = [
    // const PatientInitInfo(),
    const PatientPersonalInfo(),
    const PatientVitalSignInfo(),
    const PatientDoseInfo(),
    const PatientDrugInfo()
  ];

  int selectedIndex = 0;
  void changeIndex(int currentIndex) {
    selectedIndex = currentIndex;
    print(selectedIndex);
    emit(ChangePageIndexState());
  }

  int selectedBottomPageIndex = -1;
  void changeBottomPageIndex(int currentIndex) {
    selectedBottomPageIndex = currentIndex;
    print(selectedBottomPageIndex);
    emit(ChangeBottomPageIndexState());
  }
}
