import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/patients_cubit.dart';
import '../../manager/patients_state.dart';
import 'build_2raf.dart';
import 'build_profile_icon_container.dart';

class PatientInitInfo extends StatelessWidget {
  const PatientInitInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PatientsCubit, PatientsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            const BuildProfileIconContainer(),
            const SizedBox(height: 13),
            const Text(
              'Mariam Mohamed Eldeeb',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              '00012',
              style: TextStyle(
                fontSize: 20,
                color: darkBlueColor.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 35),
            const Build2Araf(),
          ],
        );
      },
    );
  }
}
