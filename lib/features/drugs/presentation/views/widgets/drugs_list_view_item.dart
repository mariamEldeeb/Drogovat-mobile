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
              index: index,
              width: 67,
              height: 67,
            ),
            const SizedBox(width: 19),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppCubit.get(context).displayDrugList[index].drugName ??
                            '',
                        style:
                            Styles.textStyle20.copyWith(color: darkBlueColor),
                      ),
                      Container(
                        height: 24,
                        width: 72,
                        decoration: BoxDecoration(
                            color: const Color(0xff2145CF),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text(
                            'available',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'set as first potion',
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
