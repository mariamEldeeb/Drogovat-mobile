import 'package:flutter/material.dart';

class BuildNavDrawerItem extends StatelessWidget {
  const BuildNavDrawerItem({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      child: ListTile(
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: Image.asset(
          icon,
          color: Colors.white,
        ),
        onTap: () {},
      ),
    );
  }
}