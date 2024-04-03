import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/name_header.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/time_container.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/vital_sign_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MonitorViewBody extends StatelessWidget {
  const MonitorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NameHeader(name: 'Mariam Mohamed abdelaziz Eldeeb'),
        SizedBox(height: 10,),
        TimeContainer(),
        SizedBox(height: 20,),
        VitalSignContainer(),
      ],
    );
  }
}
