import 'package:drogovat_mobile/features/profile/data/models/patient_model.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/widgets/build_patient_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilesView extends StatelessWidget {
  const ProfilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: patients.length,
        itemBuilder: (context, index){
          return PatientListViewItem(index: index,);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12);
        },
      ),
    );
  }
}