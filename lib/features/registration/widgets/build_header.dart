import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/assets.dart';

class RegisHeader extends StatelessWidget {
  const RegisHeader({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          width: MediaQuery.of(context).size.width,
          regisAppBar,
        ),
        Positioned(
          top: 35,
          right: 80,
          child: Column(
            children: [
              SvgPicture.asset(
                drugSign,
                width: 52,
                height: 62,
              ),
              const SizedBox(height: 18),
              Text(
                title ?? '',
                style: Styles.textStyle28,
              )
            ],
          ),
        ),
      ],
    );
  }
}
