import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/initial_page/presentation/views/widgets/custom_search_container.dart';
import '../utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.sKey,
    required this.controller,
  });

  final GlobalKey<ScaffoldState> sKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  menuIcon,
                ),
                onPressed: () {
                  sKey.currentState?.openDrawer();
                },
              ),
              const SizedBox(width: 20),
              SearchContainer(
                hintText:
                    cubit.selectedIndex == 0 ? 'Patient name' : 'Drug Name',
                onChanged: (value) {
                  cubit.selectedIndex == 0
                      ? cubit.updatePatientList(value)
                      : cubit.updateDrugList(value);
                },
                onFieldSubmitted: (value) {
                  cubit.selectedIndex == 0
                      ? cubit.updatePatientList(value)
                      : cubit.updateDrugList(value);
                },
                controller: controller,
              ),
            ],
          ),
        );
      },
    );
  }
}
