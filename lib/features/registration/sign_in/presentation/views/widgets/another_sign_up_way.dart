import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/assets.dart';

class AnotherWayToSignUp extends StatelessWidget {
  const AnotherWayToSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 215,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconContainer(logo: googleLogo),
          buildIconContainer(logo: microsoftLogo),
          buildIconContainer(logo: appleLogo),
        ],
      ),
    );
  }

  Widget buildIconContainer({required String logo}){
    return Container(
      height: 40,
      width: 40,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: OvalBorder(),
      ),
      child: SvgPicture.asset(logo),
    );
  }
}
