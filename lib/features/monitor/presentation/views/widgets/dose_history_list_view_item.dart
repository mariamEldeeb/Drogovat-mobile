import 'package:flutter/material.dart';

class DoseHistoryListViewItem extends StatelessWidget {
  const DoseHistoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '1:15',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          '10 ml',
          style: TextStyle(
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
