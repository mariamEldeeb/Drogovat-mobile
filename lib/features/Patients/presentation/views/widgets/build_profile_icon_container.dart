import 'package:flutter/material.dart';

class BuildProfileIconContainer extends StatelessWidget {
  const BuildProfileIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        // boxShadow: containerShadow(),
      ),
      child: const Icon(
        Icons.person,
        size: 50,
        color: Colors.grey,
      ),
    );
  }
}
