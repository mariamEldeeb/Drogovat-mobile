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
      height: 70,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
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
          ),
          SizedBox(width: 5),
          const Text(
            'Now',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
          ),
          SizedBox(width: 5),
          const Text(
            'End',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
          ),
        ],
      ),
    );
  }
}