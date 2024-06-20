import 'package:drogovat_mobile/core/functions/show_custom_dialog.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/views/widgets/add_drug_container.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/views/widgets/add_patient_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  const CustomFloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return SizedBox(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            onPressed: () {
              AppCubit.get(context).selectedIndex == 0
                  ? showCustomDialog(
                      context: context,
                      child: const AddPatientContainer(),
                    )
                  : showCustomDialog(
                      context: context,
                      child: const AddDrugContainer(),
                    );
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const ShapeDecoration(
                    shape: const OvalBorder(),
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [
                        Color(0xFF35BECC),
                        Color(0xFF0F6CC0),
                      ],
                    ),
                  ),
                ),
                AppCubit.get(context).selectedIndex == 0
                    ? Image.asset(
                        width: 50,
                        height: 50,
                        addPatientIconPng,
                        fit: BoxFit.contain,
                      )
                    : Image.asset(
                        width: 50,
                        height: 50,
                        addDrugIconPng,
                        fit: BoxFit.contain,
                      ),
              ],
            ),
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Colors.transparent,
          ),
        );
      },
    );
  }
}
