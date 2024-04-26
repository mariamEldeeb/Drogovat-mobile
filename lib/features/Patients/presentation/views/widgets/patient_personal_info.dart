import 'package:drogovat_mobile/core/utils/styles.dart';
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
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 115,
                    child: Text(
                      patientData[index].data,
                      style: Styles.textStyle18DarkBlue,
                    ),
                  ),
                  OutputContainer(text: patientData[index].value,width: 204,),
                ],
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
