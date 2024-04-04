import 'package:flutter/material.dart';

import '../../../../../core/digital_number/digital_font.dart';
import '../../../../../core/utils/colors.dart';

class DigitalNumWithBG extends StatelessWidget {
  const DigitalNumWithBG({
    super.key, required this.value, required this.color,
  });

  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          DigitalNumber(
            value: 8,
            height: 28,
            color:lightDigitalNumColor,
          ),
          DigitalNumber(
            value: value,
            height: 28,
            color: color,
          ),
        ]
    );
  }
}