import 'package:flutter/material.dart';

import '../app_cubit/model/bottom_nav_item_model.dart';
import '../utils/colors.dart';

Widget buildSelectedBottomNavItem({required int index}) {
  return Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
      color: darkBlueColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
