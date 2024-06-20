import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/output_container.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class PatientPersonalInfo extends StatelessWidget {
  const PatientPersonalInfo({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return Column(
      children: [
        OutputContainer(
          value: '${cubit.displayPatientList[index].height} cm',
          label: 'Height',
        ),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].weight} kg',
          label: 'Weight',
        ),
        const SizedBox(height: 22),
        OutputContainer(
            value: '${cubit.displayPatientList[index].age}', label: 'Age'),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].gender}',
          label: 'Gender',
        ),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].heartState}',
          label: 'Heart State',
        ),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].hypertension}',
          label: 'Hypertension',
        ),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].diabetes}',
          label: 'Diabetes',
        ),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].typeOfOp}',
          label: 'Full / Half',
        ),
        const SizedBox(height: 22),
        OutputContainer(
          value: '${cubit.displayPatientList[index].periodOfOp}',
          label: 'Period of operation',
        ),
      ],
    );
  }
}
