import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/dose_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/time_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/vital_sign_container.dart';
import 'package:flutter/material.dart';

class MonitorViewBody extends StatelessWidget {
  const MonitorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TimeContainer(),
          VitalSignContainer(),
          DoseContainer(),
        ],
      ),
    );
  }
}
