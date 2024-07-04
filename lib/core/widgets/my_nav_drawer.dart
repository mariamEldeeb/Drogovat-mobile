import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/drawer_pages/about_app/presentation/views/about_app_view.dart';
import 'package:drogovat_mobile/features/drawer_pages/contact_us/presentation/views/contact_us_view.dart';
import 'package:drogovat_mobile/features/drawer_pages/settings/presentation/views/settings_view.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

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
          children: <Widget>[
            Row(
              children: [
                buildCircleAvatar(context),
                const SizedBox(width: 18),
                Text(
                  'Dr. ${AppCubit.get(context).uModel?.name}',
                  style: Styles.textStyle22.copyWith(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 70),
            BuildNavDrawerItem(
              text: 'Settings',
              leading: const Icon(
                IconlyLight.setting,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                drawerNavigation(SettingsView());
              },
            ),
            const SizedBox(height: 40),
            BuildNavDrawerItem(
              text: 'My account',
              leading: const Icon(
                IconlyLight.profile,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                drawerNavigation(const AccountView());
              },
            ),
            const SizedBox(height: 40),
            BuildNavDrawerItem(
              text: 'Contact Us',
              leading: Image.asset(
                contactsUsIconPng,
                color: Colors.white,
                height: 35,
                width: 35,
              ),
              onTap: () {
                drawerNavigation(const ContactUsView());
              },
            ),
            const Spacer(),
            BuildNavDrawerItem(
              text: 'About DROGOVAT',
              leading: const Icon(
                IconlyLight.info_circle,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                drawerNavigation(const AboutAppView());
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCircleAvatar(context) {
    return Container(
      width: 45,
      height: 45,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          '${AppCubit.get(context).uModel?.name?[0].toUpperCase()}',
          style: const TextStyle(
            fontSize: 35,
            color: darkBlueColor,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
