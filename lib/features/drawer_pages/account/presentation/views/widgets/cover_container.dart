import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CoverContainer extends StatelessWidget {
  const CoverContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Image.asset(
        profileCover,
        fit: BoxFit.cover,
      ),
    );
  }
}
