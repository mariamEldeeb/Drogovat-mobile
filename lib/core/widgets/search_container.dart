// import 'package:flutter/material.dart';
//
// import '../utils/colors.dart';
//
// class SearchContainer extends StatelessWidget {
//   const SearchContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       width: 360,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         border: Border.all(
//           color: hintTextColor,
//           width: 1,
//         ),
//       ),
//       child: TextFormField(
//         style: const TextStyle(
//           color: darkBlueColor,
//           fontSize: 18,
//         ),
//         decoration: const InputDecoration(
//           hintText: 'Search...',
//           hintStyle: TextStyle(
//             color: hintTextColor,
//             fontSize: 18,
//           ),
//           border: InputBorder.none,
//           suffixIcon: Icon(
//             Icons.search,
//             color: Colors.black,
//             size: 30,
//           ),
//         ),
//         maxLines: 1,
//       ),
//     );
//   }
// }