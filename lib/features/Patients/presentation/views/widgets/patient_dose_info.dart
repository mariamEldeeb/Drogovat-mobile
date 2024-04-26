import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/output_container.dart';
import 'package:flutter/material.dart';

class PatientDoseInfo extends StatelessWidget {
  const PatientDoseInfo({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> doseData = [
      '10 ml',
      '10 ml',
      '10 ml',
      '10 ml',
      '10 ml',
      '10 ml',
    ];
    List<String> doseTime = [
      '1:15',
      '1:15',
      '1:15',
      '1:15',
      '1:15',
      '1:15',
    ];

    return Column(
      children: [
        const Text(
          'Doses',
          style: Styles.textStyle25,
        ),
        const SizedBox(height: 40),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) {
            return OutputContainer(
              width: double.infinity,
              text: '${doseData[index]}                            ${doseTime[index]}',
            );
          }, separatorBuilder: (context, index) {
          return const SizedBox(height: 20);
        },),
      ],
    );
  }
}
