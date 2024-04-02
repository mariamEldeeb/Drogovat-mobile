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

  Widget buildIconContainer({required String logo}){
    return Container(
      height: 38,
      width: 38,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 3,
              blurRadius: 0.5,
            ),
          ]),
      child: Image.asset(logo),
    );
  }
}
