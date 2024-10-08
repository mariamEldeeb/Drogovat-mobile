import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LargeButton extends StatelessWidget {
  const LargeButton(
      {super.key, this.onTap, required this.text, required this.isIcon});

  final Function()? onTap;
  final String text;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            begin: Alignment(-0.3, 1.00),
            end: Alignment(1, 0),
            colors: [Color(0xFF37C3CC), Color(0xFF0E6ABF), Color(0xFF0E6ABF)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: Styles.textStyle22.copyWith(color: Colors.black),
            ),
            isIcon
                ? const Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.white,
                    size: 28,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
