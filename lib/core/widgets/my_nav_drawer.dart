import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/nav_drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets.dart';
import 'build_nav_drawer_item.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: darkBlueColor,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 60, right: 18, left: 18),
        child: Column(
          children: [
            Row(
              children: [
                buildCircleAvatar(),
                const SizedBox(width: 18),
                const Text(
                  'Dr. Rasha Wahdan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            ListView.separated(
              shrinkWrap: true,
              itemCount: drawerModel.length,
              itemBuilder: (context, index) {
                return BuildNavDrawerItem(
                  text: drawerModel[index].label,
                  icon: drawerModel[index].icon,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 40);
              },
            ),
            const Spacer(),
            const BuildNavDrawerItem(
              text: 'About Drogovat',
              icon: infoIconPng,
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar() {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 25,
      child: SvgPicture.asset(
        personIcon,
        width: 25,
        height: 25,
        fit: BoxFit.fill,
        colorFilter: const ColorFilter.mode(darkBlueColor, BlendMode.srcIn),
      ),
    );
  }
}
