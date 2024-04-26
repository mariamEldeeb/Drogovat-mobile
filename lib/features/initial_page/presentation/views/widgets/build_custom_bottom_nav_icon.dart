import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavIcon extends StatelessWidget {
  const CustomBottomNavIcon({
    super.key,
    required this.isTapped,
    required this.icon,
    required this.iconOffColor,
    required this.label,
    required this.onTap,
  });

  final void Function() onTap;
  final bool isTapped;
  final String icon;
  final Color iconOffColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isTapped
              ? SvgPicture.asset(
                  icon,
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                )
              : SvgPicture.asset(
                  icon,
                  height: 35,
                  width: 35,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(iconOffColor, BlendMode.srcIn),
                ),
          isTapped
              ? const SizedBox(height: 5)
              : Text(
            label,
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
