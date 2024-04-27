import 'package:drogovat_mobile/features/Patients/data/models/patient_model.dart';
import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:drogovat_mobile/features/drugs/presentation/views/drugs_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Patients/presentation/views/patients_view.dart';
import 'app_status.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = [
    const PatientsView(),
    const DrugsView(),
  ];

  int selectedIndex = 0;
  void changeIndex(int currentIndex){
    selectedIndex = currentIndex;
    print(selectedIndex);
    emit(ChangeIndexState());
  }

  // update patient search List
  List<PatientModel> displayPatientList = List.from(patients);
  void updatePatientList(String value) {
    displayPatientList = patients
        .where((element) =>
        element.name.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(UpdatePatientListState());
  }

  // update drug search List
  List<DrugModel> displayDrugList = List.from(drugs);
  void updateDrugList(String value) {
    displayDrugList = drugs
        .where((element) =>
        element.name.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(UpdateDrugListState());
  }
}