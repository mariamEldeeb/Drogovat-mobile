import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../sign_up/presentation/views/widgets/build_logo_icon_container.dart';

class ThirdParty extends StatelessWidget {
  const ThirdParty(
      {super.key,
      required this.text,
      this.googleOnTap,
      this.microsoftOnTap,
      this.appleOnTap});

  final String text;
  final void Function()? googleOnTap;
  final void Function()? microsoftOnTap;
  final void Function()? appleOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: googleOnTap,
          child: const BuildLogoIconContainer(
            logo: googleLogo,
          ),
        ),
      ],
    );
  }
}
