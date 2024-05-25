import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/custom_tab_bar.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_dose_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_drug_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_init_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_personal_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_vital_sign_info.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class PatientProfileView extends StatelessWidget {
  const PatientProfileView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight + 70),
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Get.back();
                },
              ),
              title: Text(
                '${AppCubit.get(context).displayPatientList[index].patientName}',
                style: Styles.textStyle20.copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              backgroundColor: darkBlueColor,
              bottom: const TabBar(
                labelPadding: EdgeInsets.zero,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  CustomTabBar(
                    icon: IconlyBold.home,
                    text: 'Info',
                  ),
                  CustomTabBar(
                    icon: Icons.person,
                    text: 'Personal',
                  ),
                  CustomTabBar(
                    icon: Icons.monitor_heart_rounded,
                    text: 'Vitals',
                  ),
                  CustomTabBar(
                    icon: Icons.medication_rounded,
                    text: 'Doses',
                  ),
                  CustomTabBar(
                    icon: Icons.medical_services_rounded,
                    text: 'Drug',
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 20),
            child: TabBarView(
              children: [
                PatientInitInfo(index: index),
                PatientPersonalInfo(),
                PatientVitalSignInfo(),
                PatientDoseInfo(),
                PatientDrugInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
