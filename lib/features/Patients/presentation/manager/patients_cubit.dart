import 'package:drogovat_mobile/features/Patients/presentation/manager/patients_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views/widgets/patient_dose_info.dart';
import '../views/widgets/patient_drug_info.dart';
import '../views/widgets/patient_personal_info.dart';
import '../views/widgets/patient_vital_sign_info.dart';

class PatientsCubit extends Cubit<PatientsStates> {
  PatientsCubit() : super(PatientsInitialState());

  static PatientsCubit get(context) => BlocProvider.of(context);

  List<Widget> patientInfoPages = [
    const PatientPersonalInfo(),
    const PatientVitalSignInfo(),
    const PatientDoseInfo(),
    const PatientDrugInfo()
  ];


  int selectedBottomPageIndex = 0;
  void changeBottomPageIndex(int currentIndex) {
    selectedBottomPageIndex = currentIndex;
    print(selectedBottomPageIndex);
    emit(ChangeBottomPageIndexState());
  }
}
