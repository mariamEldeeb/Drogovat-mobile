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
            navigateTo(const PatientProfileView());
          },
          child: Container(
            width: 304,
            height: 88,
            padding:
                const EdgeInsets.only(top: 6, bottom: 6, left: 13, right: 10),
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
