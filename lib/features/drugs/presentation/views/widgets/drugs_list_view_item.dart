import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/drugs/presentation/views/widgets/drug_details.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/drug_image_container.dart';

class DrugsListViewItem extends StatelessWidget {
  const DrugsListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(DrugDetails(
          index: index,
        ));
      },
      child: Container(
        height: 97,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 12, left: 10, bottom: 7, right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            DrugImageContainer(
              imagePath:
                  '${AppCubit.get(context).displayDrugList[index].drugImage}',
              width: 85,
              height: 85,
            ),
            const SizedBox(width: 19),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${AppCubit.get(context).displayDrugList[index].drugName}',
                    style: Styles.textStyle20.copyWith(color: darkBlueColor),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tap for more details',
                    style: TextStyle(
                      color: Color(0xFF838383),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
