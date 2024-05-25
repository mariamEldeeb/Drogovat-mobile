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
    var statusConColor;
    var cubit = AppCubit.get(context);
    if (cubit.displayPatientList[index].patientStatus == 'Done')
      statusConColor = const Color(0xff2145CF);
    if (cubit.displayPatientList[index].patientStatus == 'Prepare')
      statusConColor = const Color(0xff949700);
    if (cubit.displayPatientList[index].patientStatus == 'Active')
      statusConColor = const Color(0xffB60000);

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${cubit.displayPatientList[index].patientName}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${cubit.displayPatientList[index].opName}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Container(
                width: 71,
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: statusConColor,
                ),
                child: Center(
                  child: Text(
                    '${cubit.displayPatientList[index].patientStatus}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
