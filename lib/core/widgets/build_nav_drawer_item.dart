import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildNavDrawerItem extends StatelessWidget {
  const BuildNavDrawerItem({
    super.key,
    required this.text,
    required this.leading,
    this.onTap,
  });

  final String text;
  final Widget leading;
  final void Function()? onTap;

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
          style: Styles.textStyle20,
        ),
        leading: leading,
        onTap: onTap,
      ),
    );
  }
}
