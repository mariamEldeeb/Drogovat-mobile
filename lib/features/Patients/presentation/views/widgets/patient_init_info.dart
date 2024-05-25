import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/patients_cubit.dart';
import '../../manager/patients_state.dart';
import 'build_profile_icon_container.dart';
import 'patient_init_info_list.dart';

class PatientInitInfo extends StatelessWidget {
  const PatientInitInfo({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PatientsCubit, PatientsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Column(
          children: [
            const BuildProfileIconContainer(),
            const SizedBox(height: 13),
            Text(
              '${cubit.displayPatientList[index].patientName}',
              style: Styles.textStyle20.copyWith(color: darkBlueColor),
            ),
            const SizedBox(height: 7),
            Text(
              '${cubit.displayPatientList[index].pId}',
              style: Styles.textStyle20.copyWith(
                color: darkBlueColor.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 35),
            PatientInitInfoList(index: index),
          ],
        );
      },
    );
  }
}
