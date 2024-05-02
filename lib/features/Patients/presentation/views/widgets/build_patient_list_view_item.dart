import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:flutter/material.dart';

import '../patient_profile_view.dart';
import 'build_leading_container.dart';
import 'build_name_column.dart';

class PatientListViewItem extends StatelessWidget {
  PatientListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        navigateTo(const PatientProfileView());
      },
      child: Container(
        width: 304,
        height: 88,
        padding: const EdgeInsets.only(top: 6, bottom: 6, left: 13, right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const BuildLeadingContainer(),
            const SizedBox(width: 13),
            BuildNameColumn(index: index),
          ],
        ),
      ),
    );
  }
}
