import 'package:drogovat_mobile/core/widgets/drug_image_container.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/output_container.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class PatientDrugInfo extends StatelessWidget {
  const PatientDrugInfo({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return Column(
      children: [
        const DrugImageContainer(
          index: 0,
          width: 118,
          height: 118,
        ),
        const SizedBox(height: 40),
        OutputContainer(
          value: '${cubit.displayDrugList[index].drugLoadingDose} ml',
          label: 'Loading',
        ),
        const SizedBox(height: 15),
        OutputContainer(
          value: '${cubit.displayDrugList[index].drugMaintenanceDose} ml',
          label: 'Maintenance',
        ),
        const SizedBox(height: 15),
        OutputContainer(
          value: '${cubit.displayDrugList[index].drugActiveDuration} m',
          label: 'Duration',
        ),
        const SizedBox(height: 15),
        OutputContainer(
          value: '${cubit.displayDrugList[index].drugFullAmount} ml',
          label: 'Full amount',
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
