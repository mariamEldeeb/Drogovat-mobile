import 'package:drogovat_mobile/features/monitor/data/models/vital_model.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/widgets/vital_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VitalSignContainer extends StatelessWidget {
  const VitalSignContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 450,
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: vitals.length,
        itemBuilder: (context, index) {
          return VitalListViewItem(index: index);
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 17);
        },
      ),
    );
  }
}
