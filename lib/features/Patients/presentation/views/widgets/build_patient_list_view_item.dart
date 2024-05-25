import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../patient_profile_view.dart';
import 'build_leading_container.dart';
import 'build_name_column.dart';

class PatientListViewItem extends StatelessWidget {
  PatientListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            navigateTo(PatientProfileView(index: index));
          },
          child: Container(
            width: double.infinity,
            height: 96,
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 13, right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const BuildLeadingContainer(),
                const SizedBox(width: 13),
                BuildNameColumn(index: index),
              ],
            ),
          ),
        );
      },
    );
  }
}
