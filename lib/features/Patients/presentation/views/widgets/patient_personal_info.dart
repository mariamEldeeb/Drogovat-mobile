import 'package:flutter/material.dart';

class PatientPersonalInfo extends StatelessWidget {
  const PatientPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Text(
            'Patient Information',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      );
  }
}
