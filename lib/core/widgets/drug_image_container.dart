import 'package:flutter/material.dart';

class DrugImageContainer extends StatelessWidget {
  const DrugImageContainer({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  final String imagePath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width + 30,
      height: height + 30,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF2F1F1),
              // shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            imagePath,
            width: width + 20,
            height: height + 20,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
