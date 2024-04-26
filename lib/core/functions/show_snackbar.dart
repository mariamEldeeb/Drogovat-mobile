import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

SnackbarController showSnackBar({title, text}) {
  return Get.snackbar(
    title,
    text,
    duration: const Duration(seconds: 3),
    snackPosition: SnackPosition.BOTTOM,
    borderRadius: 30,
    backgroundColor: darkBlueColor.withOpacity(0.5),
    margin: const EdgeInsets.only(bottom: 40),
    icon: const Icon(
      Icons.info_outline,
      size: 30,
      color: Colors.white,
    ),
    titleText: Text(
      title,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        height: 1,
      ),
      textAlign: TextAlign.center,
    ),
    messageText: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        height: 1,
        color: Colors.white,
      ),
    ),
    maxWidth: 300,
    dismissDirection: DismissDirection.horizontal,
  );
}
