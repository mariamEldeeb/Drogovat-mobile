import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_filled_btn.dart';
import '../../../../../core/widgets/custom_outline_btn.dart';

class AddPatientContainer extends StatelessWidget {
  const AddPatientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController addPatientController = TextEditingController();

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
              'Add Patient',
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 15),
          const Text(
            'Enter room number',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: darkBlueColor,
              controller: addPatientController,
              decoration: InputDecoration(
                hintText: 'Ex: 101',
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
              const CustomFilledButton(
                width: 115,
                height: 45,
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
