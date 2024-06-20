import 'package:drogovat_mobile/features/Patients/presentation/manager/patients_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientsCubit extends Cubit<PatientsStates> {
  PatientsCubit() : super(PatientsInitialState());

  static PatientsCubit get(context) => BlocProvider.of(context);
}
