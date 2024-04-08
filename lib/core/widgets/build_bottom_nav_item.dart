import 'package:flutter/material.dart';

import '../app_cubit/model/bottom_nav_item_model.dart';

Widget buildBottomNavItem(int index, Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Image.asset(
            bottomNavItems[index].icon,
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
          Text(
            bottomNavItems[index].title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}