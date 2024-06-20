import 'package:flutter/material.dart';
import 'package:get/get.dart';

void navigateTo(Widget page) {
  Get.to(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}

void navigateDownUpTo(Widget page) {
  Get.to(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.downToUp,
  );
}

void drawerNavigation(Widget page) {
  Get.back();
  Get.to(
    () => page,
    transition: Transition.rightToLeft,
    duration: const Duration(milliseconds: 300),
  );
}

// navigateTo(Widget Function() page){
//   Get.to(
//       () => page,
//     duration: const Duration(milliseconds: 300),
//     transition: Transition.fade,
//   );
// }

navigateOffTo(Widget page) {
  Get.off(
    () => page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}

navigateOffAllTo(Widget page) {
  Get.offAll(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}
