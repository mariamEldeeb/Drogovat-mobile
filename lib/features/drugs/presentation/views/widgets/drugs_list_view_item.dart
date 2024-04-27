import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/core/widgets/drug_image_container.dart';
import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class DrugsListViewItem extends StatelessWidget {
  const DrugsListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 197,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: containerShadow(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrugImageContainer(
            index: index,
            width: 125,
            height: 125,
          ),
          buildDrugName(context),
        ],
      ),
    );
  }

  Text buildDrugName(context) {
    return Text(
      AppCubit.get(context).displayDrugList[index].name,
      style: Styles.textStyle20.copyWith(color: drugNameColor),
    );
  }
}
