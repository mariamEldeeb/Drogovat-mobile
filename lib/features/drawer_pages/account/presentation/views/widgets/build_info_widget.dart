import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/my_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BuildInfoWidget extends StatelessWidget {
  const BuildInfoWidget(
      {super.key, required this.icon, required this.title, required this.text});

  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: darkBlueColor,
                size: 26,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Styles.textStyle20.copyWith(
                        color: darkBlueColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      text,
                      style: Styles.textStyle18DarkBlue,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const MyDivider(
              padding: const EdgeInsets.only(top: 27, bottom: 17),
          ),
        ],
      ),
    );
  }
}
