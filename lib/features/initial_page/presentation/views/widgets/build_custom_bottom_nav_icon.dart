import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavIcon extends StatelessWidget {
  const CustomBottomNavIcon({
    super.key,
    required this.isTapped,
    required this.icon,
    required this.iconTappedColor,
    required this.label,
    required this.onTap,
  });

  final void Function() onTap;
  final bool isTapped;
  final String icon;
  final Color iconTappedColor;
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
                  height: 40,
                  width: 40,
                  colorFilter: ColorFilter.mode(iconTappedColor, BlendMode.srcIn),
                )
              : SvgPicture.asset(
                  icon,
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain,
                ),
          isTapped
              ? Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}