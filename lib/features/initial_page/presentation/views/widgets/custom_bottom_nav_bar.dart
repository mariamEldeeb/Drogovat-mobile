import 'package:drogovat_mobile/features/main_page/presentation/manager/app_cubit/app_status.dart';
import 'package:drogovat_mobile/features/main_page/presentation/views/widgets/build_custom_bottom_nav_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../manager/app_cubit/app_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key,});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return BottomAppBar(
          padding: EdgeInsets.only(left: 40, right: 40, top: 5),
          notchMargin: 9,
          shape: CircularNotchedRectangle(),
          color: darkBlueColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomNavIcon(
                onTap: () => cubit.changeIndex(0),
                icon: personIcon,
                iconTappedColor: Colors.white,
                label: 'Patients',
                isTapped: cubit.selectedIndex == 0,
              ),
              CustomBottomNavIcon(
                onTap: () => cubit.changeIndex(1),
                icon: drugIcon,
                iconTappedColor: Colors.white,
                label: 'Drugs',
                isTapped: cubit.selectedIndex == 1,
              ),
            ],
          ),
        );
      },
    );
  }
}