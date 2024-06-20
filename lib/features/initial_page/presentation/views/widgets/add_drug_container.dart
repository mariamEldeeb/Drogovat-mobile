import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/custom_filled_btn.dart';
import 'package:drogovat_mobile/core/widgets/custom_outline_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/styles.dart';

class AddDrugContainer extends StatefulWidget {
  const AddDrugContainer({super.key});

  @override
  State<AddDrugContainer> createState() => _AddDrugContainerState();
}

class _AddDrugContainerState extends State<AddDrugContainer> {
  TextEditingController addDrugController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
      width: 312,
      height: 400,
      decoration: BoxDecoration(
        color: const Color(0xFFE3E3E3),
        borderRadius: BorderRadius.circular(12),
        border: const Border(top: BorderSide(color: darkBlueColor, width: 3.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Add Drug',
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 15),
          const Text(
            'Enter drug name',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              cursorColor: darkBlueColor,
              controller: addDrugController,
              decoration: InputDecoration(
                hintText: 'Ex: Propofol',
                border: InputBorder.none,
                hintStyle: Styles.textStyle16,
                contentPadding: const EdgeInsets.only(left: 10),
              ),
              maxLines: 1,
              style: Styles.textStyle20.copyWith(color: darkBlueColor),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlineButton(
                text: 'Cancel',
                isIcon: false,
                width: 91,
                onTap: () {
                  Get.back();
                },
              ),
              CustomFilledButton(
                text: 'Add',
                textColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
