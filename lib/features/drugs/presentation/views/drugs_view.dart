import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:drogovat_mobile/features/drugs/presentation/views/widgets/drugs_list_view_item.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrugsView extends StatelessWidget {
  const DrugsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Center(
          child: Container(
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: cubit.displayDrugList.length,
              itemBuilder: (context, index) {
                return DrugsListViewItem(
                  index: index,
                );
              },
              separatorBuilder: (context, index0) {
                return const SizedBox(height: 15);
              },
            ),
          ),
        );
      },
    );
  }
}
