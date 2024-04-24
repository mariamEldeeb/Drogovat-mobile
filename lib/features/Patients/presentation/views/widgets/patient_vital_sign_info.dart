import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../monitor/data/models/vital_model.dart';
import '../../../../monitor/presentation/views/widgets/vital_list_view_item.dart';

class PatientVitalSignInfo extends StatelessWidget {
  const PatientVitalSignInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Vital Signs',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: vitals.length,
            itemBuilder: (context, index) {
              return VitalListViewItem(index: index);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 17);
            },
          ),
        )
      ],
    );
  }
}
