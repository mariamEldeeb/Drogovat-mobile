import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/Patients/presentation/views/widgets/output_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/widgets/drug_image_container.dart';
import '../../../../initial_page/presentation/manager/app_cubit/app_cubit.dart';

class DrugDetails extends StatelessWidget {
  const DrugDetails({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: darkBlueColor,
        body: Stack(
          children: [
            buildContent(context, cubit),
            buildBackground(context),
          ],
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context, AppCubit cubit) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.17,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34),
            topRight: Radius.circular(34),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 55),
            Text(
              cubit.displayDrugList[index].drugName ?? '',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 11),
            const Text(
              'Set as first portion',
              style: TextStyle(
                color: Color(0xB2313131),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              cubit.displayDrugList[index].drugDesc ?? '',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            OutputContainer(
                value: '${cubit.displayDrugList[index].drugLoadingDose} ml',
                label: 'Loading'),
            const SizedBox(height: 30),
            OutputContainer(
                value: '${cubit.displayDrugList[index].drugMaintenanceDose} ml',
                label: 'Maintenance'),
            const SizedBox(height: 30),
            OutputContainer(
                value: '${cubit.displayDrugList[index].drugActiveDuration} m',
                label: 'Duration'),
            const SizedBox(height: 30),
            OutputContainer(
                value: '${cubit.displayDrugList[index].drugFullAmount} ml',
                label: 'Full amount'),
            const SizedBox(height: 30),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Warning ',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text:
                        '* These numbers are approximate depending on the patient\'s condition',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBackground(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: darkBlueColor,
            child: Image.asset(
              fadeLogoPng,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              IconlyLight.arrow_left,
              color: Colors.white,
              size: 40,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DrugImageContainer(
              index: index,
              width: 85,
              height: 85,
            ),
          ),
        ],
      ),
    );
  }
}
