import 'package:drogovat_mobile/features/monitor/data/models/vital_model.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/vital_list_view_item.dart';
import 'package:flutter/material.dart';

class VitalSignContainer extends StatelessWidget {
  const VitalSignContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.95,
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        // boxShadow: containerShadow(),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: vitals.length,
        itemBuilder: (context, index) {
          return VitalListViewItem(index: index);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 17);
        },
      ),
    );
  }
}
