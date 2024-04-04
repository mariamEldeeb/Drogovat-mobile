import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dose_history_list_view_item.dart';

class BuildDoseHistory extends StatelessWidget {
  const BuildDoseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Previous\nDose:',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const DoseHistoryListViewItem();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
