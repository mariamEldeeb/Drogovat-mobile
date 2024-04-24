import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_dose_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_drug_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_init_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_personal_info.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/patient_vital_sign_info.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/my_nav_drawer.dart';

class PatientProfileView extends StatelessWidget {
  const PatientProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          drawer: const MyNavigationDrawer(),
          appBar: AppBar(
            title: const Text(
              'Mariam Mohamed Eldeeb',
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            backgroundColor: darkBlueColor,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  child: Text(
                    'Info',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.person),
                  child: Text(
                    'Personal',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.monitor_heart_rounded),
                  child: Text(
                    'Vitals',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.medication_rounded),
                  child: Text(
                    'Doses',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.medical_services),
                  child: Text(
                    'Drug',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.arrow_back_ios_rounded),
              )
            ],
          ),
          // PreferredSize(
          //   preferredSize: const Size.fromHeight(kToolbarHeight + 30),
          //   child: CustomDarkBlueAppBar(
          //     sKey: scaffoldKey,
          //     name: patients[index].name,
          //   ),
          // ),
          body: const Padding(
            padding: EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 20),
            child: TabBarView(
              children: [
                PatientInitInfo(),
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
