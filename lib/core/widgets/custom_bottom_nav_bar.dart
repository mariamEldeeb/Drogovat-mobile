import 'package:drogovat_mobile/core/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/core/app_cubit/app_status.dart';
import 'package:drogovat_mobile/core/app_cubit/model/bottom_nav_item_model.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/selected_bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_bottom_nav_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    int selected = 1;
    var cubit = AppCubit.get(context);

    return SafeArea(
      child: Container(
        height: 70,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bottomNavColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(0, 15),
              blurRadius: 20,
            ),
          ],
        ),
        child: BlocBuilder<AppCubit, AppStates>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                bottomNavItems.length,
                (index) => index == cubit.selectedIndex
                    ? buildSelectedBottomNavItem(index: index)
                    : buildBottomNavItem(
                        index,
                        () {
                          cubit.changeIndex(index);
                        },
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
