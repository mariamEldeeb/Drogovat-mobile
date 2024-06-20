import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

Widget backIcon() {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: const Icon(
      IconlyLight.arrow_left,
      color: darkBlueColor,
      size: 40,
    ),
  );
}
