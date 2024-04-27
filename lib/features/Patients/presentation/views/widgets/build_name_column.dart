import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

import '../../../data/models/patient_model.dart';

class BuildNameColumn extends StatelessWidget {
  const BuildNameColumn({super.key, required this.index,});

  final int index;

  @override
  Widget build(BuildContext context) {
    var statusWordColor;
    if (patients[index].status == 'Done') statusWordColor = const Color(0xff106414);
    if (patients[index].status == 'Prepare') statusWordColor = Colors.deepOrange;
    if (patients[index].status == 'Active') statusWordColor = Colors.red;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppCubit.get(context).displayPatientList[index].name,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          AppCubit.get(context).displayPatientList[index].status,
          style: TextStyle(
            fontSize: 18,
            color: statusWordColor,
          ),
        ),
      ],
    );
  }
}
