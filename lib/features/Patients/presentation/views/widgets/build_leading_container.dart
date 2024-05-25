import 'package:flutter/material.dart';

class BuildLeadingContainer extends StatelessWidget {
  const BuildLeadingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 76,
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.person,
        color: Color(0xffBBB9B9),
        size: 45,
      ),
    );
  }
}
