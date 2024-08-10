import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class PassResetDialog extends StatelessWidget {
  const PassResetDialog({super.key, required this.dialogText});

  final String dialogText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        dialogText,
        style: Styles.textStyle20.copyWith(color: darkBlueColor),
      ),
    );
  }
}
