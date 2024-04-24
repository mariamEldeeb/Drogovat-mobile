import 'package:drogovat_mobile/core/widgets/custom_app_bar.dart';
import 'package:drogovat_mobile/core/widgets/my_nav_drawer.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/views/widgets/custom_floating_action_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../manager/app_cubit/app_cubit.dart';
import '../manager/app_cubit/app_status.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return SafeArea(
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            drawer: const MyNavigationDrawer(),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight + 20),
              child: CustomAppBar(sKey: scaffoldKey),
            ),
            body: cubit.pages[cubit.selectedIndex],
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: const CustomFloatingActionBtn(),
            bottomNavigationBar: const CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}
