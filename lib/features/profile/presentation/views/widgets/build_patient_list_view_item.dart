import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/features/profile/data/models/patient_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientListViewItem extends StatelessWidget {
  PatientListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var statusWordColor;

    if (patients[index].status == 'Done') statusWordColor = Colors.black;
    if (patients[index].status == 'Prepare') statusWordColor = Colors.green;
    if (patients[index].status == 'Active') statusWordColor = Colors.red;

    return Container(
      width: 304,
      height: 88,
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 13, right: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          const BoxShadow(
            color: Color(0x6D0A0F22),
            blurRadius: 3,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          buildLeadingContainer(),
          const SizedBox(width: 13),
          buildNameColumn(statusWordColor),
        ],
      ),
    );
  }

  Column buildNameColumn(statusWordColor) {
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

  Container buildLeadingContainer() {
    return Container(
      width: 76,
      height: 76,
      // margin: const EdgeInsets.only(top: 6, bottom: 6, left: 13),
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: SvgPicture.asset(
          personIcon,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
      ),
    );
  }
}
