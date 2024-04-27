import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class OutputContainer extends StatelessWidget {
  const OutputContainer({super.key, required this.width, required this.text});

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      width: width,
      height: 43,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: containerShadow(),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
