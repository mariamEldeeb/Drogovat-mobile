import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class PatientInitInfoList extends StatelessWidget {
  const PatientInitInfoList({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            '${cubit.displayPatientList[index].opName}',
            style: Styles.textStyle18DarkBlue,
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: const Text(
            'from  07 : 20 am',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: const Text(
            'to  10 : 43 am',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            'Room 11',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            '${cubit.displayPatientList[index].patientStatus}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'Dr. ${cubit.uModel?.name}',
            style: Styles.textStyle18DarkBlue,
          ),
        ),
      ],
    );
  }

  Divider MyDivider() {
    return Divider(
      color: Colors.black.withOpacity(0.2),
      thickness: 2,
    );
  }
}
