import 'package:flutter/material.dart';

class NextDoseAmount extends StatelessWidget {
  const NextDoseAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffE5E0E0),
      ),
      child: const Center(
        child: Text(
          '25 ml',
          style: TextStyle(
            color: Color(0xff106414),
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
