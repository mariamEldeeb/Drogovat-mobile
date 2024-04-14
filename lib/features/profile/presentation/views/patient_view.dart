import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/core/widgets/custom_dark_blue_app_bar.dart';
import 'package:drogovat_mobile/features/profile/data/models/patient_model.dart';
import 'package:drogovat_mobile/features/profile/presentation/manager/profile_cubit.dart';
import 'package:drogovat_mobile/features/profile/presentation/manager/profile_state.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/widgets/patient_init_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/my_nav_drawer.dart';

class PatientView extends StatelessWidget {
  const PatientView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = ProfileCubit.get(context);

    return SafeArea(
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            drawer: const MyNavigationDrawer(),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight + 30),
              child: CustomDarkBlueAppBar(
                sKey: scaffoldKey,
                name: patients[index].name,
              ),
            ),
            body: PatientInitInfo(index: index,),
          );
        },
      ),
    );
  }
}
