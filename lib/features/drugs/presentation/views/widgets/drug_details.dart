import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/widgets/drug_image_container.dart';
import '../../../../initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'drug_dose_info_container.dart';

class DrugDetails extends StatelessWidget {
  const DrugDetails({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: darkBlueColor,
        body: Column(
          children: [
            buildBackground(),
            buildContent(cubit),
          ],
        ),
      ),
    );
  }

  Widget buildBackground() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            fadeLogo,
            fit: BoxFit.contain,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget buildContent(cubit) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 25, top: 90),
            decoration: const BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    cubit.displayDrugList[index].drugName,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    cubit.displayDrugList[index].drugDesc,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value: '${cubit.displayDrugList[index].drugLoadingDose} ml',
                    label: 'Loading',
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value:
                        '${cubit.displayDrugList[index].drugMaintenanceDose} ml',
                    label: 'Maintenance',
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value:
                        '${cubit.displayDrugList[index].drugActiveDuration} ml',
                    label: 'Active duration',
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value: '${cubit.displayDrugList[index].drugFullAmount} ml',
                    label: 'Full amount',
                  ),
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
          ),
          DrugImageContainer(
            width: 120,
            height: 120,
            imagePath: cubit.displayDrugList[index].drugImage,
          ),
        ],
      ),
    );
  }
}
