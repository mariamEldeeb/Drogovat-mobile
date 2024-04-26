import 'package:drogovat_mobile/core/widgets/drug_image_container.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/output_container.dart';
import 'package:flutter/material.dart';

class PatientDrugInfo extends StatelessWidget {
  const PatientDrugInfo({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> drugDoseTime = [
      'Loading',
      'maintenance',
      'Duration',
      'Full amount',
    ];
    List<String> drugDoseValue = [
      '150 ml',
      '25 ml',
      '15 m',
      '200 ml',
    ];

    return Column(
      children: [
        const DrugImageContainer(
          index: 0,
          width: 194,
          height: 194,
        ),
        const SizedBox(height: 40),
        ListView.separated(
          shrinkWrap: true,
          itemCount: drugDoseTime.length,
          itemBuilder: (context, index){
            return OutputContainer(width: double.infinity, text:
            '${drugDoseTime[index]}                   ${drugDoseValue[index]}');
          },
          separatorBuilder: (context, index){
            return const SizedBox(height: 15);
          },
        ),
      ],
    );
  }
}
