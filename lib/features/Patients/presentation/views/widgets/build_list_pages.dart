import 'package:flutter/material.dart';

import '../../../../../core/functions/navigate.dart';
import '../../manager/patients_cubit.dart';
import 'list_view_of_pages_item.dart';

class BuildListPages extends StatelessWidget {
  const BuildListPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Center(
        child: ListView.separated(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                PatientsCubit.get(context).changeBottomPageIndex(index);
                navigateTo(PatientsCubit.get(context).patientInfoPages[PatientsCubit.get(context).selectedBottomPageIndex]);
              },
              child: ListViewOfPagesItem(
                index: index,
                isSelected:
                PatientsCubit.get(context).selectedBottomPageIndex == index,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 40);
          },
        ),
      ),
    );
  }
}
