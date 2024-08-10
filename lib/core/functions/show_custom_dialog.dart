import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_dialog.dart';

Future<Object?> showCustomDialog({
  required BuildContext context,
  Widget? child,
  bool barrierDismissible = false,
}) {
  return showGeneralDialog(
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierDismissible: barrierDismissible,
    barrierColor: dialogBarrierColor,
    context: context,
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return CustomDialog(
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
