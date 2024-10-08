import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.width,
    required this.isIcon,
    this.onTap,
    this.icon,
  });

  final String text;
  final void Function()? onTap;
  final bool isIcon;
  final IconData? icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: darkBlueColor,
          ),
        ),
        child: isIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    color: darkBlueColor,
                  ),
                  Text(
                    text,
                    style: Styles.textStyle20.copyWith(color: darkBlueColor),
                  ),
                ],
              )
            : Center(
                child: Text(
                  text,
                  style: Styles.textStyle20.copyWith(color: darkBlueColor),
                ),
              ),
      ),
    );
  }
}
