abstract class AppStates {}

class AppInitState extends AppStates {}

class ChangeIndexState extends AppStates {}

class UpdatePatientListState extends AppStates {}

class UpdateDrugListState extends AppStates {}

class GetUserDataLoadingState extends AppStates {}

class GetUserDataSuccessState extends AppStates {}

class GetUserDataErrorState extends AppStates {
  final String errorMessage;

  GetUserDataErrorState(this.errorMessage);
}

class GetPatientDataLoadingState extends AppStates {}

class GetPatientDataSuccessState extends AppStates {}

class GetPatientDataErrorState extends AppStates {
  final String errorMessage;

  GetPatientDataErrorState(this.errorMessage);
}

class ProfileImagePickedSuccessState extends AppStates {}

class ProfileImagePickedErrorState extends AppStates {}

class UserUpdateLoadingState extends AppStates {}

class UploadProfileImageErrorState extends AppStates {}

class UserUpdateErrorState extends AppStates {}

class GetAllDrugsSuccessState extends AppStates {}

class GetAllDrugsErrorState extends AppStates {
  final String errorMessage;

  GetAllDrugsErrorState(this.errorMessage);
}

class GetAllPatientsSuccessState extends AppStates {}

class GetAllPatientsErrorState extends AppStates {
  final String errorMessage;

  GetAllPatientsErrorState(this.errorMessage);
}
