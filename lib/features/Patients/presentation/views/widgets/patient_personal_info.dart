import 'package:drogovat_mobile/features/Patients/data/models/patient_data_model.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/output_container.dart';
import 'package:flutter/material.dart';

class PatientPersonalInfo extends StatelessWidget {
  const PatientPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: patientData.length,
            itemBuilder: (context, index) {
              return OutputContainer(
                label: patientData[index].data,
                value: patientData[index].value,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 22);
            },
          ),
        ),
      ],
    );
  }
}
