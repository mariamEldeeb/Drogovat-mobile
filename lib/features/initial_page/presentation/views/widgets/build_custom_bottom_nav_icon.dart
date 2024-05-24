import 'package:flutter/material.dart';

class CustomBottomNavIcon extends StatelessWidget {
  const CustomBottomNavIcon({
    super.key,
    required this.isTapped,
    required this.icon,
    required this.onTap,
  });

  final void Function() onTap;
  final bool isTapped;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isTapped
          ? Image.asset(
              icon,
              height: 50,
              width: 50,
              fit: BoxFit.contain,
            )
          : Image.asset(
              icon,
              height: 40,
              width: 40,
              fit: BoxFit.contain,
              color: Colors.grey,
            ),
    );
  }
}
