import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({super.key, this.onTap, required this.text});

  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 170,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.green.shade600,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}