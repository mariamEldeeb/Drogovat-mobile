import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/widgets/name_header.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/dose_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/time_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/vital_sign_container.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/profiles_view.dart';
import 'package:flutter/material.dart';

class MonitorViewBody extends StatelessWidget {
  const MonitorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NameHeader(
          name: 'Mariam Mohamed abdelaziz Eldeeb',
          onTap: (){
            navigateTo(const ProfilesView());
          },
        ),
        const SizedBox(height: 10),
        const TimeContainer(),
        const SizedBox(height: 15),
        const VitalSignContainer(),
        const SizedBox(height: 15),
        const DoseContainer(),
      ],
    );
  }
}
