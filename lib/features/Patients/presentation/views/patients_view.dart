import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/build_patient_list_view_item.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientsView extends StatelessWidget {
  const PatientsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 28),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: AppCubit.get(context).displayPatientList.length,
            itemBuilder: (context, index) {
              return PatientListViewItem(
                index: index,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12);
            },
          ),
        );
      },
    );
  }
}
