import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'build_vital_item.dart';

class PatientVitalSignInfo extends StatelessWidget {
  const PatientVitalSignInfo({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return Column(
      children: [
        BuildVitalItem(
          vitalText: 'HR',
          vitalTextColor: const Color(0xff630101),
          vitalValue: '${cubit.patients[index].heartRate}',
          vitalIcon: heartIcon,
        ),
        const SizedBox(height: 10),
        BuildVitalItem(
          vitalText: 'BP',
          vitalTextColor: const Color(0xff964003),
          vitalValue: '${cubit.patients[index].bloodPressure}',
          vitalIcon: BPIcon,
        ),
        const SizedBox(height: 10),
        BuildVitalItem(
          vitalText: 'RR',
          vitalTextColor: const Color(0xff7B6902),
          vitalValue: '${cubit.patients[index].rasRate}',
          vitalIcon: RRIcon,
        ),
        const SizedBox(height: 10),
        BuildVitalItem(
          vitalText: 'SpO2',
          vitalTextColor: const Color(0xff1C7406),
          vitalValue: '${cubit.patients[index].oxSaturation} %',
          vitalIcon: OSIcon,
        ),
        const SizedBox(height: 10),
        BuildVitalItem(
          vitalText: 'EtCO2',
          vitalTextColor: const Color(0xff028585),
          vitalValue: '${cubit.patients[index].endTidalCarbon}',
          vitalIcon: CO2Icon,
        ),
        const SizedBox(height: 10),
        BuildVitalItem(
          vitalText: 'Temp',
          vitalTextColor: const Color(0xff06085D),
          vitalValue: '${cubit.patients[index].temp} ℃',
          vitalIcon: TIcon,
        ),
        const SizedBox(height: 10),
        BuildVitalItem(
          vitalText: 'ECG',
          vitalTextColor: const Color(0xff3C0866),
          vitalValue: '${cubit.patients[index].electrocardiogram}',
          vitalIcon: electrocardiogramIcon,
        ),
      ],
    );
  }
}
