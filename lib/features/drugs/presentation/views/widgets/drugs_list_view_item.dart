import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:flutter/material.dart';

class DrugsListViewItem extends StatelessWidget {
  const DrugsListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 197,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDrugImageContainer(),
          buildDrugName(),
        ],
      ),
    );
  }

  Text buildDrugName() {
    return Text(
          drugs[index].name,
          style: const TextStyle(
            color: drugNameColor,
            fontSize: 20,
          ),
        );
  }

  Container buildDrugImageContainer() {
    return Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            color: Color(0xffBEBEBE),
            shape: BoxShape.circle,
          ),
          child: Transform.scale(
            scale: 85/100,
            child: Image.asset(
              drugs[index].image,
            ),
          ),
        );
  }
}
