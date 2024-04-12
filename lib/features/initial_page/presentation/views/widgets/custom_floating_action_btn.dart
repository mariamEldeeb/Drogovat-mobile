import 'package:flutter/material.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  const CustomFloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78,
      height: 78,
      child: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 78,
          height: 78,
          decoration: const ShapeDecoration(
            shape: const OvalBorder(),
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xFF0E6ABF),
                Color(0xFF0E6ABF),
                Color(0xFF37C3CC),
              ],
            ),
          ),
          child: const Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 55,
          ),
        ),
        elevation: 0,
        highlightElevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}