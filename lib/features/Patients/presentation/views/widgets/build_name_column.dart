import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class BuildNameColumn extends StatelessWidget {
  const BuildNameColumn({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    var statusWordColor;
    var cubit = AppCubit.get(context);
    if (cubit.displayPatientList[index].patientStatus == 'Done')
      statusWordColor = const Color(0xff106414);
    if (cubit.displayPatientList[index].patientStatus == 'Prepare')
      statusWordColor = Colors.deepOrange;
    if (cubit.displayPatientList[index].patientStatus == 'Active')
      statusWordColor = Colors.red;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppCubit.get(context).displayPatientList[index].patientName ?? '',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppCubit.get(context).displayPatientList[index].patientStatus ??
                    '',
                style: TextStyle(
                  fontSize: 18,
                  color: statusWordColor,
                ),
              ),
              Text(
                AppCubit.get(context).displayPatientList[index].opName ?? '',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
