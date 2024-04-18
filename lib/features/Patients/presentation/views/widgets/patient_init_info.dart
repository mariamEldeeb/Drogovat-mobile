import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/patient_model.dart';
import '../../manager/patients_cubit.dart';
import '../../manager/patients_state.dart';
import 'build_2raf.dart';
import 'build_list_pages.dart';
import 'build_profile_icon_container.dart';

class PatientInitInfo extends StatelessWidget {
  const PatientInitInfo({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PatientsCubit, PatientsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 20),
          child: Column(
            children: [
              const BuildProfileIconContainer(),
              const SizedBox(height: 13),
              Text(
                patients[index].name,
                style: const TextStyle(
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
              const Spacer(),
              const Row(
                children: [
                  Text(
                    'For detailed information',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const BuildListPages(),
            ],
          ),
        );
      },
    );
  }
}
