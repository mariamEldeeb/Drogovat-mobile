import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class OutputContainer extends StatelessWidget {
  const OutputContainer({super.key, required this.width, required this.text});

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 43,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: containerShadow(),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
