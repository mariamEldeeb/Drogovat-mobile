import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/core/widgets/nav_drawer_model.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
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
                buildCircleAvatar(context),
                const SizedBox(width: 18),
                Text(
                  'Dr. ${AppCubit.get(context).uModel?.name}',
                  style: Styles.textStyle22.copyWith(color: Colors.white),
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

  Widget buildCircleAvatar(context) {
    return Container(
      width: 65,
      height: 65,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: AppCubit.get(context).uModel?.image == null
          ? Center(
              child: Text(
                AppCubit.get(context).uModel!.name![0].toUpperCase(),
                style: const TextStyle(
                  fontSize: 40,
                  color: darkBlueColor,
                ),
              ),
            )
          : Image.network(
              AppCubit.get(context).uModel?.image ?? '',
            ),
    );
  }

  void onSelect(index) {
    switch (index) {
      case 0:
        print('Language');
        break;
      case 1:
        print('Patients');
        break;
      case 2:
        Get.back();
        Get.to(
          () => const AccountView(),
          transition: Transition.rightToLeft,
          duration: const Duration(milliseconds: 300),
        );
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
