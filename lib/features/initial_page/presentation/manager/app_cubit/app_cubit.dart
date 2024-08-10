import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drogovat_mobile/features/Patients/data/models/patient_model.dart';
import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:drogovat_mobile/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat_mobile/features/registration/data/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../Patients/presentation/views/patients_view.dart';
import 'app_status.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;
  void changeIndex(int currentIndex) {
    selectedIndex = currentIndex;
    emit(ChangeIndexState());
  }

  List<Widget> pages = [
    const PatientsView(),
    const DrugsView(),
  ];
///////////////////////////////////////////////////////////////
  UserModel? uModel;

  void getUserData() {
    emit(GetUserDataLoadingState());
    FirebaseFirestore.instance
        .collection(userCollection)
        .doc(uId)
        .get()
        .then((value) {
      uModel = UserModel.fromJson(value.data());
      emit(GetUserDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetUserDataErrorState(error.toString()));
    });
  }

  void updateUser({
    required String name,
    required String phone,
    required String email,
    String? image,
  }) {
    emit(UserUpdateLoadingState());
    UserModel model = UserModel(
      name: name,
      phone: phone,
      email: email,
    );

    FirebaseFirestore.instance
        .collection(userCollection)
        .doc(uId)
        .update(model.toMap())
        .then((value) {
      getUserData();
    }).catchError((error) {
      print(error.toString());
      emit(UserUpdateErrorState());
    });
  }

///////////////////////////////////////////////////////////////
  List<DrugModel> drugs = [];
  List<DrugModel> displayDrugList = [];

  void getAllDrugs() {
    if (drugs.isEmpty) {
      FirebaseFirestore.instance.collection(drugCollection).get().then((value) {
        value.docs.forEach((element) {
          drugs.add(DrugModel.fromJson(element.data()));
        });
        displayDrugList = List.from(drugs);
        emit(GetAllDrugsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetAllDrugsErrorState(error.toString()));
      });
    }
  }

  // update drug search List
  void updateDrugList(String value) {
    if (value.isEmpty) {
      displayDrugList = List.from(drugs);
    } else {
      displayDrugList = drugs.where((element) {
        return element.drugName!.toLowerCase().contains(value.toLowerCase());
      }).toList();
    }
    emit(UpdateDrugListState());
  }

///////////////////////////////////////////////////////////////
  List<PatientModel> patients = [];
  List<PatientModel> displayPatientList = [];
  PatientModel? patientData;

  // void getPatientData(){
  //   emit(GetPatientDataLoadingState());
  //   FirebaseFirestore.instance
  //       .collection(patientsCollection)
  //       .doc()
  //       .get()
  //       .then((value) {
  //     patientData = PatientModel.fromJson(value.data()!);
  //     emit(GetPatientDataSuccessState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(GetPatientDataErrorState());
  //   });
  // }

  void getAllPatients() {
    if (patients.isEmpty) {
      FirebaseFirestore.instance
          .collection(patientsCollection)
          .get()
          .then((value) {
        value.docs.forEach((element) {
          patients.add(PatientModel.fromJson(element.data()));
        });
        displayPatientList = List.from(patients);
        emit(GetAllPatientsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetAllPatientsErrorState(error.toString()));
      });
    }
  }

  // update patient search List
  void updatePatientList(String value) {
    if (value.isEmpty) {
      displayPatientList = List.from(patients);
    } else {
      displayPatientList = patients.where((element) {
        return element.patientName!.toLowerCase().contains(value.toLowerCase());
      }).toList();
    }
    emit(UpdatePatientListState());
  }
}
