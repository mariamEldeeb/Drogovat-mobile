import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drogovat_mobile/features/Patients/data/models/patient_model.dart';
import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:drogovat_mobile/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat_mobile/features/registration/data/models/user_model.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

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
      emit(GetUserDataErrorState());
    });
  }

  File? profileImage;
  var picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(ProfileImagePickedSuccessState());
    } else {
      print('No image selected');
      emit(ProfileImagePickedErrorState());
    }
  }

  void uploadProfileImage({
    required String name,
    required String phone,
    required String email,
  }) {
    emit(UserUpdateLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(profileImage?.path ?? '').pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        updateUser(
          name: name,
          phone: phone,
          image: value,
          email: email,
        );
      }).catchError((error) {
        print(error.toString());
        emit(UploadProfileImageErrorState());
      });
    }).catchError((error) {
      print(error.toString());
      emit(UploadProfileImageErrorState());
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
      image: image ?? uModel!.image,
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

  List<DrugModel> drugs = [];
  void getAllDrugs() {
    if (drugs.isEmpty) {
      FirebaseFirestore.instance.collection(drugCollection).get().then((value) {
        value.docs.forEach((element) {
          drugs.add(DrugModel.fromJson(element.data()));
        });
        emit(GetAllDrugsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetAllDrugsErrorState(error.toString()));
      });
    }
  }

  // update drug search List
  List<DrugModel> displayDrugList = [];
  void updateDrugList(String value) {
    displayDrugList = drugs
        .where((element) =>
            element.drugName!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(UpdateDrugListState());
  }

  List<PatientModel> patients = [];
  void getAllPatients() {
    if (patients.isEmpty) {
      FirebaseFirestore.instance
          .collection(patientsCollection)
          .get()
          .then((value) {
        value.docs.forEach((element) {
          patients.add(PatientModel.fromJson(element.data()));
        });
        emit(GetAllPatientsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetAllPatientsErrorState(error.toString()));
      });
    }
  }

  // update patient search List
  List<PatientModel> displayPatientList = [];
  void updatePatientList(String value) {
    displayPatientList = patients
        .where((element) =>
            element.patientName!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(UpdatePatientListState());
  }
}
