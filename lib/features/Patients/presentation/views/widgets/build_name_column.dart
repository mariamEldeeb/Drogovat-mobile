import 'package:flutter/material.dart';

import '../../../data/models/patient_model.dart';

class BuildNameColumn extends StatelessWidget {
  const BuildNameColumn({super.key, required this.index,});

  final int index;

  @override
  Widget build(BuildContext context) {
    var statusWordColor;
    if (patients[index].status == 'Done') statusWordColor = const Color(0xff106414);
    if (patients[index].status == 'Prepare') statusWordColor = Colors.deepOrange;
    if (patients[index].status == 'Active') statusWordColor = Colors.red;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          patients[index].name,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          patients[index].status,
          style: TextStyle(
            fontSize: 18,
            color: statusWordColor,
          ),
        ),
      ],
    );
  }
}