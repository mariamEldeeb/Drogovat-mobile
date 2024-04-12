import 'package:flutter/material.dart';

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

  Widget buildIconContainer({required String logo}) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 45,
      width: 45,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x6D0A0F22),
            blurRadius: 3,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Image.asset(
        logo,
        fit: BoxFit.fill,
      ),
    );
  }
}