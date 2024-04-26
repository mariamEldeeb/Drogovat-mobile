import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../data/models/vital_model.dart';

class VitalListViewItem extends StatelessWidget {
  const VitalListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 200,
      padding: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: vitals[index].vitalTextColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vitals[index].vitalText,
            style: Styles.textStyle20.copyWith(color: vitals[index].vitalTextColor),
          ),
          Text(
            vitals[index].vitalValue + ' ' + (vitals[index].unit ?? ''),
            style: Styles.textStyle25,
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
