import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/patients_view.dart';
import 'package:drogovat_mobile/features/monitor/presentation/manager/cubit/monitor_cubit.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/monitor_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/utils/routes.dart';
import 'features/Patients/presentation/manager/patients_cubit.dart';
import 'features/Patients/presentation/views/patient_profile_view.dart';
import 'features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'features/initial_page/presentation/views/initial_view.dart';
import 'features/registration/sign_in/manager/sign_in_cubit.dart';
import 'features/registration/sign_up/manager/sign_up_cubit.dart';
import 'features/registration/sign_up/presentation/views/sign_up_view.dart';
import 'features/splash/presentation/views/splash_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => SignInCubit()),
        BlocProvider(create: (context) => SignUpCubit()),
        BlocProvider(create: (context) => MonitorCubit()),
        BlocProvider(create: (context) => PatientsCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Drogovat',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: darkBlueColor).copyWith(background: backgroundColor),
          useMaterial3: false,
          fontFamily: 'Imprima',
        ),
        initialRoute: '/',
        getPages: pages,
        home: const SignUpView(),
      ),
    );
  }
}