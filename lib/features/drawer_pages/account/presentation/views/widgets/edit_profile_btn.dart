import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 20,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: darkBlueColor),
          ),
          child: const Center(
            child: Text(
              'Edit profile',
              style: TextStyle(
                color: darkBlueColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
