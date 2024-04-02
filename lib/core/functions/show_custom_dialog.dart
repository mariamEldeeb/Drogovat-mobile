// import 'package:flutter/material.dart';
//
// import '../utils/colors.dart';
//
// Future<Object?> showCustomDialog({required BuildContext context, Widget? child, required Color barrierColor}) {
//   return showGeneralDialog(
//     barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
//     // barrierDismissible: true,
//     barrierColor: barrierColor,
//     context: context,
//     pageBuilder: (BuildContext context,
//         Animation<double> animation,
//         Animation<double> secondaryAnimation) {
//       return CustomDialog(child: child,);
//     },
//     transitionDuration: const Duration(milliseconds: 300),
//     transitionBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
//       return SlideTransition(
//         position: Tween<Offset>(
//           begin: const Offset(1, 0),
//           end: Offset.zero,
//         ).animate(animation),
//         child: child,
//       );
//     },
//   );
// }