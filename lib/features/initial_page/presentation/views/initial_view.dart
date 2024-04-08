import 'package:drogovat_mobile/features/main_page/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:drogovat_mobile/features/main_page/presentation/views/widgets/custom_floating_action_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/app_cubit/app_cubit.dart';
import '../manager/app_cubit/app_status.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return SafeArea(
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: cubit.pages[cubit.selectedIndex],
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: CustomFloatingActionBtn(),
            bottomNavigationBar: CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}