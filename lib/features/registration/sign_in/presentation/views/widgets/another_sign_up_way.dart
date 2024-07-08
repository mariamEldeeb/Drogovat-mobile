import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../sign_up/presentation/views/widgets/build_logo_icon_container.dart';

class ThirdParty extends StatelessWidget {
  const ThirdParty({
    super.key,
    required this.text,
    required this.function,
  });

  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: function,
          child: const BuildLogoIconContainer(
            logo: googleLogo,
          ),
        ),
      ],
    );
  }
}
