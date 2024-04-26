import 'package:drogovat_mobile/features/drugs/data/models/drug_model.dart';
import 'package:drogovat_mobile/features/drugs/presentation/views/widgets/drugs_list_view_item.dart';
import 'package:flutter/material.dart';

class DrugsView extends StatelessWidget {
  const DrugsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(top: 50),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: drugs.length,
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
  }
}
