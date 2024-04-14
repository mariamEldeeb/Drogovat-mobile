import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/models/vital_model.dart';

class VitalListViewItem extends StatelessWidget {
  const VitalListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 200,
      padding: const EdgeInsets.only(left: 20,right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(
              color: vitals[index].vitalTextColor,
              width: 1,
            )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vitals[index].vitalText,
            style: TextStyle(
              fontSize: 20,
              color: vitals[index].vitalTextColor,
            ),
          ),
          Text(
            vitals[index].vitalValue + ' ' + (vitals[index].unit ?? ''),
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Image.asset(
            vitals[index].icon,
            fit: BoxFit.contain,
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
