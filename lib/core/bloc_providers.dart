import 'package:drogovat_mobile/features/drawer_pages/contact_us/manager/contact_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/Patients/presentation/manager/patients_cubit.dart';
import '../features/drawer_pages/settings/presentation/manager/settings_cubit.dart';
import '../features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import '../features/monitor/presentation/manager/cubit/monitor_cubit.dart';
import '../features/registration/sign_in/manager/sign_in_cubit.dart';
import '../features/registration/sign_up/presentation/manager/sign_up_cubit.dart';

class AppBlocProvider {
  static get allBlocProvider => [
        BlocProvider(
            create: (context) => AppCubit()
              ..getAllPatients()
              ..getUserData()
              ..getAllDrugs()),
        BlocProvider(create: (context) => SignInCubit()),
        BlocProvider(create: (context) => SignUpCubit()),
        BlocProvider(create: (context) => MonitorCubit()),
        BlocProvider(create: (context) => PatientsCubit()),
        BlocProvider(create: (context) => SettingsCubit()),
        BlocProvider(create: (context) => ContactCubit()),
      ];
}
