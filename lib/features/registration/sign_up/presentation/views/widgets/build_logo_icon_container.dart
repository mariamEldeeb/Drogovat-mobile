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
