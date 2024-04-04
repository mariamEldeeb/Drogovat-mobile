import 'package:flutter/material.dart';

import '../../../../../core/utils/date_time.dart';
import 'digital_number_container.dart';

class NextPotionTimeContainer extends StatelessWidget {
  const NextPotionTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 40,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffE5E0E0),
      ),
      child: DigitalNumberContainer(
        h: hour,
        m: minute,
        timeColor: Color(0xff106414),
      ),
    );
  }
}
