import 'package:flutter/material.dart';

import '../../../../../core/utils/date_time.dart';
import 'digital_number_container.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            const BoxShadow(
              color: Color(0x6D0A0F22),
              blurRadius: 3,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Start',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
            timeColor: Colors.black,
          ),
          const SizedBox(width: 5),
          const Text(
            'Now',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
            timeColor: Colors.green,
          ),
          const SizedBox(width: 5),
          const Text(
            'End',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
            timeColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
