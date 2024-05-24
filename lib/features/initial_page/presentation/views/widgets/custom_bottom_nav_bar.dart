import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../manager/app_cubit/app_cubit.dart';
import '../../manager/app_cubit/app_status.dart';
import 'build_custom_bottom_nav_icon.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return BottomAppBar(
          height: MediaQuery.of(context).size.height / 12,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          notchMargin: 12,
          shape: const CircularNotchedRectangle(),
          color: darkBlueColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomNavIcon(
                onTap: () => cubit.changeIndex(0),
                icon: personIconPng,
                isTapped: cubit.selectedIndex == 0,
              ),
              CustomBottomNavIcon(
                onTap: () => cubit.changeIndex(1),
                icon: drugIconPng,
                isTapped: cubit.selectedIndex == 1,
              ),
            ],
          ),
        );
      },
    );
  }
}
