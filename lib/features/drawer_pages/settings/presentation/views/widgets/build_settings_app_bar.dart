import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/widgets/back_icon.dart';

class BuildSettingsAppBar extends StatelessWidget {
  const BuildSettingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Settings',
        style: TextStyle(
          fontSize: 30,
          color: darkBlueColor,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: backIcon(),
      ),
    );
  }
}
