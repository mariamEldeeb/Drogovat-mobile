import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/build_dose_history.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/build_next_dose_amount_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/build_next_potion_container.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/date_time.dart';
import 'digital_number_container.dart';

class DoseContainer extends StatelessWidget {
  const DoseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(left: 10, right: 15, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Next potion at:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              NextPotionTimeContainer(),
              SizedBox(height: 13),
              Text(
                'Amount of dose:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              NextDoseAmount(),
            ],
          ),
          SizedBox(
            width: 175,
            child: BuildDoseHistory(),
          ),
        ],
      ),
    );
  }
}
