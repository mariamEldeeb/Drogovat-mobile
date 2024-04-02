import 'package:flutter/material.dart';

class DrugImageContainer extends StatelessWidget {
  const DrugImageContainer({
    super.key,
    required this.bgColor,
    required this.imagePath,
  });

  final Color bgColor;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePath),
          const Text(
            'Cetacaine',
            style: TextStyle(
              color: Color(0xff9C0000),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
