import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';

class BuildProfileIconContainer extends StatelessWidget {
  const BuildProfileIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: containerShadow()),
      child: Transform.scale(
        scale: 35 / 100,
        child: SvgPicture.asset(
          width: 15,
          height: 15,
          fit: BoxFit.contain,
          personIcon,
          // color: Colors.black,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
      ),
    );
  }
}
