import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuildVitalItem extends StatelessWidget {
  const BuildVitalItem({
    super.key,
    required this.vitalText,
    required this.vitalValue,
    required this.vitalTextColor,
    required this.vitalIcon,
  });

  final String vitalText;
  final String vitalValue;
  final Color vitalTextColor;
  final String vitalIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: vitalTextColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vitalText,
            style: Styles.textStyle20.copyWith(color: vitalTextColor),
          ),
          Text(
            vitalValue,
            style: Styles.textStyle20.copyWith(color: vitalTextColor),
          ),
          Image.asset(
            vitalIcon,
            fit: BoxFit.contain,
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
