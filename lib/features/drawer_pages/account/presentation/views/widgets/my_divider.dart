import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, required this.padding});

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        color: Colors.grey.shade400,
        height: 1,
        thickness: 1.5,
      ),
    );
  }
}
