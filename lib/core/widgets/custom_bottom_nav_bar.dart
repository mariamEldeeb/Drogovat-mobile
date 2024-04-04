import 'package:drogovat_mobile/core/app_cubit/model/bottom_nav_item_model.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bottomNavColor,
          boxShadow: [
            BoxShadow(
              color: bottomNavColor.withOpacity(0.8),
              offset: Offset(0, 20),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            bottomNavItems.length,
            (index) => Column(
              children: [
                Image.asset(
                  bottomNavItems[index].icon,
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
                // SizedBox(height: 5),
                Text(
                  bottomNavItems[index].title,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
