// import 'package:flutter/material.dart';
//
// import '../utils/colors.dart';
//
// class CustomOutlineButton extends StatelessWidget {
//   const CustomOutlineButton({super.key, required this.text, this.onTap});
//
//   final String text;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: 115,
//         height: 45,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: Border.all(
//               color: outlineButtonTextColor,
//             )
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: const TextStyle(
//               color: outlineButtonTextColor,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
