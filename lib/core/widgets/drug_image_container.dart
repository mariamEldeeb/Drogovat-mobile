import 'package:flutter/material.dart';

import '../../features/drugs/data/models/drug_model.dart';

class DrugImageContainer extends StatelessWidget {
  const DrugImageContainer({
    super.key,
    required this.index, required this.width, required this.height,
  });

  final int index;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Color(0xffF2F1F1),
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        drugs[index].image,
      ),
    );
  }
}
