import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/build_dose_history.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/build_next_dose_amount_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/build_next_potion_container.dart';
import 'package:flutter/material.dart';

class DoseContainer extends StatelessWidget {
  const DoseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.5,
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        // boxShadow: containerShadow(),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
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
