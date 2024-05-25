import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class BuildProfileIconContainer extends StatelessWidget {
  const BuildProfileIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        color: imageContainerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.person,
        size: 50,
        color: Colors.grey,
      ),
    );
  }
}
