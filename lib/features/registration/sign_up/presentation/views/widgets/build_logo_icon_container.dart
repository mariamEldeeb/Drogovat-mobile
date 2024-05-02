import 'package:flutter/material.dart';

class BuildLogoIconContainer extends StatelessWidget {
  const BuildLogoIconContainer({super.key, required this.logo});

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 45,
      width: 45,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(),
        // shadows: containerShadow(),
      ),
      child: Image.asset(
        logo,
        fit: BoxFit.fill,
      ),
    );
  }
}
