import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/core/widgets/nav_drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../features/drawer_pages/account/presentation/views/account_view.dart';
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
            const EdgeInsets.only(top: 25, bottom: 60, right: 18, left: 18),
        child: Column(
          children: [
            Row(
              children: [
                buildCircleAvatar(),
                const SizedBox(width: 18),
                const Text(
                  'Dr. Rasha Wahdan',
                  style: Styles.textStyle20,
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
                  onTap: () => onSelect(index),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 40);
              },
            ),
            const Spacer(),
            BuildNavDrawerItem(
              text: 'About Drogovat',
              icon: infoIconPng,
              onTap: () => onSelect(4),
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

  void onSelect(index){
    switch(index){
      case 0:
        print('Language');
        break;
      case 1:
        print('Patients');
        break;
      case 2:
        navigateTo(const AccountView());
        break;
      case 3:
        print('contact us');
        break;
      case 4:
        print('About us');
        break;
    }
  }
}
