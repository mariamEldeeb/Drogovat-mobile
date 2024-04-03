import 'package:flutter/material.dart';

import '../../../../../core/digital_number/digital_font.dart';
import 'digital_num_with_bg.dart';

class DigitalNumberContainer extends StatelessWidget {
  const DigitalNumberContainer({super.key, required this.h, required this.m});

  final int h;
  final int m;

  @override
  Widget build(BuildContext context) {
    final hours = createNumberTime(h);
    final minutes = createNumberTime(m);

    return SizedBox(
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...hours,
          DigitalColon(height: 30, color: Colors.black,),
          ...minutes,
        ],
      ),
    );
  }

  List<DigitalNumWithBG> createNumberTime(int numTime){
    final parsedNumTime = numTime % 60;
    final bool isNumberTwoDigits = parsedNumTime.toString().length == 2;
    final int firstDigit = isNumberTwoDigits ? int.parse(parsedNumTime.toString()[0]) : 0;
    final int secondDigit = isNumberTwoDigits ? int.parse(parsedNumTime.toString()[1]) : parsedNumTime;

    return [
      DigitalNumWithBG(
        value: firstDigit,
      ),
      DigitalNumWithBG(
        value: secondDigit,
      ),
    ];
  }
}